uint64_t sub_1000BA0F4()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A19A0);
  sub_10000403C(v0, qword_1003A19A0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.monitor.getter();
}

uint64_t sub_1000BA160()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A19A0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000028, 0x800000010034B6C0, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v1[2];
  __chkstk_darwin(v14);
  return OS_dispatch_queue.sync<A>(execute:)();
}

void sub_1000BA3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TLV();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v40 - v14;
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  sub_1000BC438(a2, a3, a4);
  if (!v4)
  {
    v44 = v12;
    v45 = v15;
    v46 = v8;
    v18 = v47;
    if (TLV.derSize.getter() <= 75000)
    {
      sub_1000BBD6C();
      v25 = v46;
      sub_1000C0454();
      v43 = 0;
      if (qword_10039D4F8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000403C(v26, qword_1003A19A0);
      v27 = *(v18 + 16);
      v28 = v45;
      v27(v45, v17, v25);
      v29 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      v30 = os_log_type_enabled(v29, v42);
      v31 = v44;
      if (v30)
      {
        v32 = swift_slowAlloc();
        v40 = v32;
        v41 = swift_slowAlloc();
        v48 = v41;
        *v32 = 136315138;
        v27(v31, v28, v25);
        v33 = String.init<A>(describing:)();
        v35 = v34;
        v36 = *(v47 + 8);
        v36(v28, v25);
        v37 = sub_100008F6C(v33, v35, &v48);

        v38 = v40;
        *(v40 + 1) = v37;
        _os_log_impl(&_mh_execute_header, v29, v42, ".appendEvent(%s", v38, 0xCu);
        sub_10000959C(v41);

        v36(v17, v25);
      }

      else
      {

        v39 = *(v18 + 8);
        v39(v28, v25);
        v39(v17, v25);
      }
    }

    else
    {
      v48 = 0;
      v49 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v48 = 0xD000000000000016;
      v49 = 0x800000010034B6F0;
      v50 = TLV.derSize.getter();
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v20._object = 0x800000010034B710;
      v20._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v20);
      v50 = 75000;
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22 = v48;
      v23 = v49;
      sub_1000BC910();
      swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v23;
      *(v24 + 16) = 1;
      swift_willThrow();
      (*(v18 + 8))(v17, v46);
    }
  }
}

uint64_t sub_1000BA894()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A19A0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x6374614264616572, 0xEB00000000292868, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v1[2];
  sub_100004074(&qword_1003A1640, &qword_1002C5980);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_1000BAAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TLVTag();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for TLV();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000BBD6C();
  if (!v2)
  {
    v13 = sub_1000C0704(*(a1 + 24));
    v15 = v13;
    v16 = v14;
    v17 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v17 != 2 || *(v13 + 16) == *(v13 + 24))
      {
        goto LABEL_13;
      }
    }

    else if (v17)
    {
      if (v13 == v13 >> 32)
      {
LABEL_13:

        sub_100009548(v15, v16);
        v18 = type metadata accessor for MPOCMonitorBatch();
        return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
      }
    }

    else if ((v14 & 0xFF000000000000) == 0)
    {
      goto LABEL_13;
    }

    v22[1] = 0;
    static TLVTag.asn1Sequence.getter();
    sub_1000094F4(v15, v16);
    TLV.init(tag:value:)();

    if (v17 == 2)
    {
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      sub_100009548(v15, v16);
      v16 = v19 - v20;
      if (!__OFSUB__(v19, v20))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (v17 == 1)
    {
      result = sub_100009548(v15, v16);
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        __break(1u);
        return result;
      }

      v16 = HIDWORD(v15) - v15;
      goto LABEL_18;
    }

    sub_100009548(v15, v16);
    v16 = BYTE6(v16);
LABEL_18:
    (*(v8 + 32))(a2, v11, v7);
    v21 = type metadata accessor for MPOCMonitorBatch();
    *(a2 + *(v21 + 20)) = v16;
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  return result;
}

uint64_t sub_1000BAD90()
{
  v2 = v0;
  v3 = *v0;
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A19A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = showFunction(signature:_:)(0xD000000000000017, 0x800000010034B6A0, _swiftEmptyArrayStorage);
    v13 = sub_100008F6C(v11, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = v2[2];
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v1)
  {
    return v16;
  }

  return result;
}

uint64_t sub_1000BAFA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1000BBD6C();
  if (!v2)
  {
    sub_1000C0CBC(*(a1 + 24));
    v7 = v6;

    *a2 = v7;
  }

  return result;
}

uint64_t sub_1000BB000()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A19A0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x614265766F6D6572, 0xEF293A5F28686374, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v1[2];
  __chkstk_darwin(v14);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_1000BB234(uint64_t a1, uint64_t a2)
{
  result = sub_1000BBD6C();
  if (!v2)
  {
    v5 = result;
    v6 = sub_1000BC050();
    v7 = type metadata accessor for MPOCMonitorBatch();
    sub_1000C0E3C(*(a2 + *(v7 + 20)), v6);
    sub_1000BD75C(v5, v6);
  }

  return result;
}

uint64_t sub_1000BB2F0()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A19A0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x6C4165766F6D6572, 0xEB0000000029286CLL, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v1[2];
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_1000BB4F8()
{
  result = sub_1000BBD6C();
  if (!v0)
  {
    sub_1000C1180();
  }

  return result;
}

uint64_t sub_1000BB538()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A19A0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000018, 0x800000010034B660, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v16);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v1[2];
  __chkstk_darwin(v14);
  return OS_dispatch_queue.sync<A>(execute:)();
}

id sub_1000BB760(uint64_t a1)
{
  v3 = type metadata accessor for TLVTag();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TLV();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v64 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v14 = &v52 - v13;
  v15 = *(a1 + 24);
  v16 = __OFSUB__(v15, 80);
  v17 = v15 - 80;
  if (v16)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  v18 = (v17 * 3) >> 64;
  v19 = 3 * v17;
  if (v18 != v19 >> 63)
  {
    goto LABEL_32;
  }

  if (v19 >= 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 3;
  }

  result = sub_1000BBD6C();
  if (!v1)
  {
    v21 = result;
    v58 = sub_1000BC050();
    v22 = v20 >> 2;
    v57 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_timeBase;
    v63 = v21;
    v23 = sub_1000C0704(v22);
    v25 = v24;
    v52 = v22;
    v62 = v14;
    v55 = (v8 + 8);
    p_type = &stru_100399FF0.type;
    v54 = xmmword_1002C1670;
    v56 = v7;
    v53 = v6;
    while (1)
    {
      v27 = v25 >> 62;
      if ((v25 >> 62) > 1)
      {
        if (v27 != 2)
        {
          goto LABEL_29;
        }

        v28 = *(v23 + 16);
        v29 = *(v23 + 24);
      }

      else
      {
        if (!v27)
        {
          if ((v25 & 0xFF000000000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_17;
        }

        v28 = v23;
        v29 = v23 >> 32;
      }

      if (v28 == v29)
      {
LABEL_29:
        sub_100009548(v23, v25);
        sub_1000BD75C(v63, v58);
      }

LABEL_17:
      v61 = 0;
      static TLVTag.asn1Sequence.getter();
      sub_1000094F4(v23, v25);
      TLV.init(tag:value:)();
      v30 = TLV.dataRepresentation.getter();
      v32 = v31;
      v33 = Data.base64EncodedString(options:)(0);
      object = v33._object;
      countAndFlagsBits = v33._countAndFlagsBits;
      sub_100009548(v30, v32);
      if (qword_10039D708 != -1)
      {
        swift_once();
      }

      v34 = static GlobalState.shared;
      result = [*(static GlobalState.shared + 88) p_type[492]];
      while (*(v34 + 104) > 0 || *(v34 + 112) == 1)
      {
        result = [*(v34 + 88) wait];
      }

      v35 = *(v34 + 96);
      v16 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v16)
      {
        goto LABEL_33;
      }

      *(v34 + 96) = v36;
      [*(v34 + 88) unlock];
      v37 = *(v34 + 80);
      result = [*(v34 + 88) p_type[492]];
      v38 = *(v34 + 96);
      v16 = __OFSUB__(v38, 1);
      v39 = v38 - 1;
      if (v16)
      {
        goto LABEL_34;
      }

      *(v34 + 96) = v39;
      if (!v39)
      {
        [*(v34 + 88) broadcast];
      }

      [*(v34 + 88) unlock];
      SPRAttestationVaultCollect(0);
      v41 = v40;
      sub_100004074(&unk_1003A3C10, &unk_1002C3760);
      inited = swift_initStackObject();
      *(inited + 16) = v54;
      *(inited + 32) = 0x65736142656D6974;
      *(inited + 40) = 0xE800000000000000;
      v65 = *(v63 + v57);
      *(inited + 48) = dispatch thunk of CustomStringConvertible.description.getter();
      *(inited + 56) = v43;
      *(inited + 64) = 0x73746E657665;
      v44 = object;
      v45 = countAndFlagsBits;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = v45;
      *(inited + 88) = v44;
      v46 = sub_100183EFC(inited);
      swift_setDeallocating();
      sub_100004074(&qword_10039FE90, &unk_1002C5970);
      swift_arrayDestroy();
      v47 = v64;
      v48 = v61;
      sub_1000BC438(4064001, v41, v46);
      if (v48)
      {
        (*v55)(v62, v56);
        sub_100009548(v23, v25);
      }

      sub_1000C0454();
      v49 = v56;
      sub_100009548(v23, v25);
      v50 = *v55;
      (*v55)(v47, v49);
      v50(v62, v49);
      v23 = sub_1000C0704(v52);
      v25 = v51;
      p_type = (&stru_100399FF0 + 16);
    }
  }

  return result;
}

uint64_t sub_1000BBD6C()
{
  v31 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v31);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v28 = v5;
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - v11;
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v29 = v0;
  v15 = sub_10000BE18((v0 + 32), *(v0 + 56));
  v16 = v6[2];
  v16(v12, *v15 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v5);
  v32[0] = 0x69726F74696E6F6DLL;
  v32[1] = 0xEF73676F6C2D676ELL;
  v17 = v31;
  (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v31);
  sub_10008AB88();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v4, v17);
  v18 = v6[1];
  v19 = v12;
  v20 = v28;
  v18(v19, v28);
  v21 = v30;
  v16(v30, v14, v20);
  sub_10000CCE4(v29 + 72, v32);
  v22 = type metadata accessor for MPOCMonitorStore();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1000BF7F4(v21, 1, v32);
  v18(v14, v20);
  return v25;
}

uint64_t sub_1000BC050()
{
  v34 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v34 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v34);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v32 - v16;
  __chkstk_darwin(v15);
  v19 = &v32 - v18;
  v20 = *(v0 + 56);
  v33 = v0;
  v21 = *sub_10000BE18((v0 + 32), v20);
  sub_1000DE90C(v8);
  v22 = 1;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000BD44(v8, &qword_1003A03D0, &unk_1002C3D50);
    sub_1000BCAB4();
    swift_allocError();
    *v23 = 0xD000000000000029;
    *(v23 + 8) = 0x800000010034B630;
    *(v23 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v19, v8, v9);
    v35[0] = 0x69726F74696E6F6DLL;
    v35[1] = 0xEF73676F6C2D676ELL;
    v24 = v34;
    (*(v1 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v34);
    sub_10008AB88();
    URL.appending<A>(component:directoryHint:)();
    (*(v1 + 8))(v4, v24);
    (*(v10 + 16))(v14, v17, v9);
    sub_10000CCE4(v33 + 72, v35);
    v25 = type metadata accessor for MPOCMonitorStore();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = v35[6];
    v29 = sub_1000BF7F4(v14, 0, v35);
    if (v28)
    {
      v22 = *(v10 + 8);
      (v22)(v17, v9);
      (v22)(v19, v9);
    }

    else
    {
      v22 = v29;
      v30 = *(v10 + 8);
      v30(v17, v9);
      v30(v19, v9);
    }
  }

  return v22;
}

void sub_1000BC438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TLVTag();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  __chkstk_darwin(v7);
  v9 = v3[12];
  v8 = v3[13];
  sub_10000BE18(v3 + 9, v9);
  v10 = (*(*(v8 + 8) + 24))(v9) * 1000000.0;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v10 <= 0)
  {
    _StringGuts.grow(_:)(34);

    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    sub_1000BC910();
    swift_allocError();
    *v15 = 0xD000000000000020;
    *(v15 + 8) = 0x800000010034B600;
    *(v15 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    swift_stdlib_random();
    sub_1000B9CA0(a3);
    static TLVTag.asn1Sequence.getter();
    sub_100004074(&qword_10039E2D8, &qword_1002C3720);
    v11 = *(type metadata accessor for TLV() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_1002C1680;
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:uint32:)();
    static TLVTag.asn1Integer.getter();
    sub_1000BC964();
    sub_1000BC9B8();
    TLV.init<A>(tag:integer:)();
    static TLVTag.asn1Integer.getter();
    sub_1000BCA0C();
    sub_1000BCA60();
    TLV.init<A>(tag:integer:)();
    static TLVTag.asn1OctetString.getter();
    TLV.init(tag:uint64:)();
    static TLVTag.asn1Set.getter();
    TLV.init(tag:children:)();
    TLV.init(tag:children:)();
  }
}

uint64_t sub_1000BC7C4()
{
  sub_10000959C((v0 + 32));
  sub_10000959C((v0 + 72));
  sub_10000959C((v0 + 112));

  return swift_deallocClassInstance();
}

unint64_t sub_1000BC910()
{
  result = qword_1003A1AE8;
  if (!qword_1003A1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1AE8);
  }

  return result;
}

unint64_t sub_1000BC964()
{
  result = qword_1003A1AF0;
  if (!qword_1003A1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1AF0);
  }

  return result;
}

unint64_t sub_1000BC9B8()
{
  result = qword_1003A1AF8;
  if (!qword_1003A1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1AF8);
  }

  return result;
}

unint64_t sub_1000BCA0C()
{
  result = qword_1003A1B00;
  if (!qword_1003A1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1B00);
  }

  return result;
}

unint64_t sub_1000BCA60()
{
  result = qword_1003A1B08;
  if (!qword_1003A1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1B08);
  }

  return result;
}

unint64_t sub_1000BCAB4()
{
  result = qword_1003A1B10;
  if (!qword_1003A1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1B10);
  }

  return result;
}

void *sub_1000BCB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = a2;
  v42 = a5;
  v41[1] = *a5;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v58 = type metadata accessor for Environment();
  v59 = sub_1000BDD70(&qword_1003A1B28, type metadata accessor for Environment);
  *&v57 = a1;
  v55 = type metadata accessor for DefaultSecureTimeKeeper();
  v56 = &off_100384E70;
  *&v54 = a3;
  v52 = type metadata accessor for MPOCDefaultAttestationData();
  v53 = &off_100380B10;
  *&v51 = a4;
  sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  (*(v11 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v10);
  v49[0] = _swiftEmptyArrayStorage;
  sub_1000BDD70(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  sub_1000BDDB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v42;
  v17[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17[19] = 75000;
  if (qword_10039D4F8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000403C(v18, qword_1003A19A0);
  sub_10000CCE4(&v57, v49);
  sub_10000CCE4(&v54, v47);
  sub_10000CCE4(&v51, v45);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = _typeName(_:qualified:)();
    v24 = sub_100008F6C(v22, v23, &v44);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1002C1690;
    v26 = v50;
    v27 = sub_10000BE18(v49, v50);
    *(v25 + 56) = v26;
    v28 = sub_10000BE5C((v25 + 32));
    (*(*(v26 - 8) + 16))(v28, v27, v26);
    *(v25 + 88) = &type metadata for Int;
    v29 = v43;
    *(v25 + 64) = v43;
    v30 = v48;
    v31 = sub_10000BE18(v47, v48);
    *(v25 + 120) = v30;
    v32 = sub_10000BE5C((v25 + 96));
    (*(*(v30 - 8) + 16))(v32, v31, v30);
    v33 = v46;
    v34 = sub_10000BE18(v45, v46);
    *(v25 + 152) = v33;
    v35 = sub_10000BE5C((v25 + 128));
    (*(*(v33 - 8) + 16))(v35, v34, v33);
    v36 = showFunction(signature:_:)(0xD000000000000040, 0x800000010034B760, v25);
    v38 = v37;

    sub_10000959C(v49);
    sub_10000959C(v47);
    sub_10000959C(v45);
    v39 = sub_100008F6C(v36, v38, &v44);

    *(v21 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s.%s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000959C(v49);
    sub_10000959C(v47);
    sub_10000959C(v45);
    v29 = v43;
  }

  sub_100029790(&v57, (v17 + 4));
  v17[3] = v29;
  sub_100029790(&v54, (v17 + 9));
  sub_100029790(&v51, (v17 + 14));
  return v17;
}

void *sub_1000BD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Environment();
  v36[3] = v8;
  v36[4] = sub_1000BDD70(&qword_1003A1B28, type metadata accessor for Environment);
  v36[0] = a1;
  v34 = type metadata accessor for DefaultSecureTimeKeeper();
  v35 = &off_100384E70;
  v33[0] = a3;
  v31 = type metadata accessor for MPOCDefaultAttestationData();
  v32 = &off_100380B10;
  v30[0] = a4;
  type metadata accessor for MPOCDefaultMonitorLogger();
  v9 = swift_allocObject();
  v10 = sub_100022438(v36, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = v34;
  v16 = sub_100022438(v33, v34);
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v30[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = v31;
  v22 = sub_100022438(v30, v31);
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v30[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_1000BCB24(*v13, a2, *v19, *v25, v9);
  sub_10000959C(v30);
  sub_10000959C(v33);
  sub_10000959C(v36);
  return v27;
}

void *sub_1000BD460(uint64_t a1)
{
  sub_1000E3850(v30);
  if (v1)
  {
  }

  else
  {
    v4 = a1 + OBJC_IVAR____TtC14softposreaderd5Depot_settings;
    v5 = *(v4 + *(type metadata accessor for Settings() + 36));
    sub_1000E4518(v28);
    sub_1000E51E0(v26);
    v7 = v31;
    v8 = sub_100022438(v30, v31);
    v32 = &v25;
    v9 = *(*(v7 - 8) + 64);
    __chkstk_darwin(v8);
    v11 = (&v26[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = v29;
    v14 = sub_100022438(v28, v29);
    v15 = *(*(v13 - 8) + 64);
    __chkstk_darwin(v14);
    v17 = (&v26[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = v27;
    v20 = sub_100022438(v26, v27);
    v21 = *(*(v19 - 8) + 64);
    __chkstk_darwin(v20);
    v23 = (&v26[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    v2 = sub_1000BD190(*v11, v5, *v17, *v23);

    sub_10000959C(v26);
    sub_10000959C(v28);
    sub_10000959C(v30);
  }

  return v2;
}

void sub_1000BD75C(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v4 = type metadata accessor for URL();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004074(&qword_1003A1B18, &unk_1002C6500);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v36 - v18;
  __chkstk_darwin(v17);
  v21 = &v36 - v20;
  sub_1000C13B4();
  if (!v2)
  {
    v39 = v8;
    v40 = v19;
    v41 = v11;
    v42 = a1;
    v37 = v7;
    v38 = v16;
    sub_1000C13B4();
    v22 = [objc_opt_self() defaultManager];
    v23 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileUrl;
    v24 = v42;
    v25 = v21;
    NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();

    v44 = 0;
    v26 = v43;
    v27 = v40;
    v28 = v4;
    (*(v43 + 16))(v40, v24 + v23, v4);
    (*(v26 + 56))(v27, 0, 1, v4);
    v29 = *(v39 + 48);
    v30 = v41;
    sub_1000BDC6C(v25, v41);
    sub_1000BDC6C(v27, v30 + v29);
    v31 = *(v26 + 48);
    if (v31(v30, 1, v28) == 1)
    {
      sub_10000BD44(v27, &qword_1003A03D0, &unk_1002C3D50);
      if (v31(v30 + v29, 1, v28) == 1)
      {
        sub_10000BD44(v30, &qword_1003A03D0, &unk_1002C3D50);
LABEL_12:
        sub_10000BD44(v25, &qword_1003A03D0, &unk_1002C3D50);
        return;
      }
    }

    else
    {
      v32 = v38;
      sub_1000BDC6C(v30, v38);
      if (v31(v30 + v29, 1, v28) != 1)
      {
        v34 = v37;
        (*(v26 + 32))(v37, v30 + v29, v28);
        sub_1000BDD70(&qword_1003A1B20, &type metadata accessor for URL);
        LODWORD(v42) = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *(v26 + 8);
        v35(v34, v28);
        sub_10000BD44(v27, &qword_1003A03D0, &unk_1002C3D50);
        v35(v32, v28);
        sub_10000BD44(v30, &qword_1003A03D0, &unk_1002C3D50);
        if (v42)
        {
          goto LABEL_12;
        }

LABEL_10:
        sub_1000BCAB4();
        swift_allocError();
        *v33 = 0xD000000000000018;
        *(v33 + 8) = 0x800000010034B680;
        *(v33 + 16) = 1;
        swift_willThrow();
        sub_10000BD44(v25, &qword_1003A03D0, &unk_1002C3D50);
        return;
      }

      sub_10000BD44(v27, &qword_1003A03D0, &unk_1002C3D50);
      (*(v26 + 8))(v32, v28);
    }

    sub_10000BD44(v30, &qword_1003A1B18, &unk_1002C6500);
    goto LABEL_10;
  }
}

uint64_t sub_1000BDC6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BDD70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000BDDB8()
{
  result = qword_10039E320;
  if (!qword_10039E320)
  {
    sub_1000040BC(&qword_10039D7E0, &unk_1002BDC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E320);
  }

  return result;
}

uint64_t sub_1000BDE1C(uint64_t a1)
{
  v3 = type metadata accessor for TLVTag();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v53 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v41 - v7;
  v51 = type metadata accessor for TLV();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v51);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v41 = v1;
  v60 = _swiftEmptyArrayStorage;
  v50 = v11;
  sub_10004E380(0, v12, 0);
  v13 = v60;
  v14 = a1 + 64;
  v15 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v17 = result;
  v18 = 0;
  v19 = *(a1 + 36);
  v48 = (v8 + 32);
  v42 = a1 + 72;
  v47 = xmmword_1002C1670;
  v43 = v12;
  v44 = v8;
  v49 = a1 + 64;
  v45 = v19;
  v46 = a1;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    if ((*(v14 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_22;
    }

    if (v19 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v55 = 1 << v17;
    v56 = v17 >> 6;
    v54 = v18;
    v22 = (*(a1 + 48) + 16 * v17);
    v23 = *v22;
    v24 = v22[1];
    v25 = (*(a1 + 56) + 16 * v17);
    v26 = *v25;
    v27 = v25[1];
    v57 = v23;
    v58 = v26;

    static TLVTag.asn1Sequence.getter();
    sub_100004074(&qword_10039E2D8, &qword_1002C3720);
    v28 = *(v8 + 72);
    v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v30 = swift_allocObject();
    v59 = v13;
    *(v30 + 16) = v47;
    static TLVTag.asn1IA5String.getter();

    TLV.init(tag:string:)();
    static TLVTag.asn1IA5String.getter();

    v31 = v50;
    TLV.init(tag:string:)();
    v13 = v59;
    TLV.init(tag:children:)();

    v60 = v13;
    v33 = v13[2];
    v32 = v13[3];
    if (v33 >= v32 >> 1)
    {
      sub_10004E380(v32 > 1, v33 + 1, 1);
      v31 = v50;
      v13 = v60;
    }

    v13[2] = v33 + 1;
    result = (*v48)(v13 + v29 + v33 * v28, v31, v51);
    a1 = v46;
    v20 = 1 << *(v46 + 32);
    v14 = v49;
    if (v17 >= v20)
    {
      goto LABEL_24;
    }

    v34 = *(v49 + 8 * v56);
    if ((v34 & v55) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v19) = v45;
    if (v45 != *(v46 + 36))
    {
      goto LABEL_26;
    }

    v35 = v34 & (-2 << (v17 & 0x3F));
    if (v35)
    {
      v20 = __clz(__rbit64(v35)) | v17 & 0x7FFFFFFFFFFFFFC0;
      v21 = v43;
    }

    else
    {
      v36 = v56 << 6;
      v37 = v56 + 1;
      v21 = v43;
      v38 = (v42 + 8 * v56);
      while (v37 < (v20 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_100064AB0(v17, v45, 0);
          v20 = __clz(__rbit64(v39)) + v36;
          goto LABEL_4;
        }
      }

      result = sub_100064AB0(v17, v45, 0);
    }

LABEL_4:
    v18 = v54 + 1;
    v17 = v20;
    v8 = v44;
    if (v54 + 1 == v21)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000BE270(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v6 = type metadata accessor for TLVTag();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v8);
  v27[1] = v27 - v9;
  v29 = type metadata accessor for TLV();
  v10 = *(v29 - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  v13 = __chkstk_darwin(v29);
  v28 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v27 - v15;
  v27[0] = sub_1000BDE1C(a3);
  v34 = v3;
  static TLVTag.asn1Sequence.getter();
  sub_100004074(&qword_10039E2D8, &qword_1002C3720);
  v17 = *(v10 + 72);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_1002C1690;
  v32 = v18;
  v33 = a1;
  static TLVTag.asn1Integer.getter();
  sub_10000A114();
  sub_1000B3FE0();
  TLV.init<A>(tag:integer:)();
  v33 = 0;
  static TLVTag.asn1Integer.getter();
  v19 = v30;
  TLV.init<A>(tag:integer:)();
  static TLVTag.asn1OctetString.getter();
  TLV.init(tag:uint64:)();
  static TLVTag.asn1Set.getter();
  v21 = v28;
  v20 = v29;
  TLV.init(tag:children:)();
  TLV.init(tag:children:)();
  (*(v10 + 16))(v21, v16, v20);
  swift_beginAccess();
  v22 = *(v19 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v19 + 16) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_10004D91C(0, *(v22 + 2) + 1, 1, v22);
    *(v19 + 16) = v22;
  }

  v25 = *(v22 + 2);
  v24 = *(v22 + 3);
  if (v25 >= v24 >> 1)
  {
    v22 = sub_10004D91C(v24 > 1, v25 + 1, 1, v22);
  }

  *(v22 + 2) = v25 + 1;
  (*(v11 + 32))(&v22[v32 + v25 * v17], v21, v20);
  *(v19 + 16) = v22;
  swift_endAccess();
  return (*(v11 + 8))(v16, v20);
}

uint64_t sub_1000BE5E4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TLVTag();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    static TLVTag.asn1Sequence.getter();
    v5 = *(v1 + 16);

    TLV.init(tag:children:)();
    v6 = *(*(v1 + 16) + 16);
    v7 = type metadata accessor for MPOCMonitorBatch();
    *(a1 + *(v7 + 20)) = v6;
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for MPOCMonitorBatch();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_1000BE728(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for MPOCMonitorBatch() + 20));
  result = swift_beginAccess();
  if (!v2)
  {
    return swift_endAccess();
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(v1 + 16) + 16) >= v2)
  {
    sub_1000BF098(0, v2);
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BE7BC()
{
  v1 = type metadata accessor for TLVTag();
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v44 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = v39 - v5;
  v6 = type metadata accessor for TLV();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v46 = v39 - v12;
  __chkstk_darwin(v11);
  v14 = v39 - v13;
  swift_beginAccess();
  v15 = *(v0 + 16);
  v51 = xmmword_1002BDC30;
  v16 = *(v15 + 16);
  v48 = v0;
  v47 = v7;
  v41 = v6;
  if (v16)
  {
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v50 = v18;
    v42 = *(v17 + 64);
    *&v49 = (v42 + 32) & ~v42;
    v19 = v15 + v49;
    v20 = *(v17 + 56);
    v52 = v17;
    v21 = (v17 - 8);
    v40 = v15;

    do
    {
      v50(v14, v19, v6);
      v22 = TLV.dataRepresentation.getter();
      v23 = v20;
      v25 = v24;
      Data.append(_:)();
      v26 = v25;
      v20 = v23;
      sub_100009548(v22, v26);
      (*v21)(v14, v6);
      v19 += v23;
      --v16;
    }

    while (v16);

    v50 = *(&v51 + 1);
    v52 = v51;
    v27 = v49;
  }

  else
  {
    v52 = 0;
    v20 = *(v7 + 72);
    v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v50 = 0xC000000000000000;
  }

  v42 = sub_100004074(&qword_10039E2D8, &qword_1002C3720);
  v28 = swift_allocObject();
  v49 = xmmword_1002C1670;
  v40 = v28;
  *(v28 + 16) = xmmword_1002C1670;
  static TLVTag.asn1Sequence.getter();
  v39[1] = 2 * v20;
  *(swift_allocObject() + 16) = v49;
  static TLVTag.asn1IA5String.getter();
  TLV.init(tag:string:)();
  static TLVTag.asn1IA5String.getter();
  TLV.init(tag:string:)();
  TLV.init(tag:children:)();
  static TLVTag.asn1Sequence.getter();
  *(swift_allocObject() + 16) = v49;
  static TLVTag.asn1IA5String.getter();
  TLV.init(tag:string:)();
  static TLVTag.asn1IA5String.getter();
  Data.base64EncodedString(options:)(0);
  TLV.init(tag:string:)();
  TLV.init(tag:children:)();
  static TLVTag.asn1Sequence.getter();
  *(swift_allocObject() + 16) = xmmword_1002C1690;
  *&v49 = v27;
  *&v51 = 4064001;
  static TLVTag.asn1Integer.getter();
  sub_10000A114();
  sub_1000B3FE0();
  TLV.init<A>(tag:integer:)();
  *&v51 = 0;
  static TLVTag.asn1Integer.getter();
  TLV.init<A>(tag:integer:)();
  static TLVTag.asn1OctetString.getter();
  TLV.init(tag:uint64:)();
  v42 = v20;
  static TLVTag.asn1Set.getter();
  TLV.init(tag:children:)();
  v29 = v46;
  TLV.init(tag:children:)();
  v30 = v48;
  v31 = *(v48 + 16);
  *(v48 + 16) = _swiftEmptyArrayStorage;

  v32 = v47;
  v33 = v45;
  v34 = v41;
  (*(v47 + 16))(v45, v29, v41);
  swift_beginAccess();
  *(v30 + 16) = _swiftEmptyArrayStorage;
  v35 = sub_10004D91C(0, 1, 1, _swiftEmptyArrayStorage);
  *(v30 + 16) = v35;
  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_10004D91C(v36 > 1, v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  (*(v32 + 32))(&v35[v49 + v37 * v42], v33, v34);
  *(v30 + 16) = v35;
  swift_endAccess();
  sub_100009548(v52, v50);
  return (*(v32 + 8))(v29, v34);
}

uint64_t sub_1000BEDB8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

BOOL sub_1000BEE5C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 16) + 16) != 0;
}

uint64_t sub_1000BEED4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = _swiftEmptyArrayStorage;
}

unint64_t sub_1000BEF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for TLV();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1000BF098(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_10004D91C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1000BEF50(v6, a2, 0);
  *v2 = v4;
  return result;
}

int64_t sub_1000BF158()
{
  v1 = type metadata accessor for CocoaError.Code();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for CocoaError();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NSFileHandle.read(upToCount:)();
  if (v0)
  {
    return result;
  }

  v10 = v9 >> 60;
  if (v9 >> 60 != 15)
  {
    v12 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v12 != 2)
      {
LABEL_20:
        v21 = v9;
        v22 = result;
        static CocoaError.Code.fileReadCorruptFile.getter();
        sub_100140524(_swiftEmptyArrayStorage);
        sub_1000C1B70(&qword_1003A1D98, &type metadata accessor for CocoaError);
        _BridgedStoredNSError.init(_:userInfo:)();
        CocoaError._nsError.getter();
        (*(v4 + 8))(v7, v3);
        swift_willThrow();
        return sub_10001A074(v22, v21);
      }

      v14 = *(result + 16);
      v13 = *(result + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (!v15)
      {
        if (v16 == 4)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {
      if (v12)
      {
        goto LABEL_18;
      }

      if (BYTE6(v9) != 4)
      {
        goto LABEL_20;
      }

LABEL_11:
      while (v12 != 2)
      {
        if (v12 != 1)
        {
          v27 = result;
          goto LABEL_26;
        }

        v4 = result;
        if (result > result >> 32)
        {
          goto LABEL_31;
        }

        v7 = result;
        v17 = v9;
        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_36;
        }

        v19 = v18;
        v20 = __DataStorage._offset.getter();
        if (__OFSUB__(v4, v20))
        {
          goto LABEL_33;
        }

        v3 = (v4 - v20 + v19);
        result = __DataStorage._length.getter();
        if (v3)
        {
          goto LABEL_24;
        }

        __break(1u);
LABEL_18:
        if (__OFSUB__(HIDWORD(result), result))
        {
          goto LABEL_30;
        }

        if (HIDWORD(result) - result != 4)
        {
          goto LABEL_20;
        }
      }

      v7 = result;
      v23 = *(result + 16);
      v17 = v9;
      v24 = __DataStorage._bytes.getter();
      if (!v24)
      {
        goto LABEL_34;
      }

      v25 = v24;
      v26 = __DataStorage._offset.getter();
      if (!__OFSUB__(v23, v26))
      {
        v3 = (v23 - v26 + v25);
        __DataStorage._length.getter();
        if (!v3)
        {
          goto LABEL_35;
        }

LABEL_24:
        v27 = *v3;
        v9 = v17;
        result = v7;
LABEL_26:
        sub_10001A074(result, v9);
        v11 = bswap32(v27);
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __DataStorage._length.getter();
LABEL_35:
    __break(1u);
LABEL_36:
    result = __DataStorage._length.getter();
    __break(1u);
    return result;
  }

  v11 = 0;
LABEL_27:
  v29 = v10 > 0xE;
  return v11 | ((v10 > 0xE) << 32);
}

uint64_t sub_1000BF47C()
{
  v1 = type metadata accessor for CocoaError.Code();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for CocoaError();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NSFileHandle.read(upToCount:)();
  if (!v0)
  {
    if (v9 >> 60 == 15)
    {
      return 0;
    }

    v10 = v9 >> 62;
    if ((v9 >> 62) <= 1)
    {
      if (!v10)
      {
        if (BYTE6(v9) != 8)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result != 8)
        {
          goto LABEL_19;
        }

LABEL_11:
        v15 = result;
        if (!v10)
        {
LABEL_25:
          sub_10001A074(result, v9);
          return bswap64(v15);
        }

        if (v10 == 2)
        {
          v16 = result;
          v17 = *(result + 16);
          v18 = v9;
          v19 = __DataStorage._bytes.getter();
          if (!v19)
          {
LABEL_32:
            __DataStorage._length.getter();
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v20 = v19;
          v21 = __DataStorage._offset.getter();
          if (!__OFSUB__(v17, v21))
          {
            v22 = (v17 - v21 + v20);
            __DataStorage._length.getter();
            if (!v22)
            {
              goto LABEL_33;
            }

            goto LABEL_24;
          }

          goto LABEL_30;
        }

        v25 = result;
        if (result <= result >> 32)
        {
          v16 = result;
          v18 = v9;
          v26 = __DataStorage._bytes.getter();
          if (!v26)
          {
LABEL_34:
            result = __DataStorage._length.getter();
            __break(1u);
            goto LABEL_35;
          }

          v27 = v26;
          v28 = __DataStorage._offset.getter();
          if (!__OFSUB__(v25, v28))
          {
            v22 = (v25 - v28 + v27);
            result = __DataStorage._length.getter();
            if (!v22)
            {
LABEL_35:
              __break(1u);
              return result;
            }

LABEL_24:
            v15 = *v22;
            v9 = v18;
            result = v16;
            goto LABEL_25;
          }

          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v10 == 2)
    {
      v12 = *(result + 16);
      v11 = *(result + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (v13)
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 == 8)
      {
        goto LABEL_11;
      }
    }

LABEL_19:
    v23 = v9;
    v24 = result;
    static CocoaError.Code.fileReadCorruptFile.getter();
    sub_100140524(_swiftEmptyArrayStorage);
    sub_1000C1B70(&qword_1003A1D98, &type metadata accessor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v4 + 8))(v7, v3);
    swift_willThrow();
    return sub_10001A074(v24, v23);
  }

  return result;
}

uint64_t sub_1000BF788()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1C30);
  sub_10000403C(v0, qword_1003A1C30);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.monitor.getter();
}

uint64_t sub_1000BF7F4(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = v3;
  v78 = a3;
  v69 = a2;
  v6 = type metadata accessor for CocoaError.Code();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  __chkstk_darwin(v6);
  v9 = &v68[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v74 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v68[-v15];
  v17 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileUrl;
  v76 = v11;
  v77 = a1;
  v19 = *(v11 + 16);
  v18 = v11 + 16;
  v19(v4 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileUrl, a1, v10);
  sub_10000411C(0, &qword_1003A06B8, NSFileHandle_ptr);
  v72 = v19;
  v73 = v17;
  v79 = v10;
  v19(v16, v4 + v17, v10);
  v20 = v75;
  v21 = sub_1000C0164(v16);
  if (v20)
  {
    v22 = v4;
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_1000C1B70(&qword_1003A0FD0, &type metadata accessor for CocoaError.Code);
    v23 = v71;
    v24 = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*(v70 + 8))(v9, v23);
    if (v24)
    {

      v25 = v78;
      v26 = v76;
      if (qword_10039D500 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000403C(v27, qword_1003A1C30);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "No existing Monitor Store file", v30, 2u);
      }
    }

    else
    {
      if (qword_10039D500 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000403C(v31, qword_1003A1C30);
      swift_errorRetain();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        swift_errorRetain();
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v36;
        *v35 = v36;
        _os_log_impl(&_mh_execute_header, v32, v33, "Error reading existing Monitor Store: %@", v34, 0xCu);
        sub_10000BD44(v35, &unk_10039E220, &qword_1002C3D60);
      }

      else
      {
      }

      v25 = v78;
      v26 = v76;
    }

    goto LABEL_30;
  }

  v37 = v21;
  v22 = v4;
  if ((v69 & 1) == 0 || (v38 = sub_1000BF158(), (v38 & 0x100000000) != 0))
  {
    v25 = v78;
    v26 = v76;
    if (qword_10039D500 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000403C(v46, qword_1003A1C30);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_29;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Missing Monitor Store version";
  }

  else
  {
    if (v38 != 2)
    {
      v75 = v18;
      v58 = v38;
      if (qword_10039D500 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_10000403C(v59, qword_1003A1C30);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      v62 = os_log_type_enabled(v60, v61);
      v25 = v78;
      v26 = v76;
      if (v62)
      {
        v63 = swift_slowAlloc();
        *v63 = 67109120;
        *(v63 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v60, v61, "Unsupported Monitor Store version: %u", v63, 8u);
      }

      v47 = v74;
      goto LABEL_31;
    }

    v39 = sub_1000BF47C();
    if (v40 & 1) != 0 || (v64 = v39, v65 = sub_1000BF47C(), (v66))
    {
      v25 = v78;
      v26 = v76;
    }

    else
    {
      v25 = v78;
      v26 = v76;
      if (v65 >= 0x14)
      {
        v67 = v65;
        (*(v76 + 8))(v77, v79);
        *(v4 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_timeBase) = v64;
        *(v4 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize) = v67;
        *(v4 + 16) = v37;
        goto LABEL_36;
      }
    }

    if (qword_10039D500 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000403C(v41, qword_1003A1C30);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_29;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Invalid or missing Monitor Store header";
  }

  _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);

LABEL_29:

LABEL_30:
  v47 = v74;
LABEL_31:
  v48 = *sub_10000BE18(v25, v25[3]);
  sub_1000C02BC();
  v50 = v49;
  *(v22 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_timeBase) = v49;
  *(v22 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize) = 20;
  v72(v47, v22 + v73, v79);
  v51 = sub_1000C1728(v47, v50, 0x14uLL);
  v52 = *(v26 + 8);
  v52(v47, v79);
  *(v22 + 16) = v51;
  if (qword_10039D500 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_10000403C(v53, qword_1003A1C30);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Created empty Monitor Store V2", v56, 2u);
  }

  v52(v77, v79);
LABEL_36:
  sub_10000959C(v25);
  return v22;
}

id sub_1000C0164(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForUpdatingURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

void sub_1000C02BC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[10];
  v7 = v0[11];
  sub_10000BE18(v0 + 7, v6);
  (*(v7 + 8))(v6, v7);
  Date.timeIntervalSince1970.getter();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v10 = v0[10];
  v11 = v0[11];
  sub_10000BE18(v0 + 7, v10);
  v12 = (v9 - (*(v11 + 24))(v10, v11)) * 1000000.0;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_1000C0454()
{
  v2 = v1;
  v3 = v0;
  if (TLV.derSize.getter() < 0)
  {
    __break(1u);
  }

  v4 = *(v0 + 16);
  v5 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize;
  v6 = *(v0 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize);
  v29 = 0;
  v7 = [v4 seekToOffset:v6 error:&v29];
  v8 = v29;
  if (!v7)
  {
    v12 = v29;
    v2 = _convertNSErrorToError(_:)();

LABEL_6:
    swift_willThrow();
    goto LABEL_7;
  }

  v9 = *(v0 + 16);
  sub_10000411C(0, &qword_1003A06B8, NSFileHandle_ptr);
  v10 = v8;
  v11 = v9;
  DERWriter.writeDER(tlv:)();
  if (v1)
  {

LABEL_7:
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v13._object = 0x800000010034B8A0;
    v13._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v13);
    v28 = v2;
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    _print_unlocked<A, B>(_:_:)();
    v14 = v29;
    v15 = v30;
    sub_1000BCAB4();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 1;
    swift_willThrow();

    return;
  }

  v17 = *(v0 + 16);
  v18 = NSFileHandle.offset()();
  v2 = v19;
  if (v19)
  {

    goto LABEL_7;
  }

  v20 = v18;

  v21 = *(v3 + 16);
  v29 = 0;
  v22 = [v21 seekToOffset:12 error:&v29];
  v23 = v29;
  if (!v22)
  {
    v27 = v29;
    v2 = _convertNSErrorToError(_:)();

    goto LABEL_6;
  }

  v24 = *(v3 + 16);
  v28 = bswap64(v20);
  v29 = &v28;
  v30 = &v29;
  sub_1000C16D4();
  v25 = v23;
  v26 = v24;
  NSFileHandle.write<A>(contentsOf:)();

  *(v3 + v5) = v20;
}

uint64_t sub_1000C0704(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v58 - v6;
  v8 = type metadata accessor for TLV();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 16);
  v14 = NSFileHandle.offset()();
  v16 = v15;
  if (v15)
  {

LABEL_11:
    v66 = 0;
    v67 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v27._object = 0x800000010034B880;
    v27._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v27);
    v65 = v16;
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    _print_unlocked<A, B>(_:_:)();
    v28 = v66;
    v29 = v67;
    sub_1000BCAB4();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = v29;
    *(v30 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v17 = v14;
    v64 = v7;

    if (a1 < 0)
    {
      goto LABEL_45;
    }

    v18 = *(v2 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize);
    v19 = v18 >= v17;
    v20 = v18 - v17;
    if (!v19)
    {
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
    }

    v60 = v9;
    v63 = v17;
    if (v20 >= a1)
    {
      v21 = a1;
    }

    else
    {
      v21 = v20;
    }

    v66 = sub_1000C1ACC(v21);
    v67 = v22;
    v65 = *(v2 + 16);
    v23 = v65;
    v24 = sub_10000411C(0, &qword_1003A06B8, NSFileHandle_ptr);
    v25 = v23;
    v26 = v64;
    DERReader.readDERTLV()();
    v58[1] = v24;
    v59 = v2;
    v61 = (v60 + 4);
    v62 = (v60 + 6);
    ++v60;
    v32 = v26;
    while (1)
    {

      if ((*v62)(v32, 1, v8) == 1)
      {
        sub_10000BD44(v32, &unk_10039E210, &unk_1002C65B0);
        goto LABEL_41;
      }

      (*v61)(v12, v32, v8);
      v33 = TLV.dataRepresentation.getter();
      v35 = v33;
      v36 = v34;
      v37 = v67 >> 62;
      if ((v67 >> 62) > 1)
      {
        if (v37 == 2)
        {
          v39 = *(v66 + 16);
          v40 = *(v66 + 24);
          v41 = __OFSUB__(v40, v39);
          v38 = v40 - v39;
          if (v41)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v38 = 0;
        }
      }

      else if (v37)
      {
        LODWORD(v38) = HIDWORD(v66) - v66;
        if (__OFSUB__(HIDWORD(v66), v66))
        {
          goto LABEL_47;
        }

        v38 = v38;
      }

      else
      {
        v38 = BYTE6(v67);
      }

      v42 = v34 >> 62;
      if ((v34 >> 62) > 1)
      {
        if (v42 == 2)
        {
          v45 = *(v33 + 16);
          v44 = *(v33 + 24);
          v41 = __OFSUB__(v44, v45);
          v43 = v44 - v45;
          if (v41)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v43 = 0;
        }
      }

      else if (v42)
      {
        LODWORD(v43) = HIDWORD(v33) - v33;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_50;
        }

        v43 = v43;
      }

      else
      {
        v43 = BYTE6(v34);
      }

      v41 = __OFADD__(v38, v43);
      v46 = v38 + v43;
      if (v41)
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (v46 > a1)
      {
        break;
      }

      v47 = a1;
      v48 = v8;
      Data.append(_:)();
      v49 = v59;
      v50 = *(v59 + 16);
      v63 = NSFileHandle.offset()();
      v16 = v51;
      if (v51)
      {
        (*v60)(v12, v48);

        sub_100009548(v35, v36);
LABEL_10:
        sub_100009548(v66, v67);
        goto LABEL_11;
      }

      (*v60)(v12, v48);

      sub_100009548(v35, v36);
      v52 = *(v49 + 16);
      v8 = v48;
      v65 = v52;
      v25 = v52;
      v32 = v64;
      DERReader.readDERTLV()();
      a1 = v47;
    }

    v53 = *(v59 + 16);
    v65 = 0;
    if (![v53 seekToOffset:v63 error:&v65])
    {
      v57 = v65;
      v16 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100009548(v35, v36);
      (*v60)(v12, v8);
      goto LABEL_10;
    }

    v54 = *v60;
    v55 = v65;
    v54(v12, v8);
    sub_100009548(v35, v36);
LABEL_41:
    v28 = v66;
    v56 = v67;
    sub_1000094F4(v66, v67);
    sub_100009548(v28, v56);
  }

  return v28;
}

void sub_1000C0CBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = NSFileHandle.offset()();
  if (v6)
  {

    _StringGuts.grow(_:)(26);
    v7._object = 0x800000010034B880;
    v7._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v7);
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    _print_unlocked<A, B>(_:_:)();
    sub_1000BCAB4();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 1;
    swift_willThrow();

    return;
  }

  v9 = v5;

  v10 = *(v2 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize);
  v11 = v10 >= v9;
  v12 = v10 - v9;
  if (!v11)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v13 = __OFADD__(v12, a1);
  v14 = v12 + a1;
  if (v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = __OFSUB__(v14, 1);
  v15 = v14 - 1;
  if (v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (v15 == 0x8000000000000000 && a1 == -1)
  {
    goto LABEL_18;
  }
}

void sub_1000C0E3C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v4 = a1 + 20;
  v5 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize;
  if (*(v2 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize) < a1 + 20)
  {
    sub_1000BCAB4();
    swift_allocError();
    *v6 = xmmword_1002C6570;
    *(v6 + 16) = 0;
    goto LABEL_28;
  }

  v9 = *(v2 + 16);
  v38 = 0;
  v10 = [v9 seekToOffset:v4 error:&v38];
  v11 = v38;
  if (!v10)
  {
    goto LABEL_27;
  }

  v12 = *(v2 + v5);
  v13 = v12 - a1;
  if (v12 < a1)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = *(a2 + 16);
  v38 = 0;
  v15 = v11;
  v16 = [v14 seekToOffset:12 error:&v38];
  v11 = v38;
  if (!v16)
  {
LABEL_27:
    v34 = v11;
    _convertNSErrorToError(_:)();

    goto LABEL_28;
  }

  v17 = *(a2 + 16);
  v36 = v2;
  v37 = bswap64(v13);
  v38 = &v37;
  v39 = &v38;
  sub_1000C16D4();
  v18 = v11;
  v19 = v17;
  NSFileHandle.write<A>(contentsOf:)();

  if (v3)
  {
    return;
  }

  v20 = v2;
  v21 = *(v2 + v5);
  v22 = v21 - v4;
  if (v21 < v4)
  {
LABEL_37:
    __break(1u);
  }

  if (!v22)
  {
    return;
  }

  while (1)
  {
    v23 = *(v20 + 16);
    v24 = NSFileHandle.read(upToCount:)();
    v26 = v25;

    if (v26 >> 60 == 15)
    {
      break;
    }

    v27 = *(a2 + 16);
    v38 = v24;
    v39 = v26;
    sub_10004F340();
    v28 = v27;
    NSFileHandle.write<A>(contentsOf:)();

    v29 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      v20 = v36;
      if (v29 != 2)
      {
        sub_10001A074(v24, v26);
        goto LABEL_25;
      }

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      sub_10001A074(v24, v26);
      v33 = v31 - v32;
      if (__OFSUB__(v31, v32))
      {
        goto LABEL_35;
      }
    }

    else
    {
      v20 = v36;
      if (!v29)
      {
        sub_10001A074(v24, v26);
        v30 = v22 >= BYTE6(v26);
        v22 -= BYTE6(v26);
        if (!v30)
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

      sub_10001A074(v24, v26);
      LODWORD(v33) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_36;
      }

      v33 = v33;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    v30 = v22 >= v33;
    v22 -= v33;
    if (!v30)
    {
      goto LABEL_34;
    }

LABEL_25:
    if (!v22)
    {
      return;
    }
  }

  sub_1000BCAB4();
  swift_allocError();
  *v35 = xmmword_1002C6560;
  *(v35 + 16) = 1;
LABEL_28:
  swift_willThrow();
}

unint64_t *sub_1000C1180()
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize;
  *(v0 + OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileSize) = 20;
  v4 = *(v0 + 16);
  v20 = 0;
  v5 = [v4 seekToOffset:12 error:&v20];
  v6 = v20;
  if (!v5)
  {
    v11 = v20;
    v2 = _convertNSErrorToError(_:)();

LABEL_5:
    swift_willThrow();
    goto LABEL_6;
  }

  v7 = *(v0 + 16);
  v8 = v0;
  v19 = bswap64(*(v0 + v3));
  v20 = &v19;
  v21 = &v20;
  sub_1000C16D4();
  v9 = v6;
  v10 = v7;
  NSFileHandle.write<A>(contentsOf:)();
  if (!v1)
  {

    v17 = *(v8 + 16);
    v20 = 0;
    if ([v17 truncateAtOffset:20 error:&v20])
    {
      return v20;
    }

    v18 = v20;
    v2 = _convertNSErrorToError(_:)();

    goto LABEL_5;
  }

LABEL_6:
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v12._object = 0x800000010034B860;
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v12);
  v19 = v2;
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  _print_unlocked<A, B>(_:_:)();
  v13 = v20;
  v14 = v21;
  sub_1000BCAB4();
  swift_allocError();
  *v15 = v13;
  *(v15 + 8) = v14;
  *(v15 + 16) = 1;
  swift_willThrow();
}

id sub_1000C13B4()
{
  v1 = *(v0 + 16);
  v8 = 0;
  if ([v1 closeAndReturnError:&v8])
  {
    return v8;
  }

  v3 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v4._object = 0x800000010034B840;
  v4._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v4);
  sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
  _print_unlocked<A, B>(_:_:)();
  v5 = v8;
  v6 = v9;
  sub_1000BCAB4();
  swift_allocError();
  *v7 = v5;
  *(v7 + 8) = v6;
  *(v7 + 16) = 1;
  swift_willThrow();
}

uint64_t sub_1000C152C()
{
  v1 = OBJC_IVAR____TtC14softposreaderd16MPOCMonitorStore_fileUrl;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MPOCMonitorStore()
{
  result = qword_1003A1C70;
  if (!qword_1003A1C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C1624()
{
  result = type metadata accessor for URL();
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

unint64_t sub_1000C16D4()
{
  result = qword_1003A1D90;
  if (!qword_1003A1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A1D90);
  }

  return result;
}

unint64_t **sub_1000C1728(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v24 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(0);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 createFileAtPath:v12 contents:0 attributes:0];

  if (v13)
  {
    sub_10000411C(0, &qword_1003A06B8, NSFileHandle_ptr);
    (*(v7 + 16))(v10, a1, v6);
    v14 = sub_1000C0164(v10);
    if (v3)
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v26 = 0xD00000000000002DLL;
      v27 = 0x800000010034B8E0;
      v16 = URL.path(percentEncoded:)(0);
      String.append(_:)(v16);

      v17 = v26;
      v15 = v27;
      sub_1000BCAB4();
      swift_allocError();
      *v18 = v17;
      *(v18 + 8) = v15;
      *(v18 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      v15 = v14;
      LODWORD(v25) = 0x2000000;
      v26 = &v25;
      v27 = (&v25 + 4);
      sub_1000C16D4();
      NSFileHandle.write<A>(contentsOf:)();
      v25 = bswap64(a2);
      v26 = &v25;
      v27 = &v26;
      NSFileHandle.write<A>(contentsOf:)();
      v25 = bswap64(v24);
      v26 = &v25;
      v27 = &v26;
      NSFileHandle.write<A>(contentsOf:)();
    }
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v26 = 0xD00000000000001ALL;
    v27 = 0x800000010034B8C0;
    v19 = URL.path(percentEncoded:)(0);
    String.append(_:)(v19);

    v20 = v26;
    v15 = v27;
    sub_1000BCAB4();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = v15;
    *(v21 + 16) = 1;
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_1000C1ACC(uint64_t result)
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

uint64_t sub_1000C1B70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000C1BD4(int a1)
{
  _StringGuts.grow(_:)(26);

  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002C1660;
  *(v2 + 56) = &type metadata for UInt32;
  *(v2 + 64) = &protocol witness table for UInt32;
  *(v2 + 32) = a1;
  v3._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD000000000000017;
}

uint64_t sub_1000C1CBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5441545345545441 && a2 == 0xEB000000004E4F49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x52554749464E4F43 && a2 == 0xED00004E4F495441 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x49524F54494E4F4DLL && a2 == 0xEA0000000000474ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x544E4F435F4E4950 && a2 == 0xEE0052454C4C4F52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x524544414552 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x435F455255434553 && a2 == 0xEE004C454E4E4148 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 6;
  }

  result = 7;
  if (a1 != 0xD000000000000011 || 0x800000010034B930 != a2)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C1EEC()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1DA0);
  sub_10000403C(v0, qword_1003A1DA0);
  sub_100023B24();
  return static SPRLogger.monitor.getter();
}

void sub_1000C1F48(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  if (qword_10039D508 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A1DA0);

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, &v22);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1002C1790;
    v15 = word_1002C66F8[a1];
    *(v14 + 56) = &type metadata for UInt16;
    *(v14 + 32) = v15;
    type metadata accessor for SPRAttestationVaultOptions(0);
    *(v14 + 88) = v16;
    *(v14 + 64) = a2;
    *(v14 + 120) = sub_100004074(&qword_1003A0FE0, &qword_1002C66F0);
    *(v14 + 96) = a3;

    v17 = showFunction(signature:_:)(0xD000000000000029, 0x800000010034B9B0, v14);
    v19 = v18;

    v20 = sub_100008F6C(v17, v19, &v22);

    *(v10 + 14) = v20;
    _os_log_impl(&_mh_execute_header, oslog, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000C2240@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NullAuditor();
  result = swift_initStaticObject();
  a1[3] = v2;
  a1[4] = &off_100382E88;
  *a1 = result;
  return result;
}

uint64_t sub_1000C2288(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100004074(&qword_1003A0FD8, &qword_1002C4F60);
  result = static _DictionaryStorage.copy(original:)();
  v6 = result;
  v7 = 0;
  v36 = result;
  v37 = a2;
  v10 = *(a2 + 64);
  v9 = a2 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v35 = result + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = 16 * v18;
      v20 = (*(v37 + 48) + 16 * v18);
      v21 = v20[1];
      v38 = *v20;
      sub_10000CCE4(*(v37 + 56) + 40 * v18, v39);
      sub_10000BE18(v39, v39[3]);

      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      result = sub_10000959C(v39);
      v25 = (v18 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v26 = 1 << v18;
      v6 = v36;
      *(v35 + v25) |= v26;
      v27 = (v36[6] + v19);
      *v27 = v38;
      v27[1] = v21;
      v28 = (v36[7] + v19);
      *v28 = v22;
      v28[1] = v24;
      v29 = v36[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v36[2] = v31;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        (*(a4 + 8))(a1, 206, v6, a3);
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C2474()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A1F10);
  sub_10000403C(v0, qword_1003A1F10);
  sub_100023B24();
  return static SPRLogger.monitor.getter();
}

uint64_t sub_1000C24D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100183EFC(_swiftEmptyArrayStorage);
  (*(a3 + 8))(a1, 206, v6, a2, a3);
}

void sub_1000C2554(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = dword_1002C67B8[a1] | (sub_1000C1CBC(v4[2], v4[3]) << 8);
  v8 = *sub_10000BE18(v4 + 9, v4[12]);
  sub_100033A6C(a2);
  v10 = v9;
  v11 = v4[7];
  v12 = v4[8];
  sub_10000BE18(v4 + 4, v11);
  (*(v12 + 8))(v7 | 1u, v10, a3, v11, v12);
  v13 = v4[14];
  sub_1000257B0(v7 | 1, v10, a2);
}

uint64_t sub_1000C2804()
{
  v1 = v0[3];

  sub_10000959C(v0 + 4);
  sub_10000959C(v0 + 9);
  v2 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t sub_1000C289C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xEB000000004E4F49;
    v13 = 0x5441545345545441;
    v14 = 0x49524F54494E4F4DLL;
    v15 = 0xEA0000000000474ELL;
    if (a1 != 2)
    {
      v14 = 0xD000000000000014;
      v15 = 0x800000010034B9E0;
    }

    if (a1)
    {
      v13 = 0x52554749464E4F43;
      v12 = 0xED00004E4F495441;
    }

    if (a1 <= 1u)
    {
      v10 = v13;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v15;
    }
  }

  else
  {
    v4 = 0xEE0052454C4C4F52;
    v5 = 0x544E4F435F4E4950;
    v6 = 0xD000000000000011;
    v7 = 0x800000010034B930;
    if (a1 != 7)
    {
      v6 = 0x4B4F545F454D4954;
      v7 = 0xEA00000000004E45;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xE600000000000000;
    v9 = 0x524544414552;
    if (a1 != 4)
    {
      v9 = 0x435F455255434553;
      v8 = 0xEE004C454E4E4148;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  (*(a3 + 8))(v10, v11, a2);
}

uint64_t sub_1000C2A44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1000F5A28(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_retain_n();
  }

  else
  {
    sub_10000CCE4(a4 + 16, v37);
    sub_10000CCE4(a4 + 56, v35);
    v33 = *(a4 + 96);
    v14 = v36;
    v15 = sub_100022438(v35, v36);
    v38 = &v33;
    v16 = *(*(v14 - 8) + 64);
    __chkstk_darwin(v15);
    v18 = (&v34[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v21 = type metadata accessor for MPOCDefaultAttestationManager();
    v34[3] = v21;
    v34[4] = &off_100380AA8;
    v34[0] = v20;
    type metadata accessor for ComponentAuditor();
    v22 = swift_allocObject();
    v23 = sub_100022438(v34, v21);
    v24 = *(*(v21 - 8) + 64);
    __chkstk_darwin(v23);
    v26 = (&v34[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = *v26;

    v29 = v33;

    v13 = sub_1000C2E28(a2, a3, v37, v28, v29, v22);
    sub_10000959C(v34);
    sub_10000959C(v35);
    swift_retain_n();

    v30 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37[0] = *a1;
    sub_100180608(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *a1 = *&v37[0];
  }

  a5[3] = type metadata accessor for ComponentAuditor();
  a5[4] = &off_100382E98;

  *a5 = v13;
  return result;
}

uint64_t sub_1000C2D30()
{
  sub_10000959C(v0 + 2);
  sub_10000959C(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  return swift_deallocClassInstance();
}

void sub_1000C2DA4(uint64_t **a1@<X8>)
{
  v3 = *(*v1 + 104);
  os_unfair_lock_lock((v3 + 24));
  sub_1000C2E08((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t *sub_1000C2E28(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v30 = type metadata accessor for MPOCDefaultAttestationManager();
  v31 = &off_100380AA8;
  *&v29 = a4;
  if (qword_10039D510 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A1F10);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v16 = 136315394;
    nullsub_1(v12);
    v17 = _typeName(_:qualified:)();
    v27 = a1;
    v19 = a2;
    v20 = a3;
    v21 = a5;
    v22 = sub_100008F6C(v17, v18, &v28);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = showFunction(signature:_:)(0xD000000000000046, 0x800000010034BA90, _swiftEmptyArrayStorage);
    v25 = sub_100008F6C(v23, v24, &v28);
    a5 = v21;
    a3 = v20;
    a2 = v19;
    a1 = v27;

    *(v16 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s.%s", v16, 0x16u);
    swift_arrayDestroy();
  }

  a6[2] = a1;
  a6[3] = a2;
  sub_100029790(a3, (a6 + 4));
  sub_100029790(&v29, (a6 + 9));
  a6[14] = a5;
  return a6;
}

uint64_t sub_1000C3074(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = type metadata accessor for MPOCDefaultAttestationManager();
  v11[4] = &off_100380AA8;
  v11[0] = a2;
  sub_10000CCE4(a1, a4 + 16);
  sub_10000CCE4(v11, a4 + 56);
  *(a4 + 96) = a3;
  type metadata accessor for ComponentAuditor();

  v8 = Dictionary.init(minimumCapacity:)();
  sub_100004074(&qword_1003A20C0, &qword_1002C68D8);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;

  sub_10000959C(a1);
  sub_10000959C(v11);
  *(v9 + 16) = v8;

  *(a4 + 104) = v9;
  return a4;
}

uint64_t sub_1000C317C()
{
  sub_1000EC3E8(v23);
  if (v0)
  {
  }

  else
  {
    sub_1000E8A64(v21);
    sub_1000ED0B0();
    v4 = v3;
    v5 = v22;
    v6 = sub_100022438(v21, v22);
    v7 = *(*(v5 - 8) + 64);
    __chkstk_darwin(v6);
    v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for MPOCDefaultAttestationManager();
    v20[3] = v12;
    v20[4] = &off_100380AA8;
    v20[0] = v11;
    type metadata accessor for ComponentAuditorFactory();
    v13 = swift_allocObject();
    v14 = sub_100022438(v20, v12);
    v15 = *(*(v12 - 8) + 64);
    __chkstk_darwin(v14);
    v17 = (&v20[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v1 = sub_1000C3074(v23, *v17, v4, v13);

    sub_10000959C(v20);
    sub_10000959C(v21);
  }

  return v1;
}

uint64_t sub_1000C33C8()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A20C8);
  sub_10000403C(v0, qword_1003A20C8);
  sub_100023B24();
  return static SPRLogger.monitor.getter();
}

uint64_t *sub_1000C3424()
{
  v1 = v0;
  v2 = *v0;
  if (qword_10039D518 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A20C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000959C(v1 + 2);
  sub_10000959C(v1 + 7);
  v13 = v1[12];

  return v1;
}

uint64_t sub_1000C3608()
{
  sub_1000C3424();

  return swift_deallocClassInstance();
}

void sub_1000C3660(int a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v11 = *v4;
  if (qword_10039D518 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A20C8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v15 = 136315394;
    v16 = _typeName(_:qualified:)();
    v39 = v7;
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = sub_100008F6C(v16, v17, v41);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = showFunction(signature:_:)(0xD000000000000027, 0x800000010034BBE0, _swiftEmptyArrayStorage);
    v24 = sub_100008F6C(v22, v23, v41);

    *(v15 + 14) = v24;
    a3 = v20;
    a2 = v19;
    a1 = v18;
    v7 = v39;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s", v15, 0x16u);
    swift_arrayDestroy();

    v6 = v5;
  }

  if (a1 < 0x3E9u)
  {
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    strcpy(v41, "Event value ");
    BYTE5(v41[1]) = 0;
    HIWORD(v41[1]) = -5120;
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33._object = 0x800000010034BBA0;
    v33._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v33);
    v42 = 0;
LABEL_14:
    _print_unlocked<A, B>(_:_:)();
    v36._countAndFlagsBits = 3026478;
    v36._object = 0xE300000000000000;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    String.append(_:)(v37);

    sub_100021564(3200, v41[0], v41[1], 0);
    swift_willThrow();
    return;
  }

  if (a2 < 0x33u)
  {
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v41[0] = 0xD000000000000010;
    v41[1] = 0x800000010034BBC0;
LABEL_13:
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._object = 0x800000010034BBA0;
    v35._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v35);
    v42 = 0;
    goto LABEL_14;
  }

  if (a3 < 0x33u)
  {
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    strcpy(v41, "Origin value ");
    HIWORD(v41[1]) = -4864;
    goto LABEL_13;
  }

  v25 = (a1 << 16) | (a2 << 8) | a3;
  v26 = v7[5];
  v27 = v7[6];
  sub_10000BE18(v7 + 2, v26);
  v28 = *sub_10000BE18(v7 + 7, v7[10]);
  sub_100033A6C(0);
  (*(v27 + 8))(v25, v29, a4, v26, v27);
  if (v6)
  {
    v41[0] = v6;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v30 = String.init<A>(describing:)();
    sub_100021564(3201, v30, v31, 0);
    swift_willThrow();
  }

  else
  {
    v38 = v7[12];
    sub_1000257B0(v25, 0, 0);
  }
}

uint64_t *sub_1000C3BBC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v22 = type metadata accessor for MPOCDefaultAttestationManager();
  v23 = &off_100380AA8;
  *&v21 = a2;
  *(a4 + 13) = xmmword_1002C68E0;
  *(a4 + 15) = xmmword_1002C68F0;
  *(a4 + 17) = xmmword_1002C68F0;
  if (qword_10039D518 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A20C8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, &v20);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = showFunction(signature:_:)(0xD000000000000038, 0x800000010034BB60, _swiftEmptyArrayStorage);
    v18 = sub_100008F6C(v16, v17, &v20);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  sub_100029790(a1, (a4 + 2));
  sub_100029790(&v21, (a4 + 7));
  a4[12] = a3;
  return a4;
}

uint64_t *sub_1000C3DF4()
{
  sub_1000EC3E8(v23);
  if (v0)
  {
  }

  else
  {
    sub_1000E8A64(v21);
    sub_1000ED0B0();
    v4 = v3;
    v5 = v22;
    v6 = sub_100022438(v21, v22);
    v7 = *(*(v5 - 8) + 64);
    __chkstk_darwin(v6);
    v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for MPOCDefaultAttestationManager();
    v20[3] = v12;
    v20[4] = &off_100380AA8;
    v20[0] = v11;
    type metadata accessor for Monitor();
    v13 = swift_allocObject();
    v14 = sub_100022438(v20, v12);
    v15 = *(*(v12 - 8) + 64);
    __chkstk_darwin(v14);
    v17 = (&v20[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v1 = sub_1000C3BBC(v23, *v17, v4, v13);

    sub_10000959C(v20);
    sub_10000959C(v21);
  }

  return v1;
}

uint64_t sub_1000C4040()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A21B0);
  sub_10000403C(v0, qword_1003A21B0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.common.getter();
}

id sub_1000C40AC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [*(v0 + 16) newBackgroundContext];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1000C4110(uint64_t *a1)
{
  v74 = a1;
  v2 = type metadata accessor for URL.DirectoryHint();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  __chkstk_darwin(v2);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004074(&qword_1003A03D0, &unk_1002C3D50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v66 = &v60 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v71 = &v60 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v60 - v17;
  __chkstk_darwin(v16);
  v20 = &v60 - v19;
  v72 = v1;
  *(v1 + 24) = 0;
  v21 = [objc_opt_self() current];
  v22 = [v21 bundle];

  v23 = String._bridgeToObjectiveC()();
  v24 = String._bridgeToObjectiveC()();
  v25 = [v22 URLForResource:v23 withExtension:v24];

  if (v25)
  {
    v70 = v22;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v20, v18, v8);
    v26 = objc_allocWithZone(NSManagedObjectModel);
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v30 = [v26 initWithContentsOfURL:v28];

    if (v30)
    {
      v62 = v30;
      v31 = *sub_10000BE18(v74, v74[3]) + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL;
      v61 = *(v9 + 16);
      v61(v13, v31, v8);
      v32 = v9;
      if (qword_10039D5C0 != -1)
      {
        swift_once();
      }

      sub_10000403C(v8, qword_1003A6CE8);
      v33 = static URL.== infix(_:_:)();
      v34 = v8;
      v36 = v9 + 8;
      v35 = *(v9 + 8);
      v35(v13, v34);
      v64 = v36;
      v65 = v20;
      v63 = v34;
      if (v33)
      {
        (*(v32 + 56))(v66, 1, 1, v34);
        (*(v68 + 104))(v67, enum case for URL.DirectoryHint.inferFromPath(_:), v69);
        URL.init(filePath:directoryHint:relativeTo:)();
      }

      else
      {
        v37 = sub_10000BE18(v74, v74[3]);
        v61(v13, *v37 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v34);
        URL.appendingPathComponent(_:)();
        v35(v13, v34);
      }

      v38 = objc_allocWithZone(NSPersistentStoreDescription);
      URL._bridgeToObjectiveC()(v39);
      v41 = v40;
      v42 = [v38 initWithURL:v40];

      [v42 setOption:NSFileProtectionCompleteUntilFirstUserAuthentication forKey:NSPersistentStoreFileProtectionKey];
      v43 = objc_allocWithZone(NSPersistentContainer);
      v44 = v62;
      v45 = String._bridgeToObjectiveC()();
      v46 = [v43 initWithName:v45 managedObjectModel:v44];

      sub_100004074(&qword_10039E3C0, &unk_1002C7840);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1002C6960;
      *(v47 + 32) = v42;
      sub_10000411C(0, &qword_1003A22A8, NSPersistentStoreDescription_ptr);
      v48 = v42;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v46 setPersistentStoreDescriptions:isa];

      v50 = objc_autoreleasePoolPush();
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      v52 = (v51 + 16);
      aBlock[4] = sub_1000C4EF4;
      aBlock[5] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000C4A08;
      aBlock[3] = &unk_100382EF0;
      v53 = _Block_copy(aBlock);

      [v46 loadPersistentStoresWithCompletionHandler:v53];
      _Block_release(v53);
      swift_beginAccess();
      v54 = *v52;
      if (!*v52)
      {

        objc_autoreleasePoolPop(v50);

        v59 = v63;
        v35(v71, v63);
        v35(v65, v59);
        v57 = v72;
        *(v72 + 16) = v46;
        sub_10000959C(v74);
        return v57;
      }

      v55 = *v52;
      swift_errorRetain();
      sub_100020A38(6004, 0, 0, v54);
      swift_willThrow();

      objc_autoreleasePoolPop(v50);

      v56 = v63;
      v35(v71, v63);
      v35(v65, v56);
    }

    else
    {
      sub_100020A38(6998, 0xD000000000000015, 0x800000010034BCB0, 0);
      swift_willThrow();

      (*(v9 + 8))(v20, v8);
    }
  }

  else
  {
    sub_100020A38(6998, 0xD000000000000026, 0x800000010034BC80, 0);
    swift_willThrow();
  }

  v57 = v72;

  type metadata accessor for CoreDataManager();
  swift_deallocPartialClassInstance();
  sub_10000959C(v74);
  return v57;
}

uint64_t sub_1000C49A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_errorRetain();
}

void sub_1000C4A08(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_1000C4A94()
{
  v1 = v0;
  v2 = &selRef_currencyCode;
  v3 = [*(v0 + 16) persistentStoreCoordinator];
  v4 = [v3 persistentStores];

  sub_10000411C(0, &qword_1003A22A0, NSPersistentStore_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  v8 = 0;
  v9 = v5 & 0xC000000000000001;
  v10 = &selRef_currencyCode;
  *&v6 = 136315394;
  v33 = v6;
  v34 = v7;
  v39 = v5 & 0xC000000000000001;
  do
  {
    if (v9)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v5 + 8 * v8 + 32);
    }

    v13 = v12;
    v14 = [*(v1 + 16) v2[95]];
    v40 = 0;
    v15 = [v14 v10[97]];

    if (v15)
    {
      v11 = v40;
    }

    else
    {
      v16 = v40;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10039D520 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000403C(v17, qword_1003A21B0);
      v18 = v13;
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v40 = v37;
        *v21 = v33;
        v22 = [v18 debugDescription];
        v38 = v18;
        v23 = v2;
        v24 = v22;
        v25 = v1;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v19;
        v27 = v5;
        v29 = v28;

        v2 = v23;
        v30 = sub_100008F6C(v26, v29, &v40);
        v5 = v27;

        *(v21 + 4) = v30;
        v1 = v25;
        *(v21 + 12) = 2112;
        v31 = _convertErrorToNSError(_:)();
        *(v21 + 14) = v31;
        *v36 = v31;
        _os_log_impl(&_mh_execute_header, v35, v20, "Failed to remove %s: %@", v21, 0x16u);
        sub_100041D90(v36);

        sub_10000959C(v37);

        v7 = v34;
      }

      else
      {
      }

      v9 = v39;
      v10 = &selRef_currencyCode;
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_18:

  return v1;
}

uint64_t sub_1000C4E64()
{
  sub_1000C4A94();

  return swift_deallocClassInstance();
}

uint64_t sub_1000C4EBC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C4EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C4F14()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A22B0);
  sub_10000403C(v0, qword_1003A22B0);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.common.getter();
}

void sub_1000C4F80(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    __chkstk_darwin(a1);
    sub_1000C60D0();
    return;
  }

  if (a1 != a1 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_100020A38(6001, 0, 0, 0);
  swift_willThrow();
}

void sub_1000C5068(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = objc_autoreleasePoolPush();
  sub_1000C5E48(&v25, &v26);
  if (v3)
  {
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    objc_autoreleasePoolPop(v9);
    v10 = v26;
    v11 = [v26 storedValue];
    if (v11)
    {
      v12 = v11;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      *a3 = v13;
      a3[1] = v15;
    }

    else
    {
      if (qword_10039D528 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000403C(v16, qword_1003A22B0);
      sub_1000094F4(a1, a2);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      sub_100009548(a1, a2);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26 = v20;
        *v19 = 136315138;
        static String.Encoding.utf8.getter();
        countAndFlagsBits = String.init(data:encoding:)();
        if (!object)
        {
          v23 = Data.hexString()();
          object = v23._object;
          countAndFlagsBits = v23._countAndFlagsBits;
        }

        v24 = sub_100008F6C(countAndFlagsBits, object, &v26);

        *(v19 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v18, "CoreDataWrapper: Failed to retrieve data for key: %s", v19, 0xCu);
        sub_10000959C(v20);
      }

      sub_100020A38(6002, 0, 0, 0);
      swift_willThrow();
    }
  }
}

void sub_1000C52EC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    if (a1 == a1 >> 32)
    {
LABEL_12:
      v6 = 6001;
LABEL_16:
      sub_100020A38(v6, 0, 0, 0);
      swift_willThrow();
      return;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v5)
  {
    if (a3 == a3 >> 32)
    {
LABEL_15:
      v6 = 6003;
      goto LABEL_16;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  __chkstk_darwin(a1);
  sub_1000C6270();
}

void sub_1000C5410(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for String.Encoding();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = objc_autoreleasePoolPush();
  sub_1000C5E48(&v32, &v33);
  if (v6)
  {
    v30 = a5;
    objc_autoreleasePoolPop(v14);
    _s3__C4CodeOMa_6(0);
    v33 = 6000;
    swift_errorRetain();
    sub_1000C6780();
    v15 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v15 & 1) == 0)
    {
      return;
    }

    v29 = a6;

    if (qword_10039D528 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000403C(v16, qword_1003A22B0);
    sub_1000094F4(a3, a4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    sub_100009548(a3, a4);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      static String.Encoding.utf8.getter();
      countAndFlagsBits = String.init(data:encoding:)();
      if (!object)
      {
        v23 = Data.hexString()();
        object = v23._object;
        countAndFlagsBits = v23._countAndFlagsBits;
      }

      v24 = sub_100008F6C(countAndFlagsBits, object, &v33);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "CoreDataWrapper: Insert data for key: %s", v19, 0xCu);
      sub_10000959C(v20);
    }

    type metadata accessor for Logging();
    v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:{a1, v29, v30}];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v25 setStoredKey:isa];

    v27 = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v25 setStoredValue:v27];

    [(objc_class *)v25 setWillBeRemovedAfterUpdate:*(a2 + OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_willBeRemovedAfterUpdate)];
  }

  else
  {
    objc_autoreleasePoolPop(v14);
    v28 = v33;
    v25 = Data._bridgeToObjectiveC()().super.isa;
    [v28 setStoredValue:v25];
  }

  sub_1000C65DC(a1);
}

void sub_1000C5774(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    __chkstk_darwin(a1);
    sub_1000C6270();
    return;
  }

  if (a1 != a1 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_100020A38(6001, 0, 0, 0);
  swift_willThrow();
}

void sub_1000C584C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for String.Encoding();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_1000C5E48(&v22, &v23);
  if (v4)
  {
    objc_autoreleasePoolPop(v10);
    _s3__C4CodeOMa_6(0);
    v23 = 6000;
    swift_errorRetain();
    sub_1000C6780();
    v11 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if (v11)
    {

      if (qword_10039D528 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000403C(v12, qword_1003A22B0);
      sub_1000094F4(a3, a4);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();
      sub_100009548(a3, a4);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136315138;
        static String.Encoding.utf8.getter();
        countAndFlagsBits = String.init(data:encoding:)();
        if (!object)
        {
          v19 = Data.hexString()();
          object = v19._object;
          countAndFlagsBits = v19._countAndFlagsBits;
        }

        v20 = sub_100008F6C(countAndFlagsBits, object, &v23);

        *(v15 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v13, v14, "CoreDataWrapper: key:\n%s does not exist, cannot delete", v15, 0xCu);
        sub_10000959C(v16);
      }
    }
  }

  else
  {
    objc_autoreleasePoolPop(v10);
    v21 = v23;
    [a1 deleteObject:v23];

    sub_1000C65DC(a1);
  }
}

void sub_1000C5AE4()
{
  sub_1000C6270();
  if (!v0)
  {
    if (qword_10039D528 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000403C(v1, qword_1003A22B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "CoreDataWrapper: deleted after update", v4, 2u);
    }
  }
}

void sub_1000C5BF0(void *a1)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithEntityName:v4];

  sub_10000411C(0, &qword_1003A0A80, NSPredicate_ptr);
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002C1660;
  v7 = [objc_allocWithZone(NSNumber) initWithBool:1];
  *(v6 + 56) = sub_10000411C(0, &qword_1003A2308, NSNumber_ptr);
  *(v6 + 64) = sub_1000C67D8(&qword_1003A2310, &qword_1003A2308, NSNumber_ptr);
  *(v6 + 32) = v7;
  v8 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v8];

  [v5 setReturnsObjectsAsFaults:1];
  type metadata accessor for Logging();
  v9 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    goto LABEL_12;
  }

  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_11:

    sub_1000C65DC(a1);
LABEL_12:

    return;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      [a1 deleteObject:v13];
    }

    goto LABEL_11;
  }

  __break(1u);
}

void sub_1000C5E48(uint64_t *a1@<X3>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithEntityName:v5];

  sub_10000411C(0, &qword_1003A0A80, NSPredicate_ptr);
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002C1660;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v7 + 56) = sub_10000411C(0, &qword_1003A2318, NSData_ptr);
  *(v7 + 64) = sub_1000C67D8(&qword_1003A2320, &qword_1003A2318, NSData_ptr);
  *(v7 + 32) = isa;
  v9 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v9];

  [v6 setFetchLimit:1];
  type metadata accessor for Logging();
  v10 = NSManagedObjectContext.fetch<A>(_:)();
  v11 = v2;
  if (v2)
  {
    goto LABEL_2;
  }

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    v11 = sub_100020A38(6000, 0, 0, 0);
    swift_willThrow();
LABEL_2:

    *a1 = v11;
    return;
  }

  v14 = v10;
  v15 = _CocoaArrayWrapper.endIndex.getter();
  v10 = v14;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_8:
    v13 = v12;

    *a2 = v13;
    return;
  }

  __break(1u);
}

void sub_1000C60D0()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_manager) + 16) persistentStoreCoordinator];
  v2 = [v1 persistentStores];

  sub_10000411C(0, &qword_1003A22A0, NSPersistentStore_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();

    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
LABEL_3:
      v5 = sub_1000C40AC();
      __chkstk_darwin(v5);
      NSManagedObjectContext.performAndWait<A>(_:)();

      return;
    }
  }

  sub_100020A38(6998, 0xD000000000000018, 0x800000010034BD80, 0);
  swift_willThrow();
}

void sub_1000C6270()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_manager) + 16) persistentStoreCoordinator];
  v2 = [v1 persistentStores];

  sub_10000411C(0, &qword_1003A22A0, NSPersistentStore_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();

    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
LABEL_3:
      v5 = sub_1000C40AC();
      __chkstk_darwin(v5);
      NSManagedObjectContext.performAndWait<A>(_:)();

      return;
    }
  }

  sub_100020A38(6998, 0xD000000000000018, 0x800000010034BD80, 0);
  swift_willThrow();
}

id sub_1000C6444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000C656C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v0[4] + OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_manager);
  v4 = sub_1000C40AC();
  v2();
}

void sub_1000C65DC(void *a1)
{
  if ([a1 hasChanges])
  {
    v8 = 0;
    if ([a1 save:&v8])
    {
      v2 = v8;
      [a1 reset];
    }

    else
    {
      v7 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_10039D528 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_1003A22B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "moc has not changed", v6, 2u);
    }
  }
}

unint64_t sub_1000C6780()
{
  result = qword_10039DB08;
  if (!qword_10039DB08)
  {
    _s3__C4CodeOMa_6(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039DB08);
  }

  return result;
}

uint64_t sub_1000C67D8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000411C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000C686C()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2328);
  sub_10000403C(v0, qword_1003A2328);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_1000C68C8()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1003A6BD8 = v5;
    unk_1003A6BE0 = v7;
  }

  return result;
}

uint64_t sub_1000C69E0@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v6 = v2[12];
  v7 = *(*sub_10000BE18(v2 + 2, v2[5]) + OBJC_IVAR____TtC14softposreaderd11Environment_isStorageTemporary);
  v8 = type metadata accessor for CoreDataWrapper();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_manager] = v6;
  v9[OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_isTransient] = v7;
  v9[OBJC_IVAR____TtC14softposreaderd15CoreDataWrapper_willBeRemovedAfterUpdate] = a1;
  v13.receiver = v9;
  v13.super_class = v8;

  v12[3] = v8;
  v12[4] = &off_100382F18;
  v12[0] = objc_msgSendSuper2(&v13, "init");
  v10 = v12[0];
  sub_1000C6AFC(v12);
  if (v3)
  {

    return sub_10000959C(v12);
  }

  else
  {
    result = sub_10000959C(v12);
    a2[3] = v8;
    a2[4] = &off_100382F18;
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1000C6AFC(void *a1)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000BE18((v1 + 56), *(v1 + 80));
  v10 = sub_100187828(*(*v9 + 16), *(*v9 + 24), *(*v9 + 32));
  v12 = v11;
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  (*(v5 + 8))(v8, v4);
  if (v15 >> 60 == 15)
  {
    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v40 = 0xD00000000000002CLL;
    v41 = 0x800000010034BE40;
    v16._countAndFlagsBits = v10;
    v16._object = v12;
    String.append(_:)(v16);

    sub_100020A38(6002, v40, v41, 0);
    return swift_willThrow();
  }

  v42 = v13;
  v19 = a1[3];
  v18 = a1[4];
  sub_10000BE18(a1, v19);
  if (qword_10039D538 != -1)
  {
    swift_once();
  }

  v20 = (*(v18 + 32))(qword_1003A6BD8, unk_1003A6BE0, v19, v18);
  if (v2)
  {
  }

  else
  {
    v27 = v20;
    v28 = v21;
    static String.Encoding.utf8.getter();
    v29 = String.init(data:encoding:)();
    if (v30)
    {
      if (v29 == v10 && v30 == v12)
      {
      }

      else
      {
        v39 = v28;
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          v34 = a1[3];
          v35 = a1[4];
          sub_10000BE18(a1, v34);
          (*(v35 + 64))(v34, v35);
          v36 = a1[3];
          v37 = a1[4];
          sub_10000BE18(a1, v36);
          (*(v37 + 40))(qword_1003A6BD8, unk_1003A6BE0, v42, v15, v36, v37);
        }

        v28 = v39;
      }

      sub_100009548(v27, v28);
      goto LABEL_20;
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v40 = 0xD00000000000002DLL;
    v41 = 0x800000010034BE70;
    v33 = Data.hexString()();
    String.append(_:)(v33);

    sub_100020A38(6002, v40, v41, 0);
    swift_willThrow();
    sub_100009548(v27, v28);
  }

  _s3__C4CodeOMa_6(0);
  v40 = 6000;
  swift_errorRetain();
  sub_1000C7D90(&qword_10039DB08, _s3__C4CodeOMa_6);
  v22 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if ((v22 & 1) == 0)
  {
LABEL_20:
    v26 = v42;
    return sub_10001A074(v26, v15);
  }

  v23 = a1[3];
  v24 = a1[4];
  sub_10000BE18(a1, v23);
  v25 = v42;
  (*(v24 + 40))(qword_1003A6BD8, unk_1003A6BE0, v42, v15, v23, v24);
  v26 = v25;
  return sub_10001A074(v26, v15);
}

uint64_t sub_1000C6FB4()
{
  sub_10000959C(v0 + 2);
  sub_10000959C(v0 + 7);
  v1 = v0[12];

  return swift_deallocClassInstance();
}

void *sub_1000C7044(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v71 = a3;
  v6 = *a4;
  v69 = a4;
  v68 = type metadata accessor for URLResourceValues();
  v7 = *(v68 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v68);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = __chkstk_darwin(v11);
  v66 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v61 - v16;
  v76 = type metadata accessor for Environment();
  v77 = sub_1000C7D90(&qword_1003A1B28, type metadata accessor for Environment);
  v75[0] = a1;
  v74[3] = type metadata accessor for SystemInfo();
  v74[4] = &off_100386330;
  v74[0] = a2;
  if (qword_10039D530 != -1)
  {
    swift_once();
  }

  v67 = v12;
  v18 = type metadata accessor for Logger();
  v70 = sub_10000403C(v18, qword_1003A2328);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = _typeName(_:qualified:)();
    v24 = v10;
    v25 = v7;
    v26 = sub_100008F6C(v22, v23, &v73);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = showFunction(signature:_:)(0xD00000000000002DLL, 0x800000010034BEA0, _swiftEmptyArrayStorage);
    v29 = sub_100008F6C(v27, v28, &v73);
    v7 = v25;
    v10 = v24;

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s.%s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v30 = v69;
  sub_10000CCE4(v75, (v69 + 2));
  sub_10000CCE4(v74, (v30 + 7));
  v30[12] = v71;
  v31 = objc_opt_self();

  v32 = [v31 defaultManager];
  v33 = sub_10000BE18(v75, v76);
  v34 = v67;
  v35 = *v33 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL;
  v65 = *(v67 + 2);
  v65(v17, v35, v11);
  URL._bridgeToObjectiveC()(v36);
  v38 = v37;
  v39 = *(v34 + 1);
  v39(v17, v11);
  v73 = 0;
  v40 = [v32 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:&v73];

  if (v40)
  {
    v41 = v73;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Storage folder created", v44, 2u);
    }

    v45 = v66;
  }

  else
  {
    v67 = v39;
    v46 = v73;
    v47 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v63 = v50;
      v64 = swift_slowAlloc();
      v73 = v64;
      *v50 = 136315138;
      v72 = v47;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v51 = String.init<A>(describing:)();
      v62 = v48;
      v53 = sub_100008F6C(v51, v52, &v73);

      v54 = v63;
      *(v63 + 1) = v53;
      v55 = v62;
      _os_log_impl(&_mh_execute_header, v62, v49, "Unable to create storage folder: %s", v54, 0xCu);
      sub_10000959C(v64);
    }

    else
    {
    }

    v45 = v66;
    v39 = v67;
  }

  URLResourceValues.init()();
  URLResourceValues.isExcludedFromBackup.setter();
  v56 = sub_10000BE18(v75, v76);
  v65(v45, *v56 + OBJC_IVAR____TtC14softposreaderd11Environment_storageURL, v11);
  URL.setResourceValues(_:)();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Storage folder excluded from backup", v59, 2u);
  }

  v39(v45, v11);
  (*(v7 + 8))(v10, v68);
  sub_10000959C(v74);
  sub_10000959C(v75);
  return v69;
}

void *sub_1000C7968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Environment();
  v24[3] = v6;
  v24[4] = sub_1000C7D90(&qword_1003A1B28, type metadata accessor for Environment);
  v24[0] = a1;
  v22 = type metadata accessor for SystemInfo();
  v23 = &off_100386330;
  v21[0] = a2;
  type metadata accessor for PersistenceFactory();
  v7 = swift_allocObject();
  v8 = sub_100022438(v24, v6);
  v9 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = v22;
  v14 = sub_100022438(v21, v22);
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_1000C7044(*v11, *v17, a3, v7);
  sub_10000959C(v21);
  sub_10000959C(v24);
  return v19;
}

void *sub_1000C7B78()
{
  sub_1000E3850(v19);
  if (v0)
  {
  }

  else
  {
    sub_1000E90C8(v17);
    sub_1000ED614();
    v4 = v3;
    v5 = v20;
    v6 = sub_100022438(v19, v20);
    v7 = *(*(v5 - 8) + 64);
    __chkstk_darwin(v6);
    v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = v18;
    v12 = sub_100022438(v17, v18);
    v13 = *(*(v11 - 8) + 64);
    __chkstk_darwin(v12);
    v15 = (v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v1 = sub_1000C7968(*v9, *v15, v4);

    sub_10000959C(v17);
    sub_10000959C(v19);
  }

  return v1;
}

uint64_t sub_1000C7D90(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1000C7E30@<X0>(void *a1@<X8>)
{
  v2 = sub_100183AC8(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for VolatilePersisting();
  result = swift_allocObject();
  result[2] = 0x676E6967676F4CLL;
  result[3] = 0xE700000000000000;
  result[4] = v2;
  a1[3] = v3;
  a1[4] = &off_100382F98;
  *a1 = result;
  return result;
}

uint64_t sub_1000C7ED0()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A24D0);
  sub_10000403C(v0, qword_1003A24D0);
  sub_100023B24();
  return static SPRLogger.common.getter();
}

uint64_t sub_1000C7F2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_1000F5CE0(a1, a2);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    sub_100020A38(6000, 0xD00000000000002CLL, 0x800000010034BF50, 0);
    swift_willThrow();
    return a2;
  }

  v8 = *(v5 + 56) + 16 * v6;
  a2 = *v8;
  sub_1000094F4(*v8, *(v8 + 8));

  return a2;
}

void sub_1000C8004(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_10017ACA8(a1, a2, &v8);
  swift_endAccess();
  if (*(&v8 + 1) >> 60 == 15)
  {
    if (qword_10039D540 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000403C(v4, qword_1003A24D0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "VolatilePersisting.delete: key not present", v7, 2u);
    }
  }

  else
  {
    sub_10001A074(v8, *(&v8 + 1));
  }
}

uint64_t sub_1000C8140()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C81C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *v4;
  swift_beginAccess();
  sub_1000094F4(a1, a2);
  sub_1000094F4(a3, a4);
  v10 = *(v9 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v9 + 32);
  *(v9 + 32) = 0x8000000000000000;
  sub_10017FF00(a3, a4, a1, a2, isUniquelyReferenced_nonNull_native);
  sub_100009548(a1, a2);
  *(v9 + 32) = v13;
  return swift_endAccess();
}

uint64_t sub_1000C82C0(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 == 2)
  {
    v7 = *(result + 16);
    v6 = *(result + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_9:
      sub_1000094F4(result, a2);
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    v5 = WORD2(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    goto LABEL_9;
  }

  v5 = 0;
LABEL_11:
  v60 = 62848;
  v61 = v5;
  v62 = v3;
  v63 = a2;
  v64 = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000403C(v8, qword_1003A1240);
  sub_10000BC94(&v60, v59);
  v70 = v9;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v60);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v59[0] = v13;
    *v12 = 136315138;
    v14 = sub_100170F04(v60 | (v61 << 32), v62, v63, v64);
    v16 = v15;
    v17 = Data.hexString()();
    sub_100009548(v14, v16);
    v18 = sub_100008F6C(v17._countAndFlagsBits, v17._object, v59);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "C-APDU (INIT PIN): %s", v12, 0xCu);
    sub_10000959C(v13);
  }

  sub_10009FAC0(v60 | (v61 << 32), v62, v63, v64, 1, &v65);
  v19 = v66;
  if (v66 >> 60 == 15)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "no response from INIT PIN", v22, 2u);
    }

    sub_100021328(12004, 0, 0, 0);
    swift_willThrow();
    return sub_10000BCF0(&v60);
  }

  v24 = v68;
  v23 = v69;
  v25 = v65;
  v26 = v67;
  sub_1000094F4(v65, v66);
  sub_1000094F4(v24, v23);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  sub_10000BD44(&v65, &qword_10039E2C0, &unk_1002BFEB0);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v58 = v28;
    v30 = swift_slowAlloc();
    v59[0] = v30;
    *v29 = 136315138;
    v31 = Data.hexString()();
    v32 = v23;
    v33 = v19;
    v34 = v24;
    v35 = v26;
    v36 = sub_100008F6C(v31._countAndFlagsBits, v31._object, v59);

    *(v29 + 4) = v36;
    v26 = v35;
    v24 = v34;
    v19 = v33;
    v23 = v32;
    _os_log_impl(&_mh_execute_header, v27, v58, "R-APDU: %s", v29, 0xCu);
    sub_10000959C(v30);
  }

  sub_10001A3FC();
  swift_allocError();
  *v37 = v26;
  v38 = sub_100171840(36864);

  if ((v38 & 1) == 0)
  {
    swift_allocError();
    *v42 = v26;
    v43 = sub_100171840(27012);

    if (v43)
    {
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "transaction id mismatch", v46, 2u);
LABEL_34:
      }
    }

    else
    {
      swift_allocError();
      *v47 = v26;
      v48 = sub_100171840(27013);

      if (v48)
      {
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "missing reader config or PAN", v51, 2u);
        }

        v52 = 12003;
        goto LABEL_36;
      }

      sub_1000094F4(v25, v19);
      sub_1000094F4(v24, v23);
      v44 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      sub_10000BD44(&v65, &qword_10039E2C0, &unk_1002BFEB0);
      if (os_log_type_enabled(v44, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        swift_allocError();
        *v56 = v26;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&_mh_execute_header, v44, v53, "unexpected sw: %@", v54, 0xCu);
        sub_10000BD44(v55, &unk_10039E220, &qword_1002C3D60);

        goto LABEL_34;
      }
    }

    v52 = 12004;
LABEL_36:
    sub_100021328(v52, 0, 0, 0);
    swift_willThrow();
    sub_10000BCF0(&v60);
    return sub_10000BD44(&v65, &qword_10039E2C0, &unk_1002BFEB0);
  }

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "transaction id matched", v41, 2u);
  }

  sub_10000BCF0(&v60);

  return sub_10000BD44(&v65, &qword_10039E2C0, &unk_1002BFEB0);
}

uint64_t sub_1000C8A64(uint64_t a1, unint64_t a2)
{
  if (qword_10039D3F8 != -1)
  {
    swift_once();
  }

  v4 = qword_1003A6B00;
  v5 = *algn_1003A6B08;
  v74 = qword_1003A6B00;
  v75 = *algn_1003A6B08;
  v72 = &type metadata for Data;
  v73 = &protocol witness table for Data;
  v69 = a1;
  v70 = a2;
  v6 = sub_10000BE18(&v69, &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_1000094F4(v4, v5);
  sub_1000094F4(a1, a2);
  sub_1000A1C34(v7, v8);
  sub_10000959C(&v69);
  v9 = v74;
  v10 = v75;
  v11 = v75 >> 62;
  if ((v75 >> 62) > 1)
  {
    if (v11 != 2)
    {
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

    v14 = *(v74 + 16);
    v13 = *(v74 + 24);
    v15 = __OFSUB__(v13, v14);
    v12 = v13 - v14;
    if (!v15)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(v75);
    goto LABEL_14;
  }

  v12 = WORD2(v9) - v9;
  if (__OFSUB__(HIDWORD(v9), v9))
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  LODWORD(v69) = 61824;
  WORD2(v69) = v12;
  v70 = v9;
  v71 = v10;
  LOWORD(v72) = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000403C(v16, qword_1003A1240);
  sub_10000BC94(&v69, v68);
  v81 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v69);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v68[0] = v21;
    *v20 = 136315138;
    v22 = sub_100170F04(v69 | (WORD2(v69) << 32), v70, v71, v72);
    v24 = v23;
    v25 = Data.hexString()();
    sub_100009548(v22, v24);
    v26 = sub_100008F6C(v25._countAndFlagsBits, v25._object, v68);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "C-APDU (ADD PIN DIGIT): %s", v20, 0xCu);
    sub_10000959C(v21);
  }

  sub_10009FAC0(v69 | (WORD2(v69) << 32), v70, v71, v72, 1, &v76);
  v27 = v77;
  if (v77 >> 60 == 15)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "no response from applet", v30, 2u);
    }

    sub_100021328(12004, 0, 0, 0);
    swift_willThrow();
    return sub_10000BCF0(&v69);
  }

  v33 = v79;
  v32 = v80;
  v34 = v76;
  v35 = v78;
  sub_1000094F4(v76, v77);
  sub_1000094F4(v33, v32);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  sub_10000BD44(&v76, &qword_10039E2C0, &unk_1002BFEB0);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v67 = v37;
    v39 = swift_slowAlloc();
    v68[0] = v39;
    *v38 = 136315138;
    v40 = Data.hexString()();
    v41 = v32;
    v42 = v27;
    v43 = v33;
    v44 = v35;
    v45 = sub_100008F6C(v40._countAndFlagsBits, v40._object, v68);

    *(v38 + 4) = v45;
    v35 = v44;
    v33 = v43;
    v27 = v42;
    v32 = v41;
    _os_log_impl(&_mh_execute_header, v36, v67, "R-APDU: %s", v38, 0xCu);
    sub_10000959C(v39);
  }

  sub_10001A3FC();
  swift_allocError();
  *v46 = v35;
  v47 = sub_100171840(36864);

  if ((v47 & 1) == 0)
  {
    swift_allocError();
    *v51 = v35;
    v52 = sub_100171840(26368);

    if (v52)
    {
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "PIN length exceeded", v55, 2u);
      }

      v56 = 12006;
      goto LABEL_39;
    }

    swift_allocError();
    *v57 = v35;
    v58 = sub_100171840(27013);

    if (v58)
    {
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "ADD PIN DIGIT failed", v61, 2u);
LABEL_37:
      }
    }

    else
    {
      sub_1000094F4(v34, v27);
      sub_1000094F4(v33, v32);
      v59 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      sub_10000BD44(&v76, &qword_10039E2C0, &unk_1002BFEB0);
      if (os_log_type_enabled(v59, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        swift_allocError();
        *v65 = v35;
        v66 = _swift_stdlib_bridgeErrorToNSError();
        *(v63 + 4) = v66;
        *v64 = v66;
        _os_log_impl(&_mh_execute_header, v59, v62, "Unexpected status word: %@", v63, 0xCu);
        sub_10000BD44(v64, &unk_10039E220, &qword_1002C3D60);

        goto LABEL_37;
      }
    }

    v56 = 12004;
LABEL_39:
    sub_100021328(v56, 0, 0, 0);
    swift_willThrow();
    sub_10000BCF0(&v69);
    return sub_10000BD44(&v76, &qword_10039E2C0, &unk_1002BFEB0);
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "pin digit added", v50, 2u);
  }

  sub_10000BCF0(&v69);

  return sub_10000BD44(&v76, &qword_10039E2C0, &unk_1002BFEB0);
}

uint64_t sub_1000C929C()
{
  v52 = 62080;
  v53 = 0;
  v54 = xmmword_1002BDC30;
  v55 = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A1240);
  sub_10000BC94(&v52, v46);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v52);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v46[0] = v56;
    *v3 = 136315138;
    v4 = sub_100170F04(v52 | (v53 << 32), v54, *(&v54 + 1), v55);
    v6 = v5;
    v7 = Data.hexString()();
    sub_100009548(v4, v6);
    v8 = sub_100008F6C(v7._countAndFlagsBits, v7._object, v46);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "C-APDU (REMOVE PIN DIGIT): %s", v3, 0xCu);
    sub_10000959C(v56);
  }

  sub_10009FAC0(v52 | (v53 << 32), v54, *(&v54 + 1), v55, 1, &v47);
  v9 = v48;
  if (v48 >> 60 == 15)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "no response from applet", v12, 2u);
    }

    sub_100021328(12004, 0, 0, 0);
    swift_willThrow();
    return sub_10000BCF0(&v52);
  }

  v14 = v50;
  v15 = v51;
  v16 = v47;
  v56 = v49;
  sub_1000094F4(v47, v48);
  v45 = v14;
  sub_1000094F4(v14, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  sub_10000BD44(&v47, &qword_10039E2C0, &unk_1002BFEB0);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46[0] = v20;
    *v19 = 136315138;
    v21 = Data.hexString()();
    v22 = v15;
    v23 = sub_100008F6C(v21._countAndFlagsBits, v21._object, v46);

    *(v19 + 4) = v23;
    v15 = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "R-APDU: %s", v19, 0xCu);
    sub_10000959C(v20);
  }

  sub_10001A3FC();
  swift_allocError();
  *v24 = v56;
  v25 = sub_100171840(36864);

  if ((v25 & 1) == 0)
  {
    swift_allocError();
    *v29 = v56;
    v30 = sub_100171840(26368);

    if (v30)
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Empty buffer", v33, 2u);
      }

      v34 = 12007;
      goto LABEL_26;
    }

    swift_allocError();
    *v35 = v56;
    v36 = sub_100171840(27013);

    if (v36)
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "PIN remove failed", v39, 2u);
LABEL_24:
      }
    }

    else
    {
      sub_1000094F4(v16, v9);
      sub_1000094F4(v45, v15);
      v37 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      sub_10000BD44(&v47, &qword_10039E2C0, &unk_1002BFEB0);
      if (os_log_type_enabled(v37, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        swift_allocError();
        *v43 = v56;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&_mh_execute_header, v37, v40, "Unexpected status word: %@", v41, 0xCu);
        sub_10000BD44(v42, &unk_10039E220, &qword_1002C3D60);

        goto LABEL_24;
      }
    }

    v34 = 12004;
LABEL_26:
    sub_100021328(v34, 0, 0, 0);
    swift_willThrow();
    sub_10000BCF0(&v52);
    return sub_10000BD44(&v47, &qword_10039E2C0, &unk_1002BFEB0);
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "removed last digit", v28, 2u);
  }

  sub_10000BCF0(&v52);

  return sub_10000BD44(&v47, &qword_10039E2C0, &unk_1002BFEB0);
}

void *sub_1000C99F0()
{
  v76 = 62336;
  v77 = 0;
  v78 = xmmword_1002BDC30;
  v79 = 0;
  if (qword_10039D4B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A1240);
  sub_10000BC94(&v76, v70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v76);
  v4 = os_log_type_enabled(v2, v3);
  v80 = v0;
  if (v4)
  {
    v5 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v70[0] = v68;
    *v5 = 136315138;
    v6 = sub_100170F04(v76 | (v77 << 32), v78, *(&v78 + 1), v79);
    v8 = v7;
    v9 = Data.hexString()();
    sub_100009548(v6, v8);
    v10 = sub_100008F6C(v9._countAndFlagsBits, v9._object, v70);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "C-APDU (GENERATE PIN BLOB): %s", v5, 0xCu);
    sub_10000959C(v68);
  }

  sub_10009FAC0(v76 | (v77 << 32), v78, *(&v78 + 1), v79, 1, &v71);
  v11 = v72;
  if (v72 >> 60 == 15)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "No response or error from GENERATE PIN BLOB command", v14, 2u);
    }

    sub_100021328(12004, 0, 0, 0);
    swift_willThrow();
    sub_10000BCF0(&v76);
    return v3;
  }

  v15 = v74;
  v16 = v75;
  v3 = v71;
  v17 = v73;
  sub_1000094F4(v71, v72);
  sub_1000094F4(v15, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  sub_10000BD44(&v71, &qword_10039E2C0, &unk_1002BFEB0);
  v69 = v16;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v67 = v19;
    v21 = swift_slowAlloc();
    v70[0] = v21;
    *v20 = 136315138;
    v22 = Data.description.getter();
    v24 = v15;
    v25 = v11;
    v26 = v3;
    v27 = v17;
    v28 = sub_100008F6C(v22, v23, v70);

    *(v20 + 4) = v28;
    v17 = v27;
    v3 = v26;
    v11 = v25;
    v15 = v24;
    _os_log_impl(&_mh_execute_header, v18, v67, "R-APDU: %s", v20, 0xCu);
    sub_10000959C(v21);
  }

  sub_10001A3FC();
  swift_allocError();
  *v29 = v17;
  v30 = sub_100171840(36864);

  if ((v30 & 1) == 0)
  {
    swift_allocError();
    *v41 = v17;
    v42 = sub_100171840(26368);

    if (v42)
    {
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Empty Buffer", v45, 2u);
      }

      v46 = 12007;
      goto LABEL_46;
    }

    swift_allocError();
    *v47 = v17;
    v48 = sub_100171840(27272);

    if (v48)
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "PAN not found";
LABEL_33:
        _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);

        goto LABEL_34;
      }

      goto LABEL_34;
    }

    swift_allocError();
    *v53 = v17;
    v54 = sub_100171840(27266);

    if (v54)
    {
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "PIN KEK hash not found";
        goto LABEL_33;
      }

LABEL_34:

      v46 = 12003;
LABEL_46:
      sub_100021328(v46, 0, 0, 0);
      swift_willThrow();
      sub_10000BCF0(&v76);
      sub_10000BD44(&v71, &qword_10039E2C0, &unk_1002BFEB0);
      return v3;
    }

    swift_allocError();
    *v55 = v17;
    v56 = sub_100171840(27013);

    if (v56)
    {
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        v60 = "Generation failed";
LABEL_41:
        _os_log_impl(&_mh_execute_header, v57, v58, v60, v59, 2u);
LABEL_44:
      }
    }

    else
    {
      swift_allocError();
      *v61 = v17;
      v62 = sub_100171840(27010);

      if (v62)
      {
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          v60 = "Security condition not satisfied";
          goto LABEL_41;
        }
      }

      else
      {
        sub_1000094F4(v3, v11);
        sub_1000094F4(v15, v69);
        v57 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();
        sub_10000BD44(&v71, &qword_10039E2C0, &unk_1002BFEB0);
        if (os_log_type_enabled(v57, v63))
        {
          v64 = swift_slowAlloc();
          v3 = swift_slowAlloc();
          *v64 = 138412290;
          swift_allocError();
          *v65 = v17;
          v66 = _swift_stdlib_bridgeErrorToNSError();
          *(v64 + 4) = v66;
          *v3 = v66;
          _os_log_impl(&_mh_execute_header, v57, v63, "Unexpected status word: %@", v64, 0xCu);
          sub_10000BD44(v3, &unk_10039E220, &qword_1002C3D60);

          goto LABEL_44;
        }
      }
    }

    v46 = 12004;
    goto LABEL_46;
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Received PIN Blobs from applet", v33, 2u);
  }

  if (qword_10039D708 != -1)
  {
    swift_once();
  }

  v34 = static GlobalState.shared;
  result = [*(static GlobalState.shared + 88) lock];
  v36 = *(v34 + 104);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v34 + 104) = v38;
    while (*(v34 + 96) > 0 || *(v34 + 112) == 1)
    {
      result = [*(v34 + 88) wait];
    }

    v39 = *(v34 + 104);
    v37 = __OFSUB__(v39, 1);
    v40 = v39 - 1;
    if (!v37)
    {
      *(v34 + 104) = v40;
      *(v34 + 112) = 1;
      [*(v34 + 88) unlock];
      *(v34 + 57) = 0;
      sub_100173040();
      [*(v34 + 88) lock];
      *(v34 + 112) = 0;
      [*(v34 + 88) broadcast];
      [*(v34 + 88) unlock];
      sub_10000BCF0(&v76);
      sub_1000094F4(v3, v11);
      sub_10000BD44(&v71, &qword_10039E2C0, &unk_1002BFEB0);
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CA408()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2600);
  sub_10000403C(v0, qword_1003A2600);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.pinAppletProxy.getter();
}

id sub_1000CA474()
{
  v1 = *&v0[OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession];
  if (v1)
  {
    v2 = v1;
    if ([v2 isActive])
    {
      v3 = v0;
      if (qword_10039D548 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000403C(v4, qword_1003A2600);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Clear PAN in deinit (timeout/crash)", v7, 2u);
      }

      sub_100003ABC();
      v11[4] = sub_1000CA638;
      v11[5] = 0;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_100003974;
      v11[3] = &unk_1003830F0;
      v8 = _Block_copy(v11);
      [v2 endSessionWithCompletion:v8];
      _Block_release(v8);

      v0 = v3;
    }

    else
    {
    }
  }

  v9 = type metadata accessor for DefaultPINAppletProxy();
  v12.receiver = v0;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "dealloc");
}

id sub_1000CA6F0(uint64_t a1, unint64_t a2)
{
  v49 = a2;
  v3 = v2;
  v48 = a1;
  swift_getObjectType();
  v4 = sub_100004074(&qword_1003A0178, &unk_1002C3BB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v47 - v6;
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v51 = sub_10000403C(v8, qword_1003A2600);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100008F6C(v12, v13, aBlock);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = showFunction(signature:_:)(0xD000000000000022, 0x800000010034C250, _swiftEmptyArrayStorage);
    v17 = sub_100008F6C(v15, v16, aBlock);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s.%s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *sub_10000BE18((v3 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_monitorManager), *(v3 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_monitorManager + 24));
  v19 = type metadata accessor for UUID();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  LOBYTE(v18) = sub_1000B100C(v7, 0.0);
  sub_10000BD44(v7, &qword_1003A0178, &unk_1002C3BB0);
  if ((v18 & 1) == 0)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Not attested", v25, 2u);
    }

    v26 = 0xD000000000000030;
    v27 = 0x800000010034C1D0;
    v28 = 12008;
    goto LABEL_15;
  }

  v20 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v21 = *(v3 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (v21)
  {
    [v21 endSession];
    v22 = *(v3 + v20);
  }

  else
  {
    v22 = 0;
  }

  *(v3 + v20) = 0;

  *(v3 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength) = 0;
  result = [*(*sub_10000BE18((v3 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_secureElement) *(v3 + OBJC:"ecdsaCertificate" IVAR:? :? :? :? TtC14softposreaderd21DefaultPINAppletProxy:?secureElement + 24)) + 24)];
  if (result)
  {
    v24 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = Data.init(hexString:)();
    if (v31 >> 60 != 15)
    {
      v32 = v30;
      v33 = v31;
      v34 = [objc_opt_self() sharedHardwareManager];
      aBlock[0] = 0;
      v35 = [v34 startSecureElementManagerSessionAndReturnError:aBlock];

      if (v35)
      {
        v36 = qword_10039D3D0;
        v37 = aBlock[0];
        v38 = v35;
        if (v36 != -1)
        {
          swift_once();
        }

        v39 = v50;
        NFSecureElementManagerSession.select(_:)(AID_PIN_APPLET, *algn_1003A6AB8);
        if (v39)
        {

          swift_errorRetain();
          v40 = Logger.logObject.getter();
          v24 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v40, v24))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 138412290;
            swift_errorRetain();
            v43 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v43;
            *v42 = v43;
            _os_log_impl(&_mh_execute_header, v40, v24, "Failed to select PIN applet %@", v41, 0xCu);
            sub_10000BD44(v42, &unk_10039E220, &qword_1002C3D60);
          }

          sub_100021328(12002, 0, 0, 0);
          swift_willThrow();

          aBlock[4] = sub_1000CAE90;
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100003974;
          aBlock[3] = &unk_1003830C8;
          v45 = _Block_copy(aBlock);
          [v38 endSessionWithCompletion:v45];
          _Block_release(v45);
          swift_willThrow();
          sub_10001A074(v32, v33);
        }

        else
        {

          sub_1000C82C0(v48, v49);
          if (qword_10039D3F0 != -1)
          {
            swift_once();
          }

          v24 = sub_100123DC4(1, qword_1003A6AF0, *algn_1003A6AF8);
          [v38 setDelegate:v3];
          v46 = *(v3 + v20);
          *(v3 + v20) = v35;
        }
      }

      else
      {
        v44 = aBlock[0];
        v24 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100021328(12001, 0xD00000000000001ELL, 0x800000010034C230, 0);
        swift_willThrow();
        sub_10001A074(v32, v33);
      }

      return v24;
    }

    v27 = 0x800000010034C210;
    v28 = 12003;
    v26 = 0xD000000000000016;
LABEL_15:
    sub_100021328(v28, v26, v27, 0);
    swift_willThrow();
    return v24;
  }

  __break(1u);
  return result;
}

void sub_1000CAEB0(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  swift_getObjectType();
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  aBlock[7] = sub_10000403C(v7, qword_1003A2600);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100008F6C(v11, v12, aBlock);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C1B0, _swiftEmptyArrayStorage);
    v16 = sub_100008F6C(v14, v15, aBlock);

    *(v10 + 14) = v16;
    v4 = v3;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s.%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v17 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength;
  if (*(v2 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength) >= *(v2 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_maxPinLength))
  {
    v24 = 0xD000000000000013;
    v25 = 0x800000010034C130;
    v26 = 12006;
LABEL_15:
    sub_100021328(v26, v24, v25, 0);
    swift_willThrow();
    return;
  }

  v18 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v19 = *(v2 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (!v19)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "no session", v29, 2u);
    }

    v24 = 0xD000000000000025;
    v25 = 0x800000010034C0A0;
    v26 = 12010;
    goto LABEL_15;
  }

  v20 = v19;
  if ([v20 isActive])
  {
    sub_1000C8A64(a1, a2);

    if (!v4)
    {
      v21 = *(v2 + v17);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        *(v2 + v17) = v23;
      }
    }
  }

  else
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "session not active", v32, 2u);
    }

    aBlock[4] = sub_1000CD06C;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_1003830A0;
    v33 = _Block_copy(aBlock);
    [v20 endSessionWithCompletion:v33];
    _Block_release(v33);
    v34 = *(v5 + v18);
    *(v5 + v18) = 0;

    sub_100021328(12010, 0xD000000000000028, 0x800000010034C0D0, 0);
    swift_willThrow();
  }
}

void sub_1000CB310()
{
  v2 = v0;
  swift_getObjectType();
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A2600);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, v27);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C190, _swiftEmptyArrayStorage);
    v12 = sub_100008F6C(v10, v11, v27);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v14 = *(v0 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (v14)
  {
    v15 = v14;
    if ([v15 isActive])
    {
      sub_1000C929C();

      if (!v1)
      {
        v16 = *(v0 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength);
        v17 = v16 < 1;
        v18 = v16 - 1;
        if (!v17)
        {
          *(v0 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength) = v18;
        }
      }
    }

    else
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "session not active", v24, 2u);
      }

      v27[4] = sub_1000CD06C;
      v27[5] = 0;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 1107296256;
      v27[2] = sub_100003974;
      v27[3] = &unk_100383078;
      v25 = _Block_copy(v27);
      [v15 endSessionWithCompletion:v25];
      _Block_release(v25);
      v26 = *(v2 + v13);
      *(v2 + v13) = 0;

      sub_100021328(12010, 0xD000000000000028, 0x800000010034C0D0, 0);
      swift_willThrow();
    }
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "no session", v21, 2u);
    }

    sub_100021328(12010, 0xD000000000000025, 0x800000010034C0A0, 0);
    swift_willThrow();
  }
}

void sub_1000CB724(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v141 = a1;
  swift_getObjectType();
  v142 = type metadata accessor for TLVTag();
  v140 = *(v142 - 1);
  v5 = *(v140 + 64);
  __chkstk_darwin(v142);
  v136 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v130 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v132 = &v117 - v12;
  v13 = __chkstk_darwin(v11);
  v133 = &v117 - v14;
  __chkstk_darwin(v13);
  v135 = &v117 - v15;
  v139 = type metadata accessor for TLV();
  v16 = *(v139 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v139);
  v129 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v131 = &v117 - v21;
  v22 = __chkstk_darwin(v20);
  v134 = &v117 - v23;
  __chkstk_darwin(v22);
  v25 = &v117 - v24;
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_10000403C(v26, qword_1003A2600);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v137 = v25;
  v138 = v16;
  if (v30)
  {
    v31 = v27;
    v32 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = _typeName(_:qualified:)();
    v35 = v4;
    v36 = sub_100008F6C(v33, v34, &v144);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034C170, _swiftEmptyArrayStorage);
    v39 = sub_100008F6C(v37, v38, &v144);

    *(v32 + 14) = v39;
    v4 = v35;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v28, v29, "%s.%s", v32, 0x16u);
    swift_arrayDestroy();

    v27 = v31;
  }

  v40 = v142;
  if (qword_10039D728 != -1)
  {
    swift_once();
  }

  if ([qword_1003A6EA0 canEvaluatePolicy:2 error:0])
  {
    v41 = *(v4 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
    if (v41)
    {
      v42 = v41;
      if (![v42 isActive])
      {
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "session not active", v61, 2u);
        }

        sub_100021328(12010, 0xD000000000000028, 0x800000010034C0D0, 0);
        goto LABEL_37;
      }

      v43 = *(v4 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength);
      if (v43)
      {
        if (v43 < *(v4 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_minPinLength))
        {
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v44, v45, "not enough pin digits", v46, 2u);
          }

          v47 = 0x800000010034C150;
          v48 = 12009;
          v49 = 0xD000000000000012;
LABEL_33:
          v3 = sub_100021328(v48, v49, v47, 0);
          swift_willThrow();
LABEL_34:
          swift_errorRetain();
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v144 = v78;
            *v77 = 136315138;
            v143 = v3;
            swift_errorRetain();
            sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
            v79 = String.init<A>(describing:)();
            v81 = sub_100008F6C(v79, v80, &v144);

            *(v77 + 4) = v81;
            _os_log_impl(&_mh_execute_header, v75, v76, "%s", v77, 0xCu);
            sub_10000959C(v78);
          }

LABEL_37:
          swift_willThrow();

          goto LABEL_38;
        }

        if (*(v4 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_maxPinLength) < v43)
        {
          v72 = Logger.logObject.getter();
          v73 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&_mh_execute_header, v72, v73, "pin length exceeded", v74, 2u);
          }

          v49 = 0xD000000000000013;
          v47 = 0x800000010034C130;
          v48 = 12006;
          goto LABEL_33;
        }

        v82 = sub_1000C99F0();
        if (v3)
        {
          goto LABEL_34;
        }

        v84 = v82;
        v85 = v83;
        v86 = static TLV.decode(from:)();
        v124 = v84;
        v125 = v4;
        v127 = v85;
        v128 = v27;
        v126 = v86;
        v144 = v86;
        v87 = v136;
        static TLVTag.cipherBlob.getter();
        v88 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
        v89 = sub_1000CCFF4();
        v90 = v135;
        v120 = v88;
        v119 = v89;
        Collection<>.first(tag:)();
        v123 = *(v140 + 8);
        v140 += 8;
        v123(v87, v40);
        v92 = v138;
        v91 = v139;
        v93 = *(v138 + 48);
        v122 = v138 + 48;
        v121 = v93;
        if (v93(v90, 1, v139) == 1)
        {

          v4 = v125;
          v94 = v90;
LABEL_49:
          sub_10000BD44(v94, &unk_10039E210, &unk_1002C65B0);
          v105 = v124;
          v106 = v127;
          sub_1000094F4(v124, v127);
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.error.getter();
          sub_100009548(v105, v106);
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v144 = v110;
            *v109 = 136315138;
            v111 = Data.hexString()();
            v112 = v42;
            v113 = sub_100008F6C(v111._countAndFlagsBits, v111._object, &v144);
            v106 = v127;

            *(v109 + 4) = v113;
            v42 = v112;
            _os_log_impl(&_mh_execute_header, v107, v108, "Error parsing PIN applet response: %s", v109, 0xCu);
            sub_10000959C(v110);
          }

          v3 = sub_100021328(12003, 0xD000000000000021, 0x800000010034C100, 0);
          swift_willThrow();
          sub_100009548(v105, v106);
          goto LABEL_34;
        }

        v95 = *(v92 + 32);
        v135 = (v92 + 32);
        v118 = v95;
        v95(v137, v90, v91);
        static TLVTag.blobDefinition.getter();
        v96 = v133;
        TLV.firstChild(tag:)();
        v97 = v139;
        v123(v87, v142);
        if (v121(v96, 1, v97) == 1)
        {
          (*(v92 + 8))(v137, v97);

          v94 = v96;
          v4 = v125;
          goto LABEL_49;
        }

        v118(v134, v96, v97);
        v144 = v126;
        static TLVTag.keyBlob.getter();
        v98 = v132;
        Collection<>.first(tag:)();
        v99 = v139;
        v123(v87, v142);

        if (v121(v98, 1, v99) == 1)
        {
          v100 = *(v92 + 8);
          v100(v134, v99);
          v100(v137, v99);
          v94 = v98;
LABEL_48:
          v4 = v125;
          goto LABEL_49;
        }

        v101 = v131;
        v118(v131, v98, v99);
        static TLVTag.blobDefinition.getter();
        v102 = v130;
        TLV.firstChild(tag:)();
        v103 = v139;
        v123(v87, v142);
        if (v121(v102, 1, v103) == 1)
        {
          v104 = *(v92 + 8);
          v104(v101, v103);
          v104(v134, v103);
          v104(v137, v103);
          v94 = v102;
          goto LABEL_48;
        }

        v118(v129, v102, v103);
        if (qword_10039D3F0 != -1)
        {
          swift_once();
        }

        v67 = sub_100123DC4(2, qword_1003A6AF0, *algn_1003A6AF8);
        v70 = v114;
        v65 = TLV.dataRepresentation.getter();
        v142 = v42;
        v68 = v115;
        v66 = TLV.dataRepresentation.getter();
        v69 = v116;
        sub_100009548(v124, v127);

        v142 = *(v92 + 8);
        (v142)(v129, v139);
        (v142)(v131, v139);
        (v142)(v134, v139);
        (v142)(v137, v139);
        sub_1000CC750(v125);
      }

      else
      {
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "pin bypass", v64, 2u);
        }

        sub_1000CC750(v4);
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v68 = 0xC000000000000000;
        v69 = 0xC000000000000000;
        v70 = 0xC000000000000000;
      }

      v71 = v141;
      *v141 = v65;
      v71[1] = v68;
      v71[2] = v66;
      v71[3] = v69;
      v71[4] = v67;
      v71[5] = v70;
      *(v71 + 48) = v43 == 0;
      return;
    }

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "no session", v58, 2u);
    }

    v53 = 0xD000000000000025;
    v54 = 0x800000010034C0A0;
    v55 = 12010;
  }

  else
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "no passcode when generating PIN block", v52, 2u);
    }

    v53 = 0xD00000000000001BLL;
    v54 = 0x800000010034C080;
    v55 = 12008;
  }

  sub_100021328(v55, v53, v54, 0);
  swift_willThrow();
LABEL_38:
  sub_1000CC750(v4);
}

void sub_1000CC750(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v3 = *(a1 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (v3)
  {
    v7[4] = sub_1000CCEC4;
    v7[5] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100003974;
    v7[3] = &unk_100383050;
    v4 = _Block_copy(v7);
    v5 = v3;
    [v5 endSessionWithCompletion:v4];
    _Block_release(v4);
  }

  *(a1 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength) = 0;
  v6 = *(a1 + v2);
  *(a1 + v2) = 0;
}

void sub_1000CC830()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A2600);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, v18);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034C060, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, v18);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v13 = *(v1 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (v13)
  {
    v14 = v13;
    sub_100003ABC();

    v15 = *(v1 + v12);
    if (v15)
    {
      v18[4] = sub_1000CCAB4;
      v18[5] = 0;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_100003974;
      v18[3] = &unk_100383028;
      v16 = _Block_copy(v18);
      v17 = v15;
      [v17 endSessionWithCompletion:v16];
      _Block_release(v16);

      v13 = *(v1 + v12);
    }

    else
    {
      v13 = 0;
    }
  }

  *(v1 + v12) = 0;

  *(v1 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_pinLength) = 0;
}

uint64_t sub_1000CCAD4(uint64_t result)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession;
  v4 = *(v1 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_activeSession);
  if (!v4)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  sub_10000411C(0, &qword_10039E4D8, NFSecureElementManagerSession_ptr);
  v6 = v5;
  v7 = v4;
  LOBYTE(v5) = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (qword_10039D548 != -1)
  {
LABEL_8:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000403C(v8, qword_1003A2600);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "secureElementManagerSessionDidEndUnexpectedly()", v11, 2u);
  }

  v12 = *(v2 + v3);
  *(v2 + v3) = 0;

  v13 = (v2 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_auditor);
  v14 = *(v2 + OBJC_IVAR____TtC14softposreaderd21DefaultPINAppletProxy_auditor + 24);
  v15 = v13[4];
  sub_10000BE18(v13, v14);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  *(inited + 32) = 0xD000000000000010;
  v17 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0x800000010034C010;
  *(inited + 48) = 0xD00000000000002DLL;
  *(inited + 56) = 0x800000010034C030;
  v18 = sub_100184010(inited);
  swift_setDeallocating();
  sub_10000BD44(v17, &qword_10039FEC8, &unk_1002C37B0);
  sub_1000C2288(0x1Bu, v18, v14, v15);
}

id sub_1000CCDD0(uint64_t a1, unint64_t a2)
{
  v4 = *v2;
  result = sub_1000CA6F0(a1, a2);
  if (v3)
  {
    return v6;
  }

  return result;
}

double sub_1000CCE50@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  sub_1000CB724(v9);
  if (!v2)
  {
    result = *v9;
    v6 = v9[1];
    v7 = v9[2];
    v8 = v10;
    *a1 = v9[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

void sub_1000CCEE4(uint64_t (*a1)(void), const char *a2)
{
  if (qword_10039D548 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2600);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_1000CCFDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000CCFF4()
{
  result = qword_10039E230;
  if (!qword_10039E230)
  {
    sub_1000040BC(&qword_1003A2700, &qword_1002C16D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10039E230);
  }

  return result;
}

uint64_t sub_1000CD084()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A2708);
  sub_10000403C(v0, qword_1003A2708);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.pinController.getter();
}

uint64_t sub_1000CD0F0()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_1003A2720);
  v1 = sub_10000403C(v0, qword_1003A2720);
  if (qword_10039D740 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6ED8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000CD26C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 264);
  swift_getObjectType();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100383270;
  v13 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
  sub_1000039BC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v13);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v14 = *(v1 + 264);
  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.cancel()();
  swift_unknownObjectRelease();
  if ((*(v1 + 272) & 1) == 0)
  {
    v15 = *(v1 + 264);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  sub_1000D4058();
  v16 = *(v1 + 440);
  v17 = *(v1 + 448);

  sub_1000D7010();

  v18 = [objc_opt_self() defaultCenter];
  v19 = AVSystemController_RecordingStateDidChangeNotification;
  v20 = [objc_opt_self() sharedInstance];
  [v18 removeObserver:v1 name:v19 object:v20];

  sub_10000959C((v1 + 16));
  sub_1000D7504(*(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128));
  sub_10001A074(*(v1 + 136), *(v1 + 144));
  sub_10000959C((v1 + 160));
  sub_10000959C((v1 + 200));
  v21 = *(v1 + 256);
  sub_1000048A0(*(v1 + 248));
  v22 = *(v1 + 264);
  swift_unknownObjectRelease();
  v23 = *(v1 + 280);

  v24 = *(v1 + 296);

  sub_10000959C((v1 + 304));
  sub_10000959C((v1 + 344));
  sub_10000959C((v1 + 384));
  v25 = *(v1 + 432);

  v26 = *(v1 + 448);

  return v1;
}

uint64_t sub_1000CD618()
{
  sub_1000CD26C();

  return swift_deallocClassInstance();
}

void sub_1000CD944(NSObject *a1@<X0>, void (**a2)(char *, char *, uint64_t)@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v135 - v13;
  __chkstk_darwin(v12);
  v16 = &v135 - v15;
  if (*(v3 + 152))
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000403C(v17, qword_1003A2708);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "PIN capture in progress", v20, 2u);
    }

    v21 = 0xD00000000000001FLL;
    v22 = 0x800000010034CA00;
    v23 = 11004;
LABEL_29:
    sub_1000217A0(v23, v21, v22, 0);
    swift_willThrow();
    return;
  }

  v146 = a2;
  v147 = a1;
  v24 = [objc_opt_self() sharedHardwareManager];
  v25 = [v24 getHwSupport];

  if (v25 != 2)
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000403C(v50, qword_1003A2708);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "NFC not available", v53, 2u);
    }

    v23 = 11015;
    v21 = 0;
    v22 = 0;
    goto LABEL_29;
  }

  v143 = v11;
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for OSSignposter();
  v27 = sub_10000403C(v26, qword_1003A2720);
  static OSSignpostID.exclusive.getter();
  v140 = v27;
  v28 = OSSignposter.logHandle.getter();
  v29 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v30 = swift_slowAlloc();
    v145 = v3;
    v31 = v7;
    v32 = v30;
    *v30 = 0;
    v33 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, v29, v33, "pin-captureStart", "begin capture pin initialization", v32, 2u);
    v7 = v31;
    v3 = v145;
  }

  v139 = v7[2];
  v139(v14, v16, v6);
  v34 = type metadata accessor for OSSignpostIntervalState();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = OSSignpostIntervalState.init(id:isOpen:)();
  v144 = v6;
  v145 = v37;
  v141 = v7[1];
  v142 = v7 + 1;
  v141(v16, v6);
  sub_10000BE18((v3 + 304), *(v3 + 328));
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944();
  if (!v164)
  {
    sub_10000BD44(v163, &qword_10039E248, &qword_1002C23D0);
    goto LABEL_31;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    sub_1000217A0(11004, 0xD00000000000002BLL, 0x800000010034C5B0, 0);
    swift_willThrow();
    goto LABEL_32;
  }

  v38 = v160;
  v39 = v159;
  v154 = v160;
  v155 = v161;
  v152 = v158;
  v153 = v159;
  v40 = *(v3 + 88);
  v157[1] = *(v3 + 72);
  v157[2] = v40;
  v41 = *(v3 + 120);
  v157[3] = *(v3 + 104);
  v157[4] = v41;
  v42 = *(v3 + 56);
  v43 = v161;
  v156 = v162;
  v157[0] = v42;
  *(v3 + 56) = v158;
  *(v3 + 120) = v162;
  *(v3 + 104) = v43;
  *(v3 + 88) = v38;
  *(v3 + 72) = v39;
  sub_1000D7454(&v152, v151);
  sub_10000BD44(v157, &qword_1003A2A20, &qword_1002C6C88);
  v44 = v165;
  sub_1000CEC9C(v147);
  if (v44)
  {
    v151[0] = v44;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    type metadata accessor for PINControllerError(0);
    if (swift_dynamicCast())
    {
      v45 = v150;
      v149 = v150;
      sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError);
      if (_BridgedStoredNSError.errorCode.getter() >= 11000)
      {
        v149 = v45;
        if (_BridgedStoredNSError.errorCode.getter() <= 11999)
        {

          if (qword_10039D550 != -1)
          {
            swift_once();
          }

          v118 = type metadata accessor for Logger();
          sub_10000403C(v118, qword_1003A2708);
          v119 = v45;
          v120 = Logger.logObject.getter();
          v121 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v148 = v119;
            v149 = v165;
            *v122 = 136315138;
            v123 = v119;
            v124 = String.init<A>(describing:)();
            v126 = sub_100008F6C(v124, v125, &v149);
            v147 = v120;
            v127 = v121;
            v128 = v126;

            *(v122 + 4) = v128;
            v129 = v147;
            _os_log_impl(&_mh_execute_header, v147, v127, "validation failed: %s", v122, 0xCu);
            sub_10000959C(v165);
          }

          else
          {
          }

          v133 = *(v3 + 296);
          v149 = v119;
          v134 = _BridgedStoredNSError.errorCode.getter();
          *(v133 + 120) = 0;
          *(v133 + 160) = v134;
          swift_willThrow();
          sub_1000D74B0(&v152);

          goto LABEL_32;
        }
      }
    }

    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000403C(v46, qword_1003A2708);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "throwing non PINControllerError?", v49, 2u);
    }

    swift_errorRetain();
    sub_1000217A0(11004, 0, 0, v44);

    swift_willThrow();

    sub_1000D74B0(&v152);
LABEL_32:
    sub_1000CEA10();

    return;
  }

  v165 = 0;
  OSSignposter.logHandle.getter();
  v54 = v143;
  OSSignpostID.init(log:)();
  v55 = OSSignposter.logHandle.getter();
  v56 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v57 = swift_slowAlloc();
    LODWORD(v140) = v56;
    v58 = v57;
    *v57 = 0;
    v59 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, v140, v59, "pin-totalCaptureTime", "begin pin capture", v58, 2u);
  }

  v139(v14, v54, v144);
  v60 = *(v34 + 48);
  v61 = *(v34 + 52);
  swift_allocObject();
  v62 = OSSignpostIntervalState.init(id:isOpen:)();
  v63 = *(v3 + 280);
  *(v3 + 280) = v62;

  v64 = [v147 pinToken];
  v65 = v64;
  if (v64)
  {

    v66 = &off_10037E6E0;
  }

  else
  {
    v66 = &off_10037E708;
  }

  v67 = v165;
  v68 = *(v3 + 296);
  *(v68 + 123) = v65 != 0;
  sub_100027F94(v66);

  sub_10011BBA0(&off_10037E758);
  sub_10011B164(&off_10037E730);
  [v147 transactionDataLifetime];
  *(v3 + 240) = v69;
  sub_1000D32D0();
  sub_1000D2A08();
  v70 = *(v3 + 184);
  v71 = *(v3 + 192);
  sub_10000BE18((v3 + 160), v70);
  v72 = v67;
  v73 = (*(v71 + 8))(*(&v153 + 1), v154, v70, v71);
  v165 = v67;
  if (v67)
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_10000403C(v77, qword_1003A2708);
    swift_errorRetain();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v150 = v72;
      v151[0] = v81;
      *v80 = 136315138;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v82 = String.init<A>(describing:)();
      v84 = sub_100008F6C(v82, v83, v151);

      *(v80 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v78, v79, "Error initializing PIN applet: %s", v80, 0xCu);
      sub_10000959C(v81);
    }

    v85 = *(v3 + 224);
    v86 = *(v3 + 232);
    sub_10000BE18((v3 + 200), v85);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000010034C010;
    v151[0] = v165;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v88 = String.init<A>(describing:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v88;
    *(inited + 56) = v89;
    v90 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
    sub_1000C2288(0x1Bu, v90, v85, v86);

    v151[0] = sub_1000217A0(11001, 0, 0, 0);
    type metadata accessor for PINControllerError(0);
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError);
    v91 = _BridgedStoredNSError.errorCode.getter();
    *(v68 + 120) = 0;
    *(v68 + 160) = v91;
    swift_willThrow();

    sub_1000D74B0(&v152);
    goto LABEL_52;
  }

  v92 = v75;
  v93 = v76;
  v138 = v68;
  v94 = v73;
  v95 = v74;
  sub_1000094F4(v73, v74);
  sub_1000094F4(v92, v93);
  sub_100009548(v92, v93);
  sub_1000094F4(v94, v95);
  sub_1000094F4(v92, v93);
  sub_100009548(v94, v95);
  v140 = static Data.randomBytes(count:)();
  v147 = v96;
  v97 = sub_10000BE18((v3 + 304), *(v3 + 328));
  v137 = v92;
  v98 = *v97;
  sub_10017A138(0);
  sub_10000BD44(v151, &qword_10039E248, &qword_1002C23D0);
  v99 = *(v3 + 224);
  v139 = *(v3 + 232);
  v136 = sub_10000BE18((v3 + 200), v99);
  sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
  v100 = swift_initStackObject();
  *(v100 + 16) = xmmword_1002C1660;
  strcpy((v100 + 32), "transactionId");
  *(v100 + 72) = &type metadata for String;
  *(v100 + 80) = &protocol witness table for String;
  v102 = *(&v152 + 1);
  v101 = v153;
  *(v100 + 46) = -4864;
  *(v100 + 48) = v102;
  *(v100 + 56) = v101;

  v103 = sub_100184010(v100);
  swift_setDeallocating();
  sub_10000BD44(v100 + 32, &qword_10039FEC8, &unk_1002C37B0);
  sub_1000C2288(0x18u, v103, v99, v139);

  v139 = v94;
  v104 = v94;
  v105 = v95;
  v106 = v95;
  v107 = v137;
  sub_100009548(v104, v106);
  sub_100009548(v107, v93);
  v108 = *(v3 + 136);
  v109 = *(v3 + 144);
  *(v3 + 136) = v107;
  *(v3 + 144) = v93;
  sub_1000094F4(v107, v93);
  sub_10001A074(v108, v109);
  v110 = *(v3 + 424);
  v111 = *(v3 + 432);
  sub_1000D7010();
  if ((sub_1000D4374() & 1) == 0)
  {
    v130 = v138;
    *(v138 + 120) = 0;
    *(v130 + 160) = 11013;
    sub_100027534();
    v131 = *(v3 + 184);
    v132 = *(v3 + 192);
    sub_10000BE18((v3 + 160), v131);
    (*(v132 + 40))(v131, v132);
    sub_1000217A0(11013, 0xD000000000000019, 0x800000010034C9C0, 0);
    swift_willThrow();
    sub_1000D74B0(&v152);
    sub_100009548(v139, v105);
    sub_100009548(v107, v93);
    sub_100009548(v140, v147);
LABEL_52:
    v141(v143, v144);
    goto LABEL_32;
  }

  v112 = v139;
  v136 = v105;
  v113 = *(v138 + 56);
  os_unfair_lock_lock(v113 + 8);
  v114 = v165;
  sub_10011D358(&v113[4], 9);
  os_unfair_lock_unlock(v113 + 8);
  if (v114)
  {
    __break(1u);
  }

  else
  {
    sub_1000D74B0(&v152);
    v141(v143, v144);
    *(v3 + 152) = 1;
    sub_1000CEA10();

    v115 = v146;
    v116 = v136;
    *v146 = v112;
    v115[1] = v116;
    v115[2] = v107;
    v115[3] = v93;
    v117 = v147;
    v115[4] = v140;
    v115[5] = v117;
  }
}

uint64_t sub_1000CEA10()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A2720);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "end capture pin initialization";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "pin-captureStart", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_1000CEC9C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A2708);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v60 = a1;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *&v55 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100008F6C(v9, v10, &v55);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = showFunction(signature:_:)(0xD000000000000019, 0x800000010034C9A0, _swiftEmptyArrayStorage);
    v14 = sub_100008F6C(v12, v13, &v55);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(v1 + 9);
  v55 = *(v1 + 7);
  v56 = v15;
  v16 = *(v1 + 15);
  v17 = *(v1 + 13);
  v57 = *(v1 + 11);
  v58 = v17;
  v59 = v16;
  if (!v56)
  {
    sub_1000217A0(11004, 0xD000000000000037, 0x800000010034C810, 0);
LABEL_27:
    v44 = v2[28];
    v45 = v2[29];
    sub_10000BE18(v2 + 25, v44);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000010034C010;
    swift_getErrorValue();
    v47 = Error.localizedDescription.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v47;
    *(inited + 56) = v48;
    v49 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
    sub_1000C2288(0x1Bu, v49, v44, v45);

    return swift_willThrow();
  }

  v18 = v55;
  v19 = v59;
  v20 = *(&v56 + 1);
  v22 = v57;
  v21 = v58;

  sub_1000094F4(v20, v22);
  sub_1000094F4(*(&v22 + 1), v21);
  sub_1000094F4(v19, *(&v19 + 1));
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = v18 & 1;
    _os_log_impl(&_mh_execute_header, v23, v24, "internalTransactionData.pinRequired: %{BOOL}d", v25, 8u);
  }

  v26 = v60;
  v27 = [v60 digest];
  v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  LOBYTE(v27) = sub_10017688C(v28, v30, v19, *(&v19 + 1));
  sub_100009548(v28, v30);
  if ((v27 & 1) == 0)
  {
    _StringGuts.grow(_:)(138);
    v34._countAndFlagsBits = 0xD000000000000088;
    v34._object = 0x800000010034C850;
    String.append(_:)(v34);
    v35 = Data.hexString()();
    String.append(_:)(v35);

    v33 = 0;
    v36 = 0xE000000000000000;
LABEL_25:
    v41 = 11004;
    goto LABEL_26;
  }

  v31 = [v26 pinToken];
  if (v31)
  {

    if (v18)
    {
      v32 = "s than the maximum ";
      v33 = 0xD000000000000027;
LABEL_24:
      v36 = (v32 | 0x8000000000000000);
      goto LABEL_25;
    }
  }

  v37 = [v26 pinToken];
  if (v37)
  {
  }

  else if ((v18 & 1) == 0)
  {
    v32 = "transactionFingerprint: ";
    v33 = 0xD00000000000003BLL;
    goto LABEL_24;
  }

  [v26 transactionDataLifetime];
  if (v38 <= 0.0 || ([v26 transactionDataLifetime], v39 > 300.0))
  {
    _StringGuts.grow(_:)(69);
    v40._countAndFlagsBits = 0xD000000000000043;
    v40._object = 0x800000010034C920;
    String.append(_:)(v40);
    Double.write<A>(to:)();
    v33 = 0;
    v36 = 0xE000000000000000;
    v41 = 11010;
LABEL_26:
    sub_1000217A0(v41, v33, v36, 0);
    sub_10000BD44(&v55, &qword_1003A2A20, &qword_1002C6C88);
    goto LABEL_27;
  }

  v42 = [v26 pinToken];
  if (!v42)
  {
    return sub_10000BD44(&v55, &qword_1003A2A20, &qword_1002C6C88);
  }

  if (v18)
  {
    return sub_10000BD44(&v55, &qword_1003A2A20, &qword_1002C6C88);
  }

  result = [v26 pinToken];
  if (result)
  {
    v50 = result;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    sub_1000D36C4(v51, v53);
    if (v54)
    {

      return sub_10000BD44(&v55, &qword_1003A2A20, &qword_1002C6C88);
    }

    else
    {
      sub_10000BD44(&v55, &qword_1003A2A20, &qword_1002C6C88);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CF360()
{
  v1 = *v0;
  v2 = v0[36];
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_1000CF3E0(uint64_t a1, unint64_t a2)
{
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000403C(v4, qword_1003A2708);
  sub_1000094F4(a1, a2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  sub_100009548(a1, a2);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100008F6C(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002C1660;
    v12 = Data.hexString()();
    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v12;
    v13 = showFunction(signature:_:)(0xD000000000000011, 0x800000010034C1B0, v11);
    v15 = v14;

    v16 = sub_100008F6C(v13, v15, &v18);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s.%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  return sub_1000CF638(a1, a2);
}

uint64_t sub_1000CF638(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  if (*(v4 + 152) != 1)
  {
    sub_1000217A0(11004, 0xD00000000000001BLL, 0x800000010034C670, 0);
    return swift_willThrow();
  }

  v46 = a1;
  v47 = a2;
  v48 = v3;
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OSSignposter();
  sub_10000403C(v15, qword_1003A2720);
  static OSSignpostID.exclusive.getter();
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v19, "pin-addDigit", "begin add digit daemon", v18, 2u);
  }

  (*(v8 + 16))(v12, v14, v7);
  v20 = type metadata accessor for OSSignpostIntervalState();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v8 + 8))(v14, v7);
  if (!*(v4 + 72))
  {
    v33 = sub_1000217A0(11004, 0xD000000000000013, 0x800000010034C690, 0);
    v34 = *(v4 + 296);
    v50 = v33;
    type metadata accessor for PINControllerError(0);
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError);
    v35 = _BridgedStoredNSError.errorCode.getter();
    *(v34 + 120) = 0;
    *(v34 + 160) = v35;
    sub_100027534();
    v36 = *(v4 + 184);
    v37 = *(v4 + 192);
    sub_10000BE18((v4 + 160), v36);
    (*(v37 + 40))(v36, v37);
    *(v4 + 152) = 0;
    swift_willThrow();
LABEL_17:
    sub_1000CFCBC();
  }

  v23 = *(v4 + 296);
  sub_1000279D8();
  v24 = *(v4 + 184);
  v25 = *(v4 + 192);
  sub_10000BE18((v4 + 160), v24);
  v26 = v48;
  (*(v25 + 16))(v46, v47, v24, v25);
  if (!v26)
  {
    *(v4 + 273) = 0;
    goto LABEL_17;
  }

  _s3__C4CodeOMa_7(0);
  v50 = 12006;
  swift_errorRetain();
  sub_1000D73EC(&qword_10039DAD0, _s3__C4CodeOMa_7);
  v27 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v27)
  {

    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000403C(v28, qword_1003A2708);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Maximum Applet PIN length exceeded", v31, 2u);
    }

    sub_1000217A0(11007, 0, 0, 0);
    swift_willThrow();
    goto LABEL_17;
  }

  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000403C(v38, qword_1003A2708);
  swift_errorRetain();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50 = v42;
    *v41 = 136315138;
    v49 = v26;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v43 = String.init<A>(describing:)();
    v45 = sub_100008F6C(v43, v44, &v50);

    *(v41 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "Error adding digit: %s", v41, 0xCu);
    sub_10000959C(v42);
  }

  sub_1000217A0(11006, 0xD000000000000029, 0x800000010034C7D0, 0);
  swift_willThrow();

  sub_1000CFCBC();
}

uint64_t sub_1000CFCBC()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A2720);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "end add digit daemon";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "pin-addDigit", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1000D0194()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  if (*(v0 + 152) != 1)
  {
    sub_1000217A0(11004, 0xD00000000000001BLL, 0x800000010034C670, 0);
    swift_willThrow();
    return;
  }

  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  sub_10000403C(v12, qword_1003A2720);
  static OSSignpostID.exclusive.getter();
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v15 = swift_slowAlloc();
    v29[0] = v1;
    v16 = v15;
    *v15 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v17, "pin-removeDigit", "begin remove pin digit", v16, 2u);
    v2 = v29[0];
  }

  (*(v5 + 16))(v9, v11, v4);
  v18 = type metadata accessor for OSSignpostIntervalState();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v5 + 8))(v11, v4);
  if (!*(v0 + 72))
  {
    v24 = sub_1000217A0(11004, 0xD000000000000013, 0x800000010034C690, 0);
    v25 = *(v0 + 296);
    v29[3] = v24;
    type metadata accessor for PINControllerError(0);
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError);
    v26 = _BridgedStoredNSError.errorCode.getter();
    *(v25 + 120) = 0;
    *(v25 + 160) = v26;
    sub_100027534();
    v27 = *(v0 + 184);
    v28 = *(v0 + 192);
    sub_10000BE18((v0 + 160), v27);
    (*(v28 + 40))(v27, v28);
    *(v0 + 152) = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v21 = *(*(v0 + 296) + 56);
  os_unfair_lock_lock((v21 + 32));
  sub_10011C1A4((v21 + 16), 27);
  if (!v2)
  {
    os_unfair_lock_unlock((v21 + 32));
    v22 = v3[23];
    v23 = v3[24];
    sub_10000BE18(v3 + 20, v22);
    (*(v23 + 24))(v22, v23);
LABEL_11:
    sub_1000D0820();

    return;
  }

  os_unfair_lock_unlock((v21 + 32));
  __break(1u);
}

uint64_t sub_1000D0820()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000403C(v10, qword_1003A2720);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "end remove pin digit";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "pin-removeDigit", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1000D0D0C()
{
  v2 = *v0;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v109 - v9;
  v134 = v0;
  if (*(v0 + 152) != 1)
  {
    sub_1000217A0(11004, 0xD00000000000001BLL, 0x800000010034C670, 0);
    swift_willThrow();
    return;
  }

  v124 = v2;
  v125 = v1;
  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  sub_10000403C(v11, qword_1003A2720);
  static OSSignpostID.exclusive.getter();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v15, "pin-generateBlock", "begin generate pin block", v14, 2u);
  }

  (*(v4 + 16))(v8, v10, v3);
  v16 = type metadata accessor for OSSignpostIntervalState();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v4 + 8))(v10, v3);
  v20 = v134;
  v21 = *(v134 + 72);
  v129 = *(v134 + 56);
  v130 = v21;
  v22 = *(v134 + 104);
  v131 = *(v134 + 88);
  v132 = v22;
  v133 = *(v134 + 120);
  v23 = v130;
  if (!v130)
  {
    v30 = sub_1000217A0(11004, 0xD000000000000013, 0x800000010034C690, 0);
    v31 = v20[37];
    v127[0] = v30;
    type metadata accessor for PINControllerError(0);
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError);
    v32 = _BridgedStoredNSError.errorCode.getter();
    *(v31 + 120) = 0;
    *(v31 + 160) = v32;
    sub_100027534();
    v33 = v20[23];
    v34 = v20[24];
    sub_10000BE18(v20 + 20, v33);
    (*(v34 + 40))(v33, v34);
    swift_willThrow();
    goto LABEL_11;
  }

  v24 = *(v134 + 144);
  if (v24 >> 60 == 15)
  {
    sub_1000D6FA0(&v129, v127);
    v25 = sub_1000217A0(11009, 0xD000000000000054, 0x800000010034C6B0, 0);
    v26 = v20[37];
    v127[0] = v25;
    type metadata accessor for PINControllerError(0);
    sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError);
    v27 = _BridgedStoredNSError.errorCode.getter();
    *(v26 + 120) = 0;
    *(v26 + 160) = v27;
    sub_100027534();
    v28 = v20[23];
    v29 = v20[24];
    sub_10000BE18(v20 + 20, v28);
    (*(v29 + 40))(v28, v29);
    swift_willThrow();
    sub_10000BD44(&v129, &qword_1003A2A20, &qword_1002C6C88);
LABEL_11:
    sub_1000D1C74(v20);
LABEL_20:

    return;
  }

  v120 = v19;
  v35 = *(&v129 + 1);
  v113 = v132;
  v114 = *(&v131 + 1);
  LODWORD(v112) = BYTE8(v132);
  v36 = *(v134 + 136);
  v123 = *(v134 + 296);
  v37 = v123[7];
  sub_1000D6FA0(&v129, v127);
  v121 = v36;
  v122 = v24;
  sub_10001A3E8(v36, v24);
  os_unfair_lock_lock(v37 + 8);
  v38 = v125;
  sub_10011C8AC(&v37[4], 10);
  if (v38)
  {
    os_unfair_lock_unlock(v37 + 8);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v37 + 8);
    v39 = v20[23];
    v40 = v20[24];
    sub_10000BE18(v20 + 20, v39);
    (*(v40 + 32))(v127, v39, v40);
    v117 = v127[2];
    v115 = v127[0];
    v116 = v127[3];
    v125 = v127[4];
    v118 = v127[5];
    v119 = v127[1];
    v41 = v35;
    v42 = v128;
    v43 = v20[28];
    v111 = v20[29];
    v110 = sub_10000BE18(v20 + 25, v43);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    strcpy((inited + 32), "transactionId");
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 46) = -4864;
    *(inited + 48) = v41;
    v109 = v41;
    *(inited + 56) = v23;

    v45 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
    sub_1000C2288(0x1Au, v45, v43, v111);

    sub_1000D32D0();
    sub_10011BBA0(&off_10037E780);
    LODWORD(v111) = v42;
    if (v42 && (v112 & 1) == 0)
    {
      v46 = sub_1000217A0(11014, 0xD00000000000003ALL, 0x800000010034C730, 0);
      swift_willThrow();
      sub_100009548(v115, v119);
      sub_100009548(v117, v116);
      sub_100009548(v125, v118);
      if (qword_10039D550 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_10000403C(v47, qword_1003A2708);
      swift_errorRetain();
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v127[0] = v51;
        *v50 = 136315138;
        v126 = v46;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v52 = String.init<A>(describing:)();
        v54 = sub_100008F6C(v52, v53, v127);

        *(v50 + 4) = v54;
        _os_log_impl(&_mh_execute_header, v48, v49, "Error from generatePINBlock: %s", v50, 0xCu);
        sub_10000959C(v51);
      }

      v55 = v20[28];
      v56 = v20[29];
      sub_10000BE18(v20 + 25, v55);
      sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
      v57 = swift_initStackObject();
      *(v57 + 16) = xmmword_1002C1660;
      *(v57 + 32) = 0xD000000000000010;
      *(v57 + 40) = 0x800000010034C010;
      v127[0] = v46;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v58 = String.init<A>(describing:)();
      *(v57 + 72) = &type metadata for String;
      *(v57 + 80) = &protocol witness table for String;
      *(v57 + 48) = v58;
      *(v57 + 56) = v59;
      v60 = sub_100184010(v57);
      swift_setDeallocating();
      sub_10000BD44(v57 + 32, &qword_10039FEC8, &unk_1002C37B0);
      sub_1000C2288(0x1Bu, v60, v55, v56);

      v127[0] = sub_1000D7148();
      type metadata accessor for PINControllerError(0);
      sub_1000D73EC(&qword_10039DAB0, type metadata accessor for PINControllerError);
      v61 = _BridgedStoredNSError.errorCode.getter();
      v62 = v123;
      *(v123 + 120) = 0;
      v62[20] = v61;
      sub_100027534();
      swift_willThrow();

      sub_10001A074(v121, v122);
      sub_10000BD44(&v129, &qword_1003A2A20, &qword_1002C6C88);
      sub_1000D1C74(v20);
      goto LABEL_20;
    }

    v63 = v115;
    sub_1000094F4(v115, v119);
    v65 = v116;
    v64 = v117;
    sub_1000094F4(v117, v116);
    v66 = v125;
    v67 = v118;
    sub_1000094F4(v125, v118);
    sub_100009548(v66, v67);
    sub_100009548(v64, v65);
    sub_100009548(v63, v119);
    if (v111)
    {
      v68 = 2;
    }

    else
    {
      v68 = 1;
    }

    v69 = v123;
    *(v123 + 120) = v68;
    v70 = v69[7];
    os_unfair_lock_lock(v70 + 8);
    sub_10011C8AC(&v70[4], 13);
    os_unfair_lock_unlock(v70 + 8);
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    v123 = sub_10000403C(v71, qword_1003A2708);
    v72 = *(&v130 + 1);
    v73 = v131;
    v74 = v132;
    v75 = v133;

    sub_1000094F4(v72, v73);
    sub_1000094F4(*(&v73 + 1), v74);
    sub_1000094F4(v75, *(&v75 + 1));
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.info.getter();
    sub_10000BD44(&v129, &qword_1003A2A20, &qword_1002C6C88);
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v127[0] = v123;
      *v78 = 136315650;
      v79 = _typeName(_:qualified:)();
      v81 = sub_100008F6C(v79, v80, v127);

      *(v78 + 4) = v81;
      *(v78 + 12) = 2080;
      *(v78 + 14) = sub_100008F6C(0xD000000000000013, 0x800000010034C710, v127);
      *(v78 + 22) = 2080;
      v20 = v134;

      v82 = sub_100008F6C(v109, v23, v127);

      *(v78 + 24) = v82;
      _os_log_impl(&_mh_execute_header, v76, v77, "%s.%s using internalTransactionData with transactionId: %s", v78, 0x20u);
      swift_arrayDestroy();
    }

    v83 = v115;
    v84 = v119;
    sub_1000094F4(v115, v119);
    v86 = v116;
    v85 = v117;
    sub_1000094F4(v117, v116);
    v87 = v125;
    v88 = v118;
    sub_1000094F4(v125, v118);
    sub_100009548(v87, v88);
    sub_100009548(v85, v86);
    sub_1000094F4(v83, v84);
    sub_1000094F4(v85, v86);
    sub_1000094F4(v87, v88);
    sub_100009548(v87, v88);
    sub_100009548(v83, v84);
    sub_1000094F4(v83, v84);
    sub_1000094F4(v85, v86);
    sub_1000094F4(v87, v88);
    sub_100009548(v87, v88);
    sub_100009548(v85, v86);
    sub_100009548(v83, v84);
    if (v111)
    {
      v134 = 0;
      v124 = 0xC000000000000000;
    }

    else
    {
      v90 = v121;
      v89 = v122;
      sub_1000094F4(v121, v122);
      v134 = v90;
      v124 = v89;
    }

    v91 = v115;
    v92 = v119;
    sub_1000094F4(v115, v119);
    v94 = v116;
    v93 = v117;
    sub_1000094F4(v117, v116);
    v95 = v125;
    v96 = v118;
    sub_1000094F4(v125, v118);
    sub_100009548(v93, v94);
    sub_100009548(v91, v92);
    sub_1000094F4(v91, v92);
    sub_1000094F4(v93, v94);
    sub_1000094F4(v95, v96);
    sub_100009548(v95, v96);
    sub_100009548(v93, v94);
    sub_100009548(v91, v92);
    if (v111)
    {
      v97 = 0;
      v98 = 0xC000000000000000;
    }

    else
    {
      v97 = v114;
      v98 = v113;
      sub_1000094F4(v114, v113);
    }

    v112 = objc_allocWithZone(SPRPINData);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v123 = isa;
    v100 = Data._bridgeToObjectiveC()().super.isa;
    v110 = Data._bridgeToObjectiveC()().super.isa;
    v101 = v118;
    v102 = Data._bridgeToObjectiveC()().super.isa;
    v113 = v98;
    v114 = v97;
    v103 = Data._bridgeToObjectiveC()().super.isa;
    v104 = v110;
    [v112 initWithPinCipherBlob:isa pinKeyBlob:v100 casd:v110 pinAppletAttestationData:v102 pinKEKHash:v103 isPinBypass:v111];

    sub_100009548(v114, v113);
    sub_100009548(v125, v101);

    sub_100009548(v134, v124);
    v106 = v116;
    v105 = v117;
    sub_100009548(v117, v116);

    v107 = v115;
    v108 = v119;
    sub_100009548(v115, v119);
    sub_1000D4058();
    sub_100009548(v107, v108);
    sub_100009548(v105, v106);
    sub_100009548(v125, v118);
    sub_10001A074(v121, v122);
    sub_10000BD44(&v129, &qword_1003A2A20, &qword_1002C6C88);
    sub_1000D1C74(v20);
  }
}

uint64_t sub_1000D1C74(uint64_t a1)
{
  v2 = type metadata accessor for OSSignpostError();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 440);
  v12 = *(a1 + 448);
  sub_1000D7010();
  v13 = [objc_opt_self() defaultCenter];
  v14 = AVSystemController_RecordingStateDidChangeNotification;
  v15 = [objc_opt_self() sharedInstance];
  [v13 removeObserver:a1 name:v14 object:v15];

  if (qword_10039D558 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSSignposter();
  sub_10000403C(v16, qword_1003A2720);
  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v18 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v19 = v25;
    if ((*(v25 + 88))(v5, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v19 + 8))(v5, v2);
      v20 = "end generate pin block";
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v22, "pin-generateBlock", v20, v21, 2u);
  }

  result = (*(v7 + 8))(v10, v6);
  *(a1 + 152) = 0;
  return result;
}

void sub_1000D21FC()
{
  if (*(v0 + 152) == 1)
  {
    sub_10000CCE4(v0 + 200, v36);
    v1 = v37;
    oslog = v38;
    sub_10000BE18(v36, v37);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    strcpy((inited + 32), "transactionId");
    *(inited + 46) = -4864;
    v3 = *(v0 + 72);
    v39 = *(v0 + 56);
    v40 = v3;
    v4 = *(v0 + 104);
    v41 = *(v0 + 88);
    v42 = v4;
    v43 = *(v0 + 120);
    v5 = v39;
    v6 = v40;
    if (v40)
    {

      v7 = *(&v5 + 1);
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v30 = v5;
    v31 = v6;
    v12 = *(v0 + 96);
    v32 = *(v0 + 80);
    v33 = v12;
    v34 = *(v0 + 112);
    v35 = *(v0 + 128);
    sub_1000D6FA0(&v39, v29);
    sub_10000BD44(&v30, &qword_1003A2A20, &qword_1002C6C88);
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    v13 = 7104878;
    if (v8)
    {
      v13 = v7;
    }

    v14 = 0xE300000000000000;
    if (v8)
    {
      v14 = v8;
    }

    *(inited + 48) = v13;
    *(inited + 56) = v14;
    v15 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
    v16 = v1;
    v17 = v0;
    sub_1000C2288(0x19u, v15, v16, oslog);

    sub_10000959C(v36);
    v18 = *(v0 + 296);
    v19 = *(v18 + 56);
    os_unfair_lock_lock(v19 + 8);
    sub_10011D358(&v19[4], 11);
    os_unfair_lock_unlock(v19 + 8);
    *(v18 + 120) = 3;
    sub_100027534();
    sub_1000D4058();
    v20 = *(v17 + 440);
    v21 = *(v17 + 448);
    sub_1000D7010();
    v22 = [objc_opt_self() defaultCenter];
    v23 = AVSystemController_RecordingStateDidChangeNotification;
    v24 = [objc_opt_self() sharedInstance];
    [v22 removeObserver:v17 name:v23 object:v24];

    sub_1000D32D0();
    v25 = *(v17 + 184);
    v26 = *(v17 + 192);
    sub_10000BE18((v17 + 160), v25);
    (*(v26 + 40))(v25, v26);
    *(v17 + 152) = 0;
  }

  else
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000403C(v9, qword_1003A2708);
    osloga = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, osloga, v10, "PIN Capture not in progress", v11, 2u);
    }
  }
}

void sub_1000D28F8(void *a1)
{
  if (*(v1 + 272) == 1)
  {
    if (*(v1 + 273) == 1)
    {
      sub_1000CEC9C(a1);
      if (v2)
      {
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v4 = String.init<A>(describing:)();
        sub_1000217A0(11010, v4, v5, 0);
        swift_willThrow();
      }

      else
      {
        [a1 transactionDataLifetime];
        *(v1 + 240) = v6;
        sub_1000D32D0();
        sub_1000D2A08();
        *(v1 + 273) = 0;
      }
    }

    else
    {
      sub_1000217A0(11012, 0xD000000000000045, 0x800000010034C620, 0);
      swift_willThrow();
    }
  }
}

void sub_1000D2A08()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  isa = v49[-1].isa;
  v5 = *(isa + 8);
  __chkstk_darwin(v49);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v42 - v12;
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  if (*(v0 + 272))
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000403C(v22, qword_1003A2708);
    v49 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v49, v23, "PIN timer already started", v24, 2u);
    }

    v25 = v49;
  }

  else
  {
    v26 = v0;
    v27 = *(v0 + 264);
    swift_getObjectType();
    v43 = v1;
    swift_unknownObjectRetain();
    static DispatchTime.now()();
    v28 = *(v26 + 240);
    + infix(_:_:)();
    v42 = v2;
    v29 = *(v15 + 8);
    v29(v19, v14);
    sub_100146FDC(v13);
    sub_100147050(v11);
    OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
    swift_unknownObjectRelease();
    v30 = v45;
    v31 = *(v44 + 8);
    v31(v11, v45);
    v31(v13, v30);
    v29(v21, v14);
    v32 = *(v26 + 264);
    swift_getObjectType();
    v33 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000D6F98;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100383248;
    v34 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v35 = v46;
    j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
    v36 = v48;
    sub_1000039BC();
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v34);
    swift_unknownObjectRelease();
    (*(v42 + 8))(v36, v43);
    (*(isa + 1))(v35, v49);

    v37 = *(v26 + 264);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
    *(v26 + 272) = 257;
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000403C(v38, qword_1003A2708);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "PIN timer started", v41, 2u);
    }
  }
}

uint64_t sub_1000D3044()
{
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A2708);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "DefaultPINController timer fired", v3, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + 72);
    v7 = *(result + 120);
    v17[3] = *(result + 104);
    v17[4] = v7;
    v8 = *(result + 88);
    v17[1] = v6;
    v17[2] = v8;
    v17[0] = *(result + 56);
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    sub_10000BD44(v17, &qword_1003A2A20, &qword_1002C6C88);
    *(v5 + 273) = 0;
    sub_1000D32D0();
    v9 = *(v5 + 248);
    if (v9)
    {
      v10 = *(v5 + 256);

      v9(v11);
      sub_1000048A0(v9);
    }

    v12 = *(v5 + 224);
    v13 = *(v5 + 232);
    sub_10000BE18((v5 + 200), v12);
    sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000010;
    v15 = inited + 32;
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0x800000010034C010;
    *(inited + 48) = 0x656D6974204E4950;
    *(inited + 56) = 0xEF64657269662072;
    v16 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(v15, &qword_10039FEC8, &unk_1002C37B0);
    sub_1000C2288(0x1Bu, v16, v12, v13);
  }

  return result;
}

void sub_1000D32D0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 272) == 1)
  {
    v11 = *(v0 + 264);
    swift_getObjectType();
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_1003831F8;
    v12 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
    sub_1000039BC();
    v13 = v0;
    OS_dispatch_source.setEventHandler(qos:flags:handler:)();
    _Block_release(v12);
    swift_unknownObjectRelease();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v14 = *(v0 + 264);
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.suspend()();
    swift_unknownObjectRelease();
    *(v13 + 272) = 0;
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000403C(v15, qword_1003A2708);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "PIN timer stopped", v18, 2u);
    }
  }

  else
  {
    if (qword_10039D550 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000403C(v19, qword_1003A2708);
    v24 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v24, v20, "PIN timer already stopped", v21, 2u);
    }

    v22 = v24;
  }
}

id sub_1000D36C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v85 = a1;
  v5 = *v2;
  v6 = type metadata accessor for String.Encoding();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = v82[8];
  __chkstk_darwin(v6);
  v81 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D550 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A2708);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = os_log_type_enabled(v10, v11);
  v99 = a2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, &v88);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1002C1660;
    v18 = String.redactedTokenFromBase64()();
    *(v17 + 56) = &type metadata for String;
    *(v17 + 32) = v18;
    v19 = showFunction(signature:_:)(0xD000000000000019, 0x800000010034C600, v17);
    v21 = v20;

    v22 = sub_100008F6C(v19, v21, &v88);

    *(v13 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  if (v3[9])
  {
    v23 = v3[8];
    v24 = v3[9];

    goto LABEL_7;
  }

  sub_10000BE18(v3 + 38, v3[41]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944();
  if (!v98)
  {
    sub_10000BD44(&v96, &qword_10039E248, &qword_1002C23D0);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_1000217A0(11004, 0xD00000000000002BLL, 0x800000010034C5B0, 0);
    return swift_willThrow();
  }

  v69 = v92;
  v70 = v93;
  v71 = v94;
  v72 = v95;
  sub_100009548(v90, v91);
  sub_100009548(v69, v70);
  sub_100009548(v71, v72);
LABEL_7:
  String.uppercased()();
  v25 = v81;
  static String.Encoding.utf8.getter();
  v26 = String.data(using:allowLossyConversion:)();
  v28 = v27;

  result = (v82[1])(v25, v83);
  if (v28 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_18;
  }

  v84 = v28;
  v30 = String.uppercased()();

  v83 = sub_100146900(v30._countAndFlagsBits, v30._object);
  v32 = v31;
  result = [*(*sub_10000BE18(v3 + 43 v3[46]) + 16)];
  v82 = v3;
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37 = sub_100146900(v34, v36);
  v39 = v38;
  v40 = v83;
  v41 = v84;
  v86 = v26;
  v87 = v84;
  v90 = &type metadata for Data;
  v91 = &protocol witness table for Data;
  v88 = v83;
  v89 = v32;
  v42 = sub_10000BE18(&v88, &type metadata for Data);
  v43 = *v42;
  v44 = v42[1];
  v81 = v26;
  v45 = v26;
  v46 = v39;
  sub_10001A3E8(v45, v41);
  v47 = v40;
  v48 = v37;
  sub_1000094F4(v47, v32);
  v49 = v80;
  sub_1000A1C34(v43, v44);
  sub_10000959C(&v88);
  v50 = v32;
  v51 = v86;
  v52 = v87;
  v96 = v86;
  v97 = v87;
  v90 = &type metadata for Data;
  v91 = &protocol witness table for Data;
  v88 = v48;
  v89 = v39;
  v53 = sub_10000BE18(&v88, &type metadata for Data);
  v54 = *v53;
  v55 = v53[1];
  sub_1000094F4(v51, v52);
  sub_1000094F4(v48, v46);
  sub_1000A1C34(v54, v55);
  sub_100009548(v51, v52);
  sub_10000959C(&v88);
  v57 = v96;
  v56 = v97;
  v58 = *sub_10000BE18(v82 + 2, v82[5]);
  sub_10004BE4C();
  if (v49)
  {
    v79 = v57;
    v80 = v56;
    v76 = v48;
    v77 = v46;
    v78 = v50;
    v59 = v82;
    v60 = v82[28];
    v61 = v82[29];
    sub_10000BE18(v82 + 25, v60);
    v75 = sub_100004074(&unk_1003A26F0, &unk_1002C3D70);
    inited = swift_initStackObject();
    v74 = xmmword_1002C1660;
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0xD000000000000010;
    v73[1] = 0x800000010034C010;
    *(inited + 40) = 0x800000010034C010;
    v88 = v49;
    swift_errorRetain();
    v73[0] = sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v63 = String.init<A>(describing:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 48) = v63;
    *(inited + 56) = v64;
    v65 = sub_100184010(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FEC8, &unk_1002C37B0);
    sub_1000C2288(0x1Bu, v65, v60, v61);

    sub_10000BE18(v59 + 2, v59[5]);
    type metadata accessor for CertificateManager();
    sub_10004CE60();
    v66 = *sub_10000BE18(v59 + 2, v59[5]);
    v68 = v79;
    v67 = v80;
    sub_10004BE4C();
    sub_100009548(v68, v67);
    sub_100009548(v76, v77);
    sub_100009548(v83, v78);
    sub_10001A074(v81, v84);
  }

  else
  {
    sub_100009548(v57, v56);
    sub_100009548(v48, v46);
    sub_100009548(v83, v50);
    return sub_10001A074(v81, v84);
  }
}