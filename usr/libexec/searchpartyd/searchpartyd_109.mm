uint64_t sub_100B637E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for UUID();
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  __chkstk_darwin(v7);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_1016B65F8, &unk_1013D8F88);
  v11 = *(v10 - 8);
  v47 = v10;
  v48 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v16 = *(*(v15 - 1) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v19[v17[6]];
  *v20 = xmmword_10138BBF0;
  v53 = &v19[v17[7]];
  v54 = v20;
  *v53 = xmmword_10138BBF0;
  v21 = v17[10];
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v51 = v21;
  v24 = v19;
  v23(&v19[v21], 1, 1, v22);
  v26 = a1[3];
  v25 = a1[4];
  v52 = a1;
  sub_1000035D0(a1, v26);
  sub_100B671A4();
  v49 = v14;
  v27 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    sub_100007BAC(v52);
    sub_100006654(*v54, *(v54 + 1));
    sub_100006654(*v53, *(v53 + 1));

    return sub_10000B3A8(v24 + v51, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    v43 = v22;
    v50 = v6;
    LOBYTE(v55) = 0;
    sub_100003FAC(&qword_101698300, &type metadata accessor for UUID);
    v28 = v46;
    v29 = v47;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v45 + 32))(v24, v28, v7);
    LOBYTE(v55) = 1;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = (v24 + v15[5]);
    *v31 = v30;
    v31[1] = v32;
    v57 = 2;
    sub_10049DECC();
    v46 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v33 = v55;
    v34 = v54;
    sub_100006654(*v54, *(v54 + 1));
    *v34 = v33;
    v57 = 3;
    sub_10049EB50();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = v55;
    v36 = v53;
    sub_100006654(*v53, *(v53 + 1));
    *v36 = v35;
    v57 = 4;
    sub_100157E1C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v37 = v24 + v15[8];
    v38 = v56;
    *v37 = v55;
    *(v37 + 16) = v38;
    LOBYTE(v55) = 5;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = (v24 + v15[9]);
    *v40 = v39;
    v40[1] = v41;
    LOBYTE(v55) = 6;
    sub_100003FAC(&qword_101697F40, &type metadata accessor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v48 + 8))(v49, v29);
    sub_1008CCF08(v50, v24 + v51);
    sub_100B671F8(v24, v44, type metadata accessor for SecureLocationsCachedSharedKey);
    sub_100007BAC(v52);
    return sub_100B67260(v24, type metadata accessor for SecureLocationsCachedSharedKey);
  }
}

uint64_t sub_100B63EBC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6449794D646E6966;
    if (v1 != 1)
    {
      v5 = 0xD000000000000015;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x696669746E656469;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0xD000000000000014;
    if (v1 != 3)
    {
      v3 = 0x6E614872656E776FLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100B63FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B66468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B63FD4(uint64_t a1)
{
  v2 = sub_100B671A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B64010(uint64_t a1)
{
  v2 = sub_100B671A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100B6404C()
{
  Hasher.init(_seed:)();
  sub_100B63408();
  return Hasher._finalize()();
}

Swift::Int sub_100B64090()
{
  Hasher.init(_seed:)();
  sub_100B63408();
  return Hasher._finalize()();
}

uint64_t sub_100B64100()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v3, qword_10177BC38);
  sub_1000076D4(v0, qword_10177BC38);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v5, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_100B6425C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B6608, &qword_1013D8FA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B67150();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v25) = 0;
  type metadata accessor for URL();
  sub_100003FAC(&qword_1016A8188, &type metadata accessor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SecureLocationsCachedSharingKey(0);
    v12 = *(v11 + 20);
    LOBYTE(v25) = 1;
    type metadata accessor for UUID();
    sub_100003FAC(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + *(v11 + 24));
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v17 = v13[4];
    v18 = v13[5];
    v25 = *v13;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v24[15] = 2;
    sub_10002E98C(v25, v14);
    sub_100017D5C(v15, v16);
    sub_10002E98C(v17, v18);
    sub_100A81474();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;
    sub_100006654(v25, v26);
    sub_100016590(v19, v20);
    sub_100006654(v21, v22);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100B644FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v35 = type metadata accessor for UUID();
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  __chkstk_darwin(v35);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016B65D8, &qword_1013D8F78);
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v34 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v15 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694CD8 != -1)
  {
    swift_once();
  }

  v18 = sub_1000076D4(v6, qword_10177BC38);
  (*(v7 + 16))(v17, v18, v6);
  v19 = a1[3];
  v20 = a1[4];
  v36 = a1;
  sub_1000035D0(a1, v19);
  sub_100B67150();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100007BAC(v36);
    return (*(v7 + 8))(v17, v6);
  }

  else
  {
    LOBYTE(v37) = 0;
    sub_100003FAC(&qword_1016A8178, &type metadata accessor for URL);
    v21 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 40))(v17, v10, v6);
    LOBYTE(v37) = 1;
    sub_100003FAC(&qword_101698300, &type metadata accessor for UUID);
    v22 = v30;
    v23 = v35;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v21;
    v25 = v34;
    (*(v33 + 32))(&v17[*(v34 + 20)], v22, v23);
    v40 = 2;
    sub_100A812F4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v31 + 8))(v14, v24);
    v26 = &v17[*(v25 + 24)];
    v27 = v38;
    *v26 = v37;
    *(v26 + 1) = v27;
    *(v26 + 2) = v39;
    sub_100B671F8(v17, v29, type metadata accessor for SecureLocationsCachedSharingKey);
    sub_100007BAC(v36);
    return sub_100B67260(v17, type metadata accessor for SecureLocationsCachedSharingKey);
  }
}

uint64_t sub_100B64A38()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x4B676E6972616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614264726F636572;
  }
}

uint64_t sub_100B64AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B666C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B64AD4(uint64_t a1)
{
  v2 = sub_100B67150();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B64B10(uint64_t a1)
{
  v2 = sub_100B67150();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B64B7C(uint64_t a1)
{
  v14 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = sub_1000BC488();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100003FAC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 16) = v14;
  *(v1 + 24) = v11;
  return v1;
}

uint64_t sub_100B64DD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = type metadata accessor for URL();
  v71 = *(v67 - 8);
  v4 = *(v71 + 64);
  __chkstk_darwin(v67);
  v69 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for UUID();
  v68 = *(v70 - 8);
  v6 = *(v68 + 64);
  __chkstk_darwin(v70);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016B6448, "X-\t");
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v65 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v72 = &v61 - v14;
  __chkstk_darwin(v13);
  v74 = &v61 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = (&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v73 = sub_1000076D4(v21, qword_10177BFF8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "shareKey: getCachedSharingKeys", v24, 2u);
  }

  v25 = *(v2 + 24);
  *v20 = v25;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  v28 = *(v17 + 8);
  v27 = v17 + 8;
  v28(v20, v16);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_100B667F0();
  if (v29)
  {
    v30 = v29;
    v66 = v9;
    v64 = a1;
    v31 = *(v2 + 16);

    v32 = String.utf8Data.getter();
    v61 = v30;
    v34 = v33;
    v76[0] = v32;
    v76[1] = v33;
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100016590(v32, v34);
    v62 = v8;
    v63 = v31;
    v27 = *(v31 + 168);
    if (qword_101694CD8 == -1)
    {
LABEL_8:
      v35 = v67;
      v36 = sub_1000076D4(v67, qword_10177BC38);
      v37 = v71;
      v38 = v69;
      (*(v71 + 16))(v69, v36, v35);
      v39._object = 0x800000010135B5A0;
      v39._countAndFlagsBits = 0xD000000000000014;
      prohibitAsyncContext(functionName:)(v39);
      v75 = type metadata accessor for SecureLocationsCachedSharingKey(0);
      sub_1000BC4D4(&qword_1016B6458, "P-\t");
      v40 = String.init<A>(describing:)();
      v42 = v41;
      v43 = objc_autoreleasePoolPush();
      v44 = *(v27 + 16);
      __chkstk_darwin(v43);
      v45 = v62;
      *(&v61 - 6) = v27;
      *(&v61 - 5) = v45;
      *(&v61 - 4) = v38;
      *(&v61 - 3) = v40;
      *(&v61 - 2) = v42;
      v46 = v74;
      OS_dispatch_queue.sync<A>(execute:)();

      objc_autoreleasePoolPop(v43);

      (*(v37 + 8))(v38, v35);

      (*(v68 + 8))(v45, v70);
      v47 = v72;
      sub_1000D2A70(v46, v72, &qword_1016B6448, "X-\t");
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v76[0] = v51;
        *v50 = 136315138;
        sub_1000D2A70(v47, v65, &qword_1016B6448, "X-\t");
        v52 = String.init<A>(describing:)();
        v54 = v53;
        sub_10000B3A8(v47, &qword_1016B6448, "X-\t");
        v55 = sub_1000136BC(v52, v54, v76);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v48, v49, "shareKey: Returning localstorage cached sharing keys %s", v50, 0xCu);
        sub_100007BAC(v51);
      }

      else
      {

        sub_10000B3A8(v47, &qword_1016B6448, "X-\t");
      }

      return sub_100B66D04(v74, v64);
    }

LABEL_16:
    swift_once();
    goto LABEL_8;
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "shareKey: no myPersonID", v58, 2u);
  }

  v59 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  return (*(*(v59 - 8) + 56))(a1, 1, 1, v59);
}

uint64_t sub_100B65558(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = sub_1000BC4D4(&qword_1016B65C8, &qword_1013D8F70);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B670FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_100017D5C(a3, v15);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100B656F4()
{
  if (*v0)
  {
    result = 0x4B65746176697270;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_100B65730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965)
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

uint64_t sub_100B65810(uint64_t a1)
{
  v2 = sub_100B670FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B6584C(uint64_t a1)
{
  v2 = sub_100B670FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B65888@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100B672C0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100B658D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v10 = *(v23 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v23);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177BFF8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "getSharingKey", v17, 2u);
  }

  v18 = *(v3 + 24);
  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = sub_100B66384;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016498D0;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100003FAC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v24 + 8))(v9, v6);
  (*(v10 + 8))(v13, v23);
}

void sub_100B65C5C(uint64_t a1, void (*a2)(uint64_t, unint64_t, void *))
{
  v3 = sub_1000BC4D4(&qword_1016B6448, "X-\t");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31[-v5];
  v7 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100B64DD8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &qword_1016B6448, "X-\t");
    if (qword_101694E48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177BFF8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "getSharingKey failed: No cached sharing key", v15, 2u);
    }

    type metadata accessor for SecureLocationsError(0);
    v35 = 3;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003FAC(&unk_1016B0E20, type metadata accessor for SecureLocationsError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = v32;
    a2(0, 0xF000000000000000, v32);
  }

  else
  {
    sub_100B663B0(v6, v11);
    v17 = &v11[*(v7 + 24)];
    v18 = *(v17 + 5);
    if (v18 >> 60 == 15)
    {
      if (qword_101694E48 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000076D4(v19, qword_10177BFF8);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "getSharingKey failed: Missing private key", v22, 2u);
      }

      type metadata accessor for SecureLocationsError(0);
      v35 = 3;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003FAC(&unk_1016B0E20, type metadata accessor for SecureLocationsError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v23 = v32;
      a2(0, 0xF000000000000000, v32);
    }

    else
    {
      v24 = *(v17 + 4);
      v25 = type metadata accessor for PropertyListEncoder();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_100017D5C(v24, v18);
      PropertyListEncoder.init()();
      v32 = 0;
      v33 = v24;
      v34 = v18;
      sub_100017D5C(v24, v18);
      sub_100B66414();
      v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v30 = v29;
      sub_100017D5C(v28, v29);
      a2(v28, v30, 0);
      sub_100016590(v28, v30);
      sub_100006654(v24, v18);

      sub_100006654(v24, v18);
      sub_100016590(v28, v30);
    }

    sub_100B67260(v11, type metadata accessor for SecureLocationsCachedSharingKey);
  }
}

uint64_t sub_100B663B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100B66414()
{
  result = qword_1016B6450;
  if (!qword_1016B6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6450);
  }

  return result;
}

uint64_t sub_100B66468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449794D646E6966 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010136DDD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010136DDF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010136DE10 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100B666C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614264726F636572 && a2 == 0xED00004C52556573;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B676E6972616873 && a2 == 0xEB00000000737965)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100B667F0()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(ACAccountStore) init];
  v6 = [v5 aa_primaryAppleAccount];

  if (!v6)
  {
    if (qword_101694E48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BFF8);
    v6 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v6, v15, "Could not obtain aa_primaryAppleAccount while getting myPersonID !", v16, 2u);
    }

    goto LABEL_14;
  }

  v7 = [v6 aa_personID];
  if (!v7)
  {
    if (qword_101694E48 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BFF8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Primary AppleAccount has nil aa_personID!", v20, 2u);
    }

LABEL_14:
    return 0;
  }

  v8 = v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;

  (*(v1 + 8))(v4, v0);
  if (v11 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    sub_100017D5C(v9, v11);
    v21 = Data.base64EncodedString(options:)(0);
    sub_100006654(v9, v11);
    v39 = v21;
    v37 = 61;
    v38 = 0xE100000000000000;
    v35 = 126;
    v36 = 0xE100000000000000;
    sub_1000DF96C();
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v13 = v22;
  }

  if (qword_101694E48 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177BFF8);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39._countAndFlagsBits = v27;
    *v26 = 136315138;
    if (v13)
    {
      v28 = v12;
    }

    else
    {
      v28 = 7104878;
    }

    v34 = v9;
    if (v13)
    {
      v29 = v13;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v30 = sub_1000136BC(v28, v29, &v39._countAndFlagsBits);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "MyPersonID %s", v26, 0xCu);
    sub_100007BAC(v27);

    v31 = v34;
  }

  else
  {
    v31 = v9;
  }

  sub_100006654(v31, v11);

  return v12;
}

uint64_t sub_100B66D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B6448, "X-\t");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100B66DBC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016A0E30);
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &qword_1016B64C8);
      if (v2 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169D5C8);
        if (v3 <= 0x3F)
        {
          sub_1002359B8(319, &qword_1016BD350);
          if (v4 <= 0x3F)
          {
            sub_100157BAC();
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

uint64_t sub_100B66F20()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100B66FAC(uint64_t a1)
{
  *(a1 + 8) = sub_100003FAC(&qword_1016B65A8, type metadata accessor for SecureLocationsCachedSharingKey);
  result = sub_100003FAC(&qword_1016B65B0, type metadata accessor for SecureLocationsCachedSharingKey);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100B67078(uint64_t a1)
{
  *(a1 + 8) = sub_100003FAC(&qword_1016B65C0, type metadata accessor for SecureLocationsCachedSharedKey);
  result = sub_100003FAC(&qword_1016B0E18, type metadata accessor for SecureLocationsCachedSharedKey);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B670FC()
{
  result = qword_1016B65D0;
  if (!qword_1016B65D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B65D0);
  }

  return result;
}

unint64_t sub_100B67150()
{
  result = qword_1016B65E0;
  if (!qword_1016B65E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B65E0);
  }

  return result;
}

unint64_t sub_100B671A4()
{
  result = qword_1016B65F0;
  if (!qword_1016B65F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B65F0);
  }

  return result;
}

uint64_t sub_100B671F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B67260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100B672C0(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6600, &qword_1013D8F98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100B670FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[16] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[15] = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

unint64_t sub_100B674B8()
{
  result = qword_1016B6610;
  if (!qword_1016B6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6610);
  }

  return result;
}

unint64_t sub_100B67510()
{
  result = qword_1016B6618;
  if (!qword_1016B6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6618);
  }

  return result;
}

unint64_t sub_100B67568()
{
  result = qword_1016B6620;
  if (!qword_1016B6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6620);
  }

  return result;
}

unint64_t sub_100B675C0()
{
  result = qword_1016B6628;
  if (!qword_1016B6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6628);
  }

  return result;
}

unint64_t sub_100B67618()
{
  result = qword_1016B6630;
  if (!qword_1016B6630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6630);
  }

  return result;
}

unint64_t sub_100B67670()
{
  result = qword_1016B6638;
  if (!qword_1016B6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6638);
  }

  return result;
}

unint64_t sub_100B676C8()
{
  result = qword_1016B6640;
  if (!qword_1016B6640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6640);
  }

  return result;
}

unint64_t sub_100B67720()
{
  result = qword_1016B6648;
  if (!qword_1016B6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6648);
  }

  return result;
}

unint64_t sub_100B67778()
{
  result = qword_1016B6650;
  if (!qword_1016B6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6650);
  }

  return result;
}

unint64_t sub_100B677CC()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_100B678E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100B679E4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100B6790C(uint64_t a1)
{
  *(a1 + 8) = sub_100B6793C();
  result = sub_100B67990();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B6793C()
{
  result = qword_1016B6658;
  if (!qword_1016B6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6658);
  }

  return result;
}

unint64_t sub_100B67990()
{
  result = qword_1016B6660;
  if (!qword_1016B6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6660);
  }

  return result;
}

uint64_t sub_100B679E4(uint64_t *a1)
{
  v3 = type metadata accessor for Endianness();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  v6 = sub_10015049C(v21, v21[3]);
  v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v1)
  {
LABEL_10:
    sub_100007BAC(v21);
    sub_100007BAC(a1);
    return v6;
  }

  v9 = v7;
  v10 = v8;
  sub_100017D5C(v7, v8);
  static Endianness.current.getter();
  sub_1000198E8();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE1(v22) == 1 || (v6 = v22, v22 >= 3u))
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C418);
    sub_100017D5C(v9, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_100016590(v9, v10);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = Data.hexString.getter();
      v18 = sub_1000136BC(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Invalid FMNId status: %s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    v6 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v6 - 8) + 104))(v19, enum case for BinaryEncodingError.encodingError(_:), v6);
    swift_willThrow();
    sub_100016590(v9, v10);
    goto LABEL_10;
  }

  sub_100016590(v9, v10);
  sub_100007BAC(v21);
  sub_100007BAC(a1);
  return v6;
}

unint64_t sub_100B67D08()
{
  result = qword_1016B6668;
  if (!qword_1016B6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6668);
  }

  return result;
}

uint64_t sub_100B67D6C()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100101824();
  v54 = FixedWidthInteger.data.getter();
  v59 = v2;
  static String.Encoding.ascii.getter();
  sub_100165078();
  v3 = String.init<A>(bytes:encoding:)();
  v5 = v4;
  sub_100016590(v54, v59);
  if (!v5)
  {
    goto LABEL_10;
  }

  v55 = FixedWidthInteger.data.getter();
  v60 = v6;
  static String.Encoding.ascii.getter();
  v7 = String.init<A>(bytes:encoding:)();
  v9 = v8;
  sub_100016590(v55, v60);
  if (!v9)
  {
LABEL_9:

LABEL_10:
    v24 = FixedWidthInteger.data.getter();
    v26 = v25;
    v27 = Data.hexString.getter();
    sub_100016590(v24, v26);
    v58 = v27;
    v28._countAndFlagsBits = 46;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = FixedWidthInteger.data.getter();
    v31 = v30;
    v32 = Data.hexString.getter();
    v34 = v33;
    sub_100016590(v29, v31);
    v35._countAndFlagsBits = v32;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 46;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = FixedWidthInteger.data.getter();
    v39 = v38;
    v40 = Data.hexString.getter();
    v42 = v41;
    sub_100016590(v37, v39);
    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 46;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = FixedWidthInteger.data.getter();
    v47 = v46;
    v48 = Data.hexString.getter();
    v50 = v49;
    sub_100016590(v45, v47);
    v51._countAndFlagsBits = v48;
    v51._object = v50;
    String.append(_:)(v51);
    goto LABEL_11;
  }

  v53 = v7;
  v56 = FixedWidthInteger.data.getter();
  v61 = v10;
  static String.Encoding.ascii.getter();
  v11 = String.init<A>(bytes:encoding:)();
  v13 = v12;
  sub_100016590(v56, v61);
  if (!v13)
  {
LABEL_8:

    goto LABEL_9;
  }

  v57 = FixedWidthInteger.data.getter();
  v62 = v14;
  static String.Encoding.ascii.getter();
  v15 = String.init<A>(bytes:encoding:)();
  v17 = v16;
  sub_100016590(v57, v62);
  if (!v17)
  {

    goto LABEL_8;
  }

  v58 = v3;
  v18._countAndFlagsBits = 46;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v53;
  v19._object = v9;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 46;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v11;
  v21._object = v13;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v15;
  v23._object = v17;
  String.append(_:)(v23);
LABEL_11:

  return v58;
}

uint64_t sub_100B68148(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6688, &qword_1013D95C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B6985C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100B68328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B69524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B68350(uint64_t a1)
{
  v2 = sub_100B6985C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B6838C(uint64_t a1)
{
  v2 = sub_100B6985C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B683C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100B69668(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100B68400(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_100B68148(a1);
}

uint64_t sub_100B6841C()
{
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  v7 = v0[3];
  v8 = CustomStringConvertible.typeDescription.getter();
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = sub_100B67D6C();
  String.append(_:)(v2);

  return v8;
}

Swift::Int sub_100B684A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_100B68520()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100B68578()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

unint64_t sub_100B68634()
{
  result = qword_1016B6670;
  if (!qword_1016B6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6670);
  }

  return result;
}

uint64_t sub_100B68688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v47 = a2;
  v44 = 46;
  v45 = 0xE100000000000000;
  sub_1000DF96C();
  v11 = StringProtocol.components<A>(separatedBy:)();

  if (v11[2] != 4)
  {
    goto LABEL_8;
  }

  v12 = v11[4];
  v13 = v11[5];

  static String.Encoding.ascii.getter();
  v14 = String.data(using:allowLossyConversion:)();
  v16 = v15;

  v17 = *(v7 + 8);
  v17(v10, v6);
  if (v16 >> 60 == 15)
  {
    goto LABEL_8;
  }

  sub_100017D5C(v14, v16);
  static Endianness.current.getter();
  v18 = sub_100101824();
  result = FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v46) == 1)
  {
    goto LABEL_6;
  }

  v42 = v18;
  if (v11[2] < 2uLL)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v41 = v46;
  v20 = v11[6];
  v21 = v11[7];

  static String.Encoding.ascii.getter();
  v43 = String.data(using:allowLossyConversion:)();
  v23 = v22;

  v17(v10, v6);
  if (v23 >> 60 == 15)
  {
LABEL_6:
    v24 = v14;
    v25 = v16;
LABEL_7:
    sub_100006654(v24, v25);
LABEL_8:

    return 0;
  }

  sub_100017D5C(v43, v23);
  static Endianness.current.getter();
  v26 = v23;
  result = FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE4(v46) == 1)
  {
    sub_100006654(v14, v16);
    v24 = v43;
LABEL_12:
    v25 = v26;
    goto LABEL_7;
  }

  v40 = v23;
  if (v11[2] < 3uLL)
  {
    goto LABEL_24;
  }

  v38 = v46;
  v27 = v11[8];
  v28 = v11[9];

  static String.Encoding.ascii.getter();
  v39 = String.data(using:allowLossyConversion:)();
  v30 = v29;

  v17(v10, v6);
  if (v30 >> 60 == 15)
  {
    sub_100006654(v14, v16);
    v24 = v43;
    v25 = v40;
    goto LABEL_7;
  }

  sub_100017D5C(v39, v30);
  static Endianness.current.getter();
  v26 = v30;
  result = FixedWidthInteger.init(data:ofEndianness:)();
  v31 = v43;
  if (BYTE4(v46) == 1)
  {
    sub_100006654(v14, v16);
    sub_100006654(v31, v40);
    v24 = v39;
    goto LABEL_12;
  }

  v37 = v26;
  if (v11[2] < 4uLL)
  {
    goto LABEL_25;
  }

  v36 = v46;
  v32 = v11[10];
  v33 = v11[11];

  static String.Encoding.ascii.getter();
  String.data(using:allowLossyConversion:)();
  v35 = v34;

  v17(v10, v6);
  if (v35 >> 60 == 15)
  {
    sub_100006654(v14, v16);
    sub_100006654(v43, v40);
    sub_100006654(v39, v37);
    return 0;
  }

  static Endianness.current.getter();
  FixedWidthInteger.init(data:ofEndianness:)();
  sub_100006654(v14, v16);
  sub_100006654(v43, v40);
  sub_100006654(v39, v37);
  if (BYTE4(v46) == 1)
  {
    return 0;
  }

  return v41 | (v38 << 32);
}

void sub_100B68B98(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_17;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 == 19)
      {
        goto LABEL_8;
      }

LABEL_17:
      v23 = 0x800000010136DE90;
      sub_100233888();
      swift_allocError();
      v25 = 0xD000000000000013;
      goto LABEL_18;
    }

    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 19)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    goto LABEL_114;
  }

  if (BYTE6(a2) != 19)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (Data._Representation.subscript.getter() != 46 || Data._Representation.subscript.getter() != 46 || Data._Representation.subscript.getter() != 46)
  {
    v23 = 0x800000010136DEB0;
    sub_100233888();
    swift_allocError();
    v25 = 0xD000000000000012;
LABEL_18:
    *v24 = v25;
    *(v24 + 8) = v23;
    *(v24 + 16) = 1;
    swift_willThrow();
    v26 = a1;
    v27 = a2;
LABEL_19:
    sub_100016590(v26, v27);
    return;
  }

  v75 = Data.subdata(in:)();
  v12 = v11;
  v71 = Data.subdata(in:)();
  v14 = v13;
  v69 = Data.subdata(in:)();
  v16 = v15;
  v73 = v12;
  v74 = Data.subdata(in:)();
  v18 = v12 >> 62;
  v70 = v14;
  v19 = v14 >> 62;
  v68 = v16;
  v20 = v16 >> 62;
  v72 = v17;
  v21 = v17 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v18)
    {
      v22 = BYTE6(v12);
      goto LABEL_26;
    }

LABEL_24:
    LODWORD(v22) = HIDWORD(v75) - v75;
    if (!__OFSUB__(HIDWORD(v75), v75))
    {
      v22 = v22;
      goto LABEL_26;
    }

LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v18 != 2)
  {
    goto LABEL_74;
  }

  v29 = *(v75 + 16);
  v28 = *(v75 + 24);
  v9 = __OFSUB__(v28, v29);
  v22 = v28 - v29;
  if (v9)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_26:
  if (v22 != 4)
  {
    goto LABEL_74;
  }

  if (v19 <= 1)
  {
    if (!v19)
    {
      v30 = BYTE6(v70);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v19 != 2)
  {
    goto LABEL_74;
  }

  v32 = *(v71 + 16);
  v31 = *(v71 + 24);
  v9 = __OFSUB__(v31, v32);
  v30 = v31 - v32;
  if (v9)
  {
    __break(1u);
LABEL_34:
    LODWORD(v30) = HIDWORD(v71) - v71;
    if (__OFSUB__(HIDWORD(v71), v71))
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v30 = v30;
  }

LABEL_36:
  if (v30 != 4)
  {
    goto LABEL_74;
  }

  if (v20 <= 1)
  {
    if (!v20)
    {
      v33 = BYTE6(v68);
      goto LABEL_46;
    }

LABEL_44:
    LODWORD(v33) = HIDWORD(v69) - v69;
    if (__OFSUB__(HIDWORD(v69), v69))
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v33 = v33;
    goto LABEL_46;
  }

  if (v20 != 2)
  {
    goto LABEL_74;
  }

  v35 = *(v69 + 16);
  v34 = *(v69 + 24);
  v9 = __OFSUB__(v34, v35);
  v33 = v34 - v35;
  if (v9)
  {
    __break(1u);
    goto LABEL_44;
  }

LABEL_46:
  if (v33 != 4)
  {
    goto LABEL_74;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      v36 = BYTE6(v17);
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v21 != 2)
  {
LABEL_74:
    _StringGuts.grow(_:)(40);

    if (v18 > 1)
    {
      if (v18 != 2 || !__OFSUB__(*(v75 + 24), *(v75 + 16)))
      {
        goto LABEL_82;
      }

      __break(1u);
    }

    else if (!v18)
    {
      goto LABEL_82;
    }

    if (!__OFSUB__(HIDWORD(v75), v75))
    {
LABEL_82:
      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 978600480;
      v44._object = 0xE400000000000000;
      String.append(_:)(v44);
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          v45 = v70;
          v46 = v71;
          goto LABEL_92;
        }

        v45 = v70;
        v46 = v71;
        if (!__OFSUB__(*(v71 + 24), *(v71 + 16)))
        {
          goto LABEL_92;
        }

        __break(1u);
      }

      else if (!v19)
      {
        v45 = v70;
        v46 = v71;
LABEL_92:
        v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v47);

        v48._countAndFlagsBits = 978603296;
        v48._object = 0xE400000000000000;
        String.append(_:)(v48);
        if (v20 > 1)
        {
          if (v20 != 2)
          {
            v49 = v68;
            v50 = v69;
            goto LABEL_102;
          }

          v49 = v68;
          v50 = v69;
          if (!__OFSUB__(*(v69 + 24), *(v69 + 16)))
          {
            goto LABEL_102;
          }

          __break(1u);
        }

        else if (!v20)
        {
          v49 = v68;
          v50 = v69;
LABEL_102:
          v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v51);

          v52._countAndFlagsBits = 976243744;
          v52._object = 0xE400000000000000;
          String.append(_:)(v52);
          if (v21 > 1)
          {
            if (v21 != 2 || !__OFSUB__(*(v74 + 24), *(v74 + 16)))
            {
              goto LABEL_110;
            }

            __break(1u);
          }

          else if (!v21)
          {
            goto LABEL_110;
          }

          if (!__OFSUB__(HIDWORD(v74), v74))
          {
LABEL_110:
            v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v53);

            sub_100233888();
            swift_allocError();
            *v54 = 0xD000000000000014;
            *(v54 + 8) = 0x800000010136DED0;
            *(v54 + 16) = 1;
            swift_willThrow();
            sub_100016590(a1, a2);
            sub_100016590(v74, v72);
            sub_100016590(v50, v49);
            v55 = v46;
            v56 = v45;
            goto LABEL_111;
          }

          goto LABEL_119;
        }

        v50 = v69;
        if (!__OFSUB__(HIDWORD(v69), v69))
        {
          v49 = v68;
          goto LABEL_102;
        }

LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v46 = v71;
      if (!__OFSUB__(HIDWORD(v71), v71))
      {
        v45 = v70;
        goto LABEL_92;
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v38 = *(v74 + 16);
  v37 = *(v74 + 24);
  v9 = __OFSUB__(v37, v38);
  v36 = v37 - v38;
  if (!v9)
  {
LABEL_56:
    if (v36 == 4)
    {
      sub_100017D5C(v75, v12);
      static Endianness.current.getter();
      sub_100101824();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (v77)
      {
        v39 = 0;
      }

      else
      {
        v39 = v76;
      }

      v67 = v39;
      sub_100017D5C(v71, v70);
      static Endianness.current.getter();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (v77)
      {
        v40 = 0;
      }

      else
      {
        v40 = v76;
      }

      v66 = v40;
      sub_100017D5C(v69, v68);
      static Endianness.current.getter();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (v77)
      {
        v41 = 0;
      }

      else
      {
        v41 = v76;
      }

      sub_100017D5C(v74, v72);
      static Endianness.current.getter();
      FixedWidthInteger.init(data:ofEndianness:)();
      if (v77)
      {
        v42 = 0;
      }

      else
      {
        v42 = v76;
      }

      if (v67 && v66 && v41 && v42)
      {
        sub_100016590(v74, v72);
        sub_100016590(v69, v68);
        sub_100016590(v71, v70);
        sub_100016590(v75, v73);
        sub_100016590(a1, a2);
        return;
      }

      _StringGuts.grow(_:)(57);
      v57._countAndFlagsBits = 0xD000000000000025;
      v57._object = 0x800000010136DEF0;
      String.append(_:)(v57);
      v58._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v58);

      v59._countAndFlagsBits = 978600480;
      v59._object = 0xE400000000000000;
      String.append(_:)(v59);
      v60._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v60);

      v61._countAndFlagsBits = 978603296;
      v61._object = 0xE400000000000000;
      String.append(_:)(v61);
      v62._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v62);

      v63._countAndFlagsBits = 976243744;
      v63._object = 0xE400000000000000;
      String.append(_:)(v63);
      v64._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v64);

      sub_100233888();
      swift_allocError();
      *v65 = 0;
      *(v65 + 8) = 0xE000000000000000;
      *(v65 + 16) = 1;
      swift_willThrow();
      sub_100016590(a1, a2);
      sub_100016590(v74, v72);
      sub_100016590(v69, v68);
      v56 = v70;
      v55 = v71;
LABEL_111:
      sub_100016590(v55, v56);
      v26 = v75;
      v27 = v73;
      goto LABEL_19;
    }

    goto LABEL_74;
  }

  __break(1u);
LABEL_54:
  LODWORD(v36) = HIDWORD(v74) - v74;
  if (!__OFSUB__(HIDWORD(v74), v74))
  {
    v36 = v36;
    goto LABEL_56;
  }

LABEL_122:
  __break(1u);
}

uint64_t sub_100B69524(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 13388 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 21570 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 21581 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 12364 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100B69668(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6678, &qword_1013D95C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B6985C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v17 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100007BAC(a1);
  return v9 | (v10 << 32);
}

unint64_t sub_100B6985C()
{
  result = qword_1016B6680;
  if (!qword_1016B6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6680);
  }

  return result;
}

unint64_t sub_100B698C4()
{
  result = qword_1016B6690;
  if (!qword_1016B6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6690);
  }

  return result;
}

unint64_t sub_100B6991C()
{
  result = qword_1016B6698;
  if (!qword_1016B6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6698);
  }

  return result;
}

unint64_t sub_100B69974()
{
  result = qword_1016B66A0;
  if (!qword_1016B66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B66A0);
  }

  return result;
}

uint64_t sub_100B699C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v64 = &v60 - v9;
  v10 = __chkstk_darwin(v8);
  v63 = &v60 - v11;
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v60 - v20;
  v21 = [v2 data];
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v22;
  v25 = v23;
  v26 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    v61 = v19;
    if (v26 != 2)
    {
LABEL_47:
      sub_100016590(v24, v25);
      goto LABEL_48;
    }

    v28 = v14;
    v29 = v2;
    v30 = v7;
    v31 = v21;
    v32 = v15;
    v33 = *(v22 + 16);
    v34 = *(v22 + 24);
    sub_100016590(v22, v23);
    v27 = v34 - v33;
    if (!__OFSUB__(v34, v33))
    {
      v15 = v32;
      v21 = v31;
      v7 = v30;
      v2 = v29;
      v14 = v28;
      v19 = v61;
      if (v27 == 16)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v26)
  {
    v41 = HIDWORD(v22);
    sub_100016590(v22, v23);
    LODWORD(v27) = v41 - v24;
    if (!__OFSUB__(v41, v24))
    {
      v27 = v27;
      if (v27 == 16)
      {
        goto LABEL_14;
      }

LABEL_8:
      if (v27 == 4)
      {
        v25 = v2;
        v62 = v21;
        v63 = v7;
        v35 = v64;
        UUID.init(uuidString:)();
        v36 = *(v15 + 48);
        if (v36(v35, 1, v14) != 1)
        {
          v64 = *(v15 + 32);
          (v64)(v19, v35, v14);
          v66[0] = UUID.bytes.getter();
          v37 = [v2 data];
          v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          v25 = v15;
          sub_100B6A404(v24, v39, v66, sub_100B6A270, sub_100B6A270);
          sub_100016590(v24, v39);

          v40 = v63;
          UUID.init(bytes:)();
          if (v36(v40, 1, v14) != 1)
          {
            (*(v15 + 8))(v19, v14);

            (v64)(v65, v40, v14);
          }

          goto LABEL_45;
        }

        __break(1u);
      }

      else
      {
        if (v27 != 2)
        {
LABEL_48:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        UUID.init(uuidString:)();
        v64 = *(v15 + 48);
        if ((v64)(v13, 1, v14) != 1)
        {
          v47 = *(v15 + 32);
          v48 = v62;
          v47();
          v66[0] = UUID.bytes.getter();
          v49 = [v2 data];
          v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          v25 = v15;
          sub_100B6A404(v50, v52, v66, sub_100B6A1B4, sub_100B6A1B4);
          sub_100016590(v50, v52);
          v24 = v66[0];

          v53 = v63;
          UUID.init(bytes:)();
          if ((v64)(v53, 1, v14) != 1)
          {
            (*(v25 + 8))(v48, v14);

            (v47)(v65, v53, v14);
          }

          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    goto LABEL_39;
  }

  sub_100016590(v22, v23);
  v27 = BYTE6(v25);
  if (BYTE6(v25) != 16)
  {
    goto LABEL_8;
  }

LABEL_14:

  v42 = [v2 data];
  v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v46 = v45 >> 62;
  if ((v45 >> 62) > 1)
  {
    if (v46 != 2)
    {
      memset(v66, 0, 14);
      goto LABEL_37;
    }

    v55 = *(v43 + 16);
    v56 = *(v43 + 24);
    v57 = __DataStorage._bytes.getter();
    if (v57)
    {
      v58 = __DataStorage._offset.getter();
      if (__OFSUB__(v55, v58))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v57 += v55 - v58;
    }

    if (!__OFSUB__(v56, v55))
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  else if (!v46)
  {
    v66[0] = v43;
    LOWORD(v66[1]) = v45;
    BYTE2(v66[1]) = BYTE2(v45);
    BYTE3(v66[1]) = BYTE3(v45);
    BYTE4(v66[1]) = BYTE4(v45);
    BYTE5(v66[1]) = BYTE5(v45);
LABEL_37:
    sub_100B6A3AC(v66);
    return sub_100016590(v43, v45);
  }

  if (v43 >> 32 < v43)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v57 = __DataStorage._bytes.getter();
  if (v57)
  {
    v59 = __DataStorage._offset.getter();
    if (!__OFSUB__(v43, v59))
    {
      v57 += v43 - v59;
      goto LABEL_33;
    }

LABEL_42:
    __break(1u);
  }

LABEL_33:
  __DataStorage._length.getter();
  sub_100B6A3AC(v57);

  return sub_100016590(v43, v45);
}

uint64_t sub_100B6A1B4(_BYTE *a1, uint64_t a2, char **a3)
{
  v4 = a1;
  v5 = *a1;
  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100607450(v6);
    *a3 = v6;
  }

  if (*(v6 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v6[34] = v5;
    v6 = *a3;
    LOBYTE(v4) = v4[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (result)
    {
      goto LABEL_5;
    }
  }

  result = sub_100607450(v6);
  v6 = result;
  *a3 = result;
LABEL_5:
  if (*(v6 + 2) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v6[35] = v4;
  }

  return result;
}

uint64_t sub_100B6A270(_BYTE *a1, uint64_t a2, char **a3)
{
  v4 = a1;
  v5 = *a1;
  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v6 + 2))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = sub_100607450(v6);
    *a3 = v6;
    if (*(v6 + 2))
    {
LABEL_3:
      v6[32] = v5;
      v6 = *a3;
      v5 = v4[1];
      v8 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  v6 = sub_100607450(v6);
  *a3 = v6;
LABEL_4:
  if (*(v6 + 2) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v6[33] = v5;
    v6 = *a3;
    v5 = v4[2];
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v6 = sub_100607450(v6);
  *a3 = v6;
LABEL_6:
  if (*(v6 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v6[34] = v5;
    v6 = *a3;
    LOBYTE(v4) = v4[3];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (result)
    {
      goto LABEL_8;
    }
  }

  result = sub_100607450(v6);
  v6 = result;
  *a3 = result;
LABEL_8:
  if (*(v6 + 2) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v6[35] = v4;
  }

  return result;
}

uint64_t sub_100B6A3AC(unsigned __int8 *a1)
{
  v1 = *(a1 + 1);
  v2 = a1[7];
  v3 = a1[6];
  v4 = a1[5];
  v5 = a1[4];
  v6 = a1[3];
  v7 = a1[2];
  v8 = a1[1];
  v9 = *a1;
  return UUID.init(uuid:)();
}

uint64_t sub_100B6A404(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a4(v10, v6);
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    return sub_100B6A52C(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  if (v5)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100B6A52C(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  BYTE4(v10[1]) = BYTE4(a2);
  BYTE5(v10[1]) = BYTE5(a2);
  v6 = v10 + BYTE6(a2);
  return a4(v10, v6);
}

uint64_t sub_100B6A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v10 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = __DataStorage._length.getter();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return a5(v10, v16, a4);
}

uint64_t sub_100B6A5D8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BC50);
  sub_1000076D4(v0, qword_10177BC50);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100B6A658()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B66A8);
  v1 = sub_1000076D4(v0, qword_1016B66A8);
  if (qword_101694CE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BC50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100B6A720(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v2[15] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&unk_1016AA510, &unk_101393150) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for DeviceEvent(0);
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_1016B67A8, &qword_1013D97C8) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v11 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v2[31] = v11;
  v12 = *(v11 - 8);
  v2[32] = v12;
  v13 = *(v12 + 64) + 15;
  v2[33] = swift_task_alloc();
  v14 = type metadata accessor for Response();
  v2[34] = v14;
  v15 = *(v14 - 8);
  v2[35] = v15;
  v16 = *(v15 + 64) + 15;
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v17 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v2[38] = v17;
  v18 = *(v17 + 64) + 15;
  v2[39] = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  v2[40] = v19;
  v20 = *(v19 - 8);
  v2[41] = v20;
  v21 = *(v20 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_100B6AAA8, v1, 0);
}

uint64_t sub_100B6AAA8()
{
  if (qword_101694CE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[44] = sub_1000076D4(v1, qword_1016B66A8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Preparing LocalFindable location fetching.", v4, 2u);
  }

  v5 = v0[13];

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = [objc_opt_self() currentDevice];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 uniqueDeviceIdentifier];

      if (v9)
      {
        v10 = v0[41];
        v11 = v0[38];
        v12 = v0[13];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v14;
        v56 = v13;

        sub_101123D4C(0, v6, 0);
        v15 = v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
        v16 = (v10 + 16);
        v60 = *(v11 + 72);
        do
        {
          v17 = v0[43];
          v19 = v0[39];
          v18 = v0[40];
          sub_100B72A30(v15, v19, type metadata accessor for LocalFindableAccessoryRecord);
          v20 = *v16;
          v0[57] = *v16;
          v0[58] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v20(v17, v19, v18);
          sub_100B72BF8(v19, type metadata accessor for LocalFindableAccessoryRecord);
          v22 = _swiftEmptyArrayStorage[2];
          v21 = _swiftEmptyArrayStorage[3];
          if (v22 >= v21 >> 1)
          {
            sub_101123D4C(v21 > 1, v22 + 1, 1);
          }

          v23 = v0[43];
          v24 = v0[40];
          _swiftEmptyArrayStorage[2] = v22 + 1;
          v25 = _swiftEmptyArrayStorage + ((*(v10 + 80) + 32) & ~*(v10 + 80));
          v26 = *(v10 + 72);
          v0[59] = v26;
          v27 = &v25[v26 * v22];
          v28 = *(v10 + 32);
          v0[60] = v28;
          v0[61] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v28(v27, v23, v24);
          v15 += v60;
          --v6;
        }

        while (v6);
        v46 = v0[14];
        sub_101058BF4(v56, v54, _swiftEmptyArrayStorage, (v0 + 2));
        v47 = *(v46 + 112);

        v48 = swift_task_alloc();
        v0[45] = v48;
        *v48 = v0;
        v48[1] = sub_100B6AFC0;

        return sub_101058F64((v0 + 2), v47);
      }
    }

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to get device identifier", v31, 2u);
    }

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  sub_100B72A98();
  swift_allocError();
  *v33 = v32;
  swift_willThrow();
  v35 = v0[42];
  v34 = v0[43];
  v36 = v0[39];
  v38 = v0[36];
  v37 = v0[37];
  v39 = v0[33];
  v40 = v0[29];
  v41 = v0[30];
  v43 = v0[27];
  v42 = v0[28];
  v49 = v0[26];
  v50 = v0[25];
  v51 = v0[24];
  v52 = v0[23];
  v53 = v0[22];
  v55 = v0[21];
  v57 = v0[20];
  v58 = v0[17];
  v59 = v0[16];

  v44 = v0[1];

  return v44();
}

uint64_t sub_100B6AFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v4 + 360);
  v6 = *v4;
  v6[46] = a1;
  v6[47] = a2;
  v6[48] = a3;

  if (v3)
  {
    v8 = v6[42];
    v7 = v6[43];
    v9 = v6[39];
    v11 = v6[36];
    v10 = v6[37];
    v12 = v6[33];
    v14 = v6[29];
    v13 = v6[30];
    v15 = v6[28];
    v21 = v6[27];
    v22 = v6[26];
    v23 = v6[25];
    v24 = v6[24];
    v25 = v6[23];
    v26 = v6[22];
    v27 = v6[21];
    v28 = v6[20];
    v16 = v6[16];
    v29 = v6[17];

    v17 = v6[1];

    return v17();
  }

  else
  {
    v6[49] = type metadata accessor for PencilSecureLocationsFetch();
    v6[50] = swift_allocObject();
    swift_defaultActor_initialize();
    v19 = async function pointer to daemon.getter[1];
    v20 = swift_task_alloc();
    v6[51] = v20;
    *v20 = v6;
    v20[1] = sub_100B6B254;

    return daemon.getter();
  }
}

uint64_t sub_100B6B254(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 408);
  v12 = *v1;
  v3[52] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[53] = v6;
  v7 = type metadata accessor for Daemon();
  v3[54] = v7;
  v8 = type metadata accessor for AccountService();
  v9 = sub_100B72BB0(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[55] = v9;
  v10 = sub_100B72BB0(&qword_101697890, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_100B6B434;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100B6B434(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  v4[56] = v1;

  v7 = v4[52];

  if (v1)
  {
    v8 = sub_100B6B750;
  }

  else
  {
    v4[62] = a1;
    v8 = sub_100B6B578;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100B6B578()
{
  *(v0[50] + 112) = v0[62];
  v1 = swift_task_alloc();
  v0[63] = v1;
  *v1 = v0;
  v1[1] = sub_100B6B624;
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[46];
  v6 = v0[37];

  return sub_10046BCBC(v6, v5, v3, v4);
}

uint64_t sub_100B6B624()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_100B6EA60;
  }

  else
  {
    v6 = sub_100B6B948;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100B6B750()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[14];
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();

  return _swift_task_switch(sub_100B6B7DC, v3, 0);
}

uint64_t sub_100B6B7DC()
{
  v1 = v0[48];
  sub_100006654(v0[46], v0[47]);

  v23 = v0[56];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[39];
  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[33];
  v9 = v0[29];
  v8 = v0[30];
  v11 = v0[27];
  v10 = v0[28];
  v14 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[17];
  v22 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100B6B948()
{
  v1 = v0[37];
  v2 = Response.response.getter();
  v3 = [v2 statusCode];

  v4 = v0[44];
  if (v3 != 200)
  {
    (*(v0[35] + 16))(v0[36], v0[37], v0[34]);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[50];
    v62 = v0[47];
    v64 = v0[48];
    v60 = v0[46];
    v27 = v0[36];
    v28 = v0[37];
    v29 = v0[34];
    v30 = v0[35];
    if (v25)
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      v58 = v28;
      v32 = Response.response.getter();
      v33 = [v32 statusCode];

      v34 = *(v30 + 8);
      v34(v27, v29);
      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to fetch: %ld", v31, 0xCu);

      sub_100B72A98();
      swift_allocError();
      *v35 = 2;
      swift_willThrow();

      sub_100006654(v60, v62);

      v34(v58, v29);
    }

    else
    {
      v36 = *(v30 + 8);
      v36(v0[36], v0[34]);

      sub_100B72A98();
      swift_allocError();
      *v37 = 2;
      swift_willThrow();

      sub_100006654(v60, v62);

      v36(v28, v29);
    }

LABEL_9:
    v39 = v0[42];
    v38 = v0[43];
    v40 = v0[39];
    v41 = v0[36];
    v42 = v0[37];
    v43 = v0[33];
    v45 = v0[29];
    v44 = v0[30];
    v47 = v0[27];
    v46 = v0[28];
    v53 = v0[26];
    v54 = v0[25];
    v55 = v0[24];
    v56 = v0[23];
    v57 = v0[22];
    v59 = v0[21];
    v61 = v0[20];
    v63 = v0[17];
    v65 = v0[16];

    v48 = v0[1];

    return v48();
  }

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Successful LocalFindable location fetching.", v7, 2u);
  }

  v8 = v0[64];
  v9 = v0[37];
  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];

  v13 = type metadata accessor for JSONDecoder();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[65] = JSONDecoder.init()();
  *v10 = sub_100B72CC0;
  v10[1] = 0;
  (*(v11 + 104))(v10, enum case for JSONDecoder.DateDecodingStrategy.custom(_:), v12);
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  v16 = Response.body.getter();
  v18 = v17;
  sub_100B72AEC();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v8)
  {
    v19 = v0[50];
    v21 = v0[47];
    v20 = v0[48];
    v22 = v0[46];
    (*(v0[35] + 8))(v0[37], v0[34]);
    sub_100016590(v16, v18);

    sub_100006654(v22, v21);

    goto LABEL_9;
  }

  sub_100016590(v16, v18);
  v0[66] = v0[9];
  v50 = swift_task_alloc();
  v0[67] = v50;
  *v50 = v0;
  v50[1] = sub_100B6BE8C;
  v51 = v0[30];
  v52 = v0[14];

  return sub_100B6FA20(v51);
}

uint64_t sub_100B6BE8C()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_100B6BF9C, v2, 0);
}

uint64_t sub_100B6BF9C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 112);
  v3 = sub_100B702C4(v1, *(v0 + 104));
  *(v0 + 544) = v3;

  v4 = *(v3 + 32);
  *(v0 + 90) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  isa = v6 & *(v3 + 64);

  v8 = 0;
  while (1)
  {
    if (!isa)
    {
      v10 = ((1 << *(v0 + 90)) + 63) >> 6;
      if (v10 <= v8 + 1)
      {
        v11 = v8 + 1;
      }

      else
      {
        v11 = ((1 << *(v0 + 90)) + 63) >> 6;
      }

      v12 = v11 - 1;
      while (1)
      {
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          v51 = *(v0 + 208);
          v52 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
          (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
          isa = 0;
          v8 = v12;
          goto LABEL_19;
        }

        v1 = *(v0 + 544);
        isa = v1[v13 + 8].isa;
        ++v8;
        if (isa)
        {
          v8 = v13;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v1 = *(v0 + 544);
LABEL_18:
    v112 = *(v0 + 480);
    v114 = *(v0 + 488);
    v14 = *(v0 + 464);
    v15 = *(v0 + 336);
    v16 = *(v0 + 320);
    v17 = __clz(__rbit64(isa));
    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    isa &= isa - 1;
    v20 = v17 | (v8 << 6);
    v21 = *(v0 + 152);
    (*(v0 + 456))(v15, v1[6].isa + *(v0 + 472) * v20, v16);
    sub_100B72A30(v1[7].isa + *(v21 + 72) * v20, v19, type metadata accessor for DeviceEvent);
    v22 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    v23 = *(v22 + 48);
    v112(v18, v15, v16);
    sub_100B729C8(v19, v18 + v23, type metadata accessor for DeviceEvent);
    (*(*(v22 - 8) + 56))(v18, 0, 1, v22);
LABEL_19:
    *(v0 + 560) = v8;
    *(v0 + 552) = isa;
    v24 = *(v0 + 216);
    sub_100B72B40(*(v0 + 208), v24);
    v25 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      break;
    }

    v26 = *(v0 + 192);
    v28 = *(v0 + 136);
    v27 = *(v0 + 144);
    sub_100B729C8(*(v0 + 216) + *(v25 + 48), v26, type metadata accessor for DeviceEvent);
    sub_1000D2A70(v26 + *(v27 + 32), v28, &unk_1016AA510, &unk_101393150);
    v29 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
    {
      sub_10000B3A8(*(v0 + 136), &unk_1016AA510, &unk_101393150);
      v30 = 1;
    }

    else
    {
      v31 = *(v0 + 464);
      v32 = *(v0 + 136);
      (*(v0 + 456))(*(v0 + 232), v32, *(v0 + 320));
      sub_100B72BF8(v32, type metadata accessor for DeviceEvent.AttachmentInfo);
      v30 = 0;
    }

    v34 = *(v0 + 320);
    v33 = *(v0 + 328);
    v36 = *(v0 + 232);
    v35 = *(v0 + 240);
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);
    (*(v33 + 56))(v36, v30, 1, v34);
    v39 = *(v38 + 48);
    sub_1000D2A70(v36, v37, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v35, v37 + v39, &qword_1016980D0, &unk_10138F3B0);
    v40 = *(v33 + 48);
    v41 = v40(v37, 1, v34);
    v42 = *(v0 + 320);
    if (v41 == 1)
    {
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      if (v40(v37 + v39, 1, v42) != 1)
      {
        goto LABEL_32;
      }

      sub_10000B3A8(*(v0 + 128), &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_7;
    }

    sub_1000D2A70(*(v0 + 128), *(v0 + 224), &qword_1016980D0, &unk_10138F3B0);
    if (v40(v37 + v39, 1, v42) == 1)
    {
      v66 = *(v0 + 320);
      v67 = *(v0 + 328);
      v68 = *(v0 + 224);
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      (*(v67 + 8))(v68, v66);
LABEL_32:
      sub_10000B3A8(*(v0 + 128), &qword_1016AF880, &unk_10138CE20);
LABEL_33:
      v69 = *(v0 + 352);
      v70 = *(v0 + 192);
      v12 = *(v0 + 168);
      v71 = *(v0 + 176);
      sub_100B72A30(v70, *(v0 + 184), type metadata accessor for DeviceEvent);
      sub_100B72A30(v70, v71, type metadata accessor for DeviceEvent);
      sub_100B72A30(v70, v12, type metadata accessor for DeviceEvent);
      v1 = Logger.logObject.getter();
      LOBYTE(v12) = static os_log_type_t.error.getter();
      v72 = os_log_type_enabled(v1, v12);
      v73 = *(v0 + 176);
      v74 = *(v0 + 184);
      if (v72)
      {
        v75 = *(v0 + 144);
        v8 = swift_slowAlloc();
        *(v0 + 96) = swift_slowAlloc();
        *v8 = 136446979;
        v76 = *(v75 + 24);
        type metadata accessor for Date();
        sub_100B72BB0(&qword_1016969A0, &type metadata accessor for Date);
        v77 = dispatch thunk of CustomStringConvertible.description.getter();
        v79 = v78;
        sub_100B72BF8(v74, type metadata accessor for DeviceEvent);
        v80 = sub_1000136BC(v77, v79, (v0 + 96));

        *(v8 + 4) = v80;
        *(v8 + 12) = 2082;
        v81 = *(v73 + 9);
        if (v81 > 3)
        {
          if (*(v73 + 9) > 5u)
          {
            if (v81 == 6)
            {
              v3 = 0xEC00000064657261;
              v82 = 0x657070617369642ELL;
            }

            else
            {
              v3 = 0xE500000000000000;
              v82 = 0x726961702ELL;
            }

            goto LABEL_52;
          }

          if (v81 != 4)
          {
            v3 = 0xEF79627261654E64;
            v82 = 0x657463657465642ELL;
            goto LABEL_52;
          }

          v3 = 0xE700000000000000;
          v84 = 1952801838;
        }

        else
        {
          if (*(v73 + 9) <= 1u)
          {
            v3 = 0xE800000000000000;
            if (!*(v73 + 9))
            {
              v82 = 0x6E776F6E6B6E752ELL;
              goto LABEL_52;
            }

LABEL_47:
            v82 = 0x7463656E6E6F632ELL;
LABEL_52:
            v85 = *(v0 + 320);
            v86 = *(v0 + 168);
            v87 = *(v0 + 144);
            sub_100B72BF8(*(v0 + 176), type metadata accessor for DeviceEvent);
            v88 = sub_1000136BC(v82, v3, (v0 + 96));

            *(v8 + 14) = v88;
            *(v8 + 22) = 2160;
            *(v8 + 24) = 1752392040;
            *(v8 + 32) = 2081;
            v89 = *(v87 + 36);
            v90 = v86 + *(type metadata accessor for BeaconIdentifier() + 20);
            sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID);
            v91 = dispatch thunk of CustomStringConvertible.description.getter();
            v93 = v92;
            sub_100B72BF8(v86, type metadata accessor for DeviceEvent);
            v94 = sub_1000136BC(v91, v93, (v0 + 96));

            *(v8 + 34) = v94;
            _os_log_impl(&_mh_execute_header, v1, v12, "Saving device event %{public}s, source: %{public}s, for beacon %{private,mask.hash}s.", v8, 0x2Au);
            swift_arrayDestroy();

LABEL_53:
            v95 = async function pointer to daemon.getter[1];
            v96 = swift_task_alloc();
            *(v0 + 568) = v96;
            *v96 = v0;
            v96[1] = sub_100B6CBAC;

            return daemon.getter();
          }

          if (v81 == 2)
          {
            v3 = 0xEB00000000746365;
            v82 = 0x6E6E6F637369642ELL;
            goto LABEL_52;
          }

          v3 = 0xE700000000000000;
          v84 = 1953784110;
        }

        v82 = v84 | 0x68636100000000;
        goto LABEL_52;
      }

      v83 = *(v0 + 168);

      sub_100B72BF8(v83, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v73, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v74, type metadata accessor for DeviceEvent);
      goto LABEL_53;
    }

    v43 = *(v0 + 488);
    v44 = *(v0 + 328);
    v45 = *(v0 + 336);
    v46 = *(v0 + 320);
    v48 = *(v0 + 224);
    v47 = *(v0 + 232);
    v115 = *(v0 + 128);
    (*(v0 + 480))(v45, v37 + v39, v46);
    sub_100B72BB0(&qword_1016984A0, &type metadata accessor for UUID);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    v50 = *(v44 + 8);
    v50(v45, v46);
    sub_10000B3A8(v47, &qword_1016980D0, &unk_10138F3B0);
    v50(v48, v46);
    sub_10000B3A8(v115, &qword_1016980D0, &unk_10138F3B0);
    if ((v49 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    v3 = *(v0 + 320);
    v9 = *(v0 + 328);
    v1 = *(v0 + 216);
    sub_100B72BF8(*(v0 + 192), type metadata accessor for DeviceEvent);
    (*(v9 + 8))(v1, v3);
  }

  v53 = *(v0 + 544);
  v54 = *(v0 + 520);
  v55 = *(v0 + 400);
  v57 = *(v0 + 376);
  v56 = *(v0 + 384);
  v58 = *(v0 + 368);
  v97 = *(v0 + 344);
  v98 = *(v0 + 336);
  v59 = *(v0 + 296);
  v99 = *(v0 + 312);
  v100 = *(v0 + 288);
  v61 = *(v0 + 272);
  v60 = *(v0 + 280);
  v62 = *(v0 + 240);
  v101 = *(v0 + 264);
  v102 = *(v0 + 232);
  v103 = *(v0 + 224);
  v104 = *(v0 + 216);
  v105 = *(v0 + 208);
  v106 = *(v0 + 200);
  v107 = *(v0 + 192);
  v108 = *(v0 + 184);
  v109 = *(v0 + 176);
  v110 = *(v0 + 168);
  v111 = *(v0 + 160);
  v113 = *(v0 + 136);
  v116 = *(v0 + 128);

  sub_100006654(v58, v57);

  sub_10000B3A8(v62, &qword_1016980D0, &unk_10138F3B0);
  (*(v60 + 8))(v59, v61);

  v63 = *(v0 + 8);
  v64 = *(v0 + 544);

  return v63(v64);
}

uint64_t sub_100B6CBAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 568);
  v5 = *v1;
  v3[72] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[73] = v7;
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100B72BB0(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v7 = v5;
  v7[1] = sub_100B6CD60;
  v10 = v3[55];
  v11 = v3[54];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100B6CD60(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 584);
  v6 = *v2;
  v4[74] = a1;
  v4[75] = v1;

  if (v1)
  {
    v7 = v4[14];

    return _swift_task_switch(sub_100B6D01C, v7, 0);
  }

  else
  {
    v8 = v4[72];

    v9 = swift_task_alloc();
    v4[76] = v9;
    *v9 = v6;
    v9[1] = sub_100B6CEF4;
    v10 = v4[24];

    return sub_1010D02E4(v10);
  }
}

uint64_t sub_100B6CEF4()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v9 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = sub_100B6EBDC;
  }

  else
  {
    v6 = *(v2 + 592);
    v7 = *(v2 + 112);

    v5 = sub_100B6DE60;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100B6D01C()
{
  v136 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 576);
  v3 = *(v0 + 352);
  v4 = *(v0 + 192);
  v5 = *(v0 + 160);

  sub_100B72A30(v4, v5, type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 320);
    v131 = *(v0 + 192);
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v135 = v128;
    *v11 = 138543875;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v14 = *(v10 + 36);
    v15 = v9 + *(type metadata accessor for BeaconIdentifier() + 20);
    sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = type metadata accessor for DeviceEvent;
    sub_100B72BF8(v9, type metadata accessor for DeviceEvent);
    v20 = sub_1000136BC(v16, v18, &v135);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save location %{public}@, for beacon %{private,mask.hash}s.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v128);

    v21 = v131;
  }

  else
  {
    v19 = *(v0 + 192);
    v22 = *(v0 + 160);

    v1 = type metadata accessor for DeviceEvent;
    sub_100B72BF8(v22, type metadata accessor for DeviceEvent);
    v21 = v19;
  }

  sub_100B72BF8(v21, type metadata accessor for DeviceEvent);
  (*(*(v0 + 328) + 8))(*(v0 + 216), *(v0 + 320));
  v23 = *(v0 + 560);
  isa = *(v0 + 552);
  while (1)
  {
    if (!isa)
    {
      v26 = ((1 << *(v0 + 90)) + 63) >> 6;
      if (v26 <= v23 + 1)
      {
        v27 = v23 + 1;
      }

      else
      {
        v27 = ((1 << *(v0 + 90)) + 63) >> 6;
      }

      v28 = v27 - 1;
      while (1)
      {
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          v67 = *(v0 + 208);
          v68 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
          (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
          isa = 0;
          v23 = v28;
          goto LABEL_19;
        }

        v1 = *(v0 + 544);
        isa = v1[v29 + 8].isa;
        ++v23;
        if (isa)
        {
          v23 = v29;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v1 = *(v0 + 544);
LABEL_18:
    v129 = *(v0 + 480);
    v132 = *(v0 + 488);
    v30 = *(v0 + 464);
    v31 = *(v0 + 336);
    v32 = *(v0 + 320);
    v33 = __clz(__rbit64(isa));
    v35 = *(v0 + 200);
    v34 = *(v0 + 208);
    isa &= isa - 1;
    v36 = v33 | (v23 << 6);
    v37 = *(v0 + 152);
    (*(v0 + 456))(v31, v1[6].isa + *(v0 + 472) * v36, v32);
    sub_100B72A30(v1[7].isa + *(v37 + 72) * v36, v35, type metadata accessor for DeviceEvent);
    v38 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    v39 = *(v38 + 48);
    v129(v34, v31, v32);
    sub_100B729C8(v35, v34 + v39, type metadata accessor for DeviceEvent);
    (*(*(v38 - 8) + 56))(v34, 0, 1, v38);
LABEL_19:
    *(v0 + 560) = v23;
    *(v0 + 552) = isa;
    v40 = *(v0 + 216);
    sub_100B72B40(*(v0 + 208), v40);
    v41 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
      break;
    }

    v42 = *(v0 + 192);
    v44 = *(v0 + 136);
    v43 = *(v0 + 144);
    sub_100B729C8(*(v0 + 216) + *(v41 + 48), v42, type metadata accessor for DeviceEvent);
    sub_1000D2A70(v42 + *(v43 + 32), v44, &unk_1016AA510, &unk_101393150);
    v45 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      sub_10000B3A8(*(v0 + 136), &unk_1016AA510, &unk_101393150);
      v46 = 1;
    }

    else
    {
      v47 = *(v0 + 464);
      v48 = *(v0 + 136);
      (*(v0 + 456))(*(v0 + 232), v48, *(v0 + 320));
      sub_100B72BF8(v48, type metadata accessor for DeviceEvent.AttachmentInfo);
      v46 = 0;
    }

    v50 = *(v0 + 320);
    v49 = *(v0 + 328);
    v52 = *(v0 + 232);
    v51 = *(v0 + 240);
    v54 = *(v0 + 120);
    v53 = *(v0 + 128);
    (*(v49 + 56))(v52, v46, 1, v50);
    v55 = *(v54 + 48);
    sub_1000D2A70(v52, v53, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v51, v53 + v55, &qword_1016980D0, &unk_10138F3B0);
    v56 = *(v49 + 48);
    v57 = v56(v53, 1, v50);
    v58 = *(v0 + 320);
    if (v57 == 1)
    {
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      if (v56(v53 + v55, 1, v58) != 1)
      {
        goto LABEL_32;
      }

      sub_10000B3A8(*(v0 + 128), &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_7;
    }

    sub_1000D2A70(*(v0 + 128), *(v0 + 224), &qword_1016980D0, &unk_10138F3B0);
    if (v56(v53 + v55, 1, v58) == 1)
    {
      v82 = *(v0 + 320);
      v83 = *(v0 + 328);
      v84 = *(v0 + 224);
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      (*(v83 + 8))(v84, v82);
LABEL_32:
      sub_10000B3A8(*(v0 + 128), &qword_1016AF880, &unk_10138CE20);
LABEL_33:
      v85 = *(v0 + 352);
      v86 = *(v0 + 192);
      v28 = *(v0 + 168);
      v87 = *(v0 + 176);
      sub_100B72A30(v86, *(v0 + 184), type metadata accessor for DeviceEvent);
      sub_100B72A30(v86, v87, type metadata accessor for DeviceEvent);
      sub_100B72A30(v86, v28, type metadata accessor for DeviceEvent);
      v1 = Logger.logObject.getter();
      LOBYTE(v28) = static os_log_type_t.error.getter();
      v88 = os_log_type_enabled(v1, v28);
      v89 = *(v0 + 176);
      v90 = *(v0 + 184);
      if (v88)
      {
        v91 = *(v0 + 144);
        v23 = swift_slowAlloc();
        *(v0 + 96) = swift_slowAlloc();
        *v23 = 136446979;
        v92 = *(v91 + 24);
        type metadata accessor for Date();
        sub_100B72BB0(&qword_1016969A0, &type metadata accessor for Date);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        sub_100B72BF8(v90, type metadata accessor for DeviceEvent);
        v96 = sub_1000136BC(v93, v95, (v0 + 96));

        *(v23 + 4) = v96;
        *(v23 + 12) = 2082;
        v97 = *(v89 + 9);
        if (v97 > 3)
        {
          if (*(v89 + 9) > 5u)
          {
            if (v97 == 6)
            {
              v19 = 0xEC00000064657261;
              v98 = 0x657070617369642ELL;
            }

            else
            {
              v19 = 0xE500000000000000;
              v98 = 0x726961702ELL;
            }

            goto LABEL_52;
          }

          if (v97 != 4)
          {
            v19 = 0xEF79627261654E64;
            v98 = 0x657463657465642ELL;
            goto LABEL_52;
          }

          v19 = 0xE700000000000000;
          v100 = 1952801838;
        }

        else
        {
          if (*(v89 + 9) <= 1u)
          {
            v19 = 0xE800000000000000;
            if (!*(v89 + 9))
            {
              v98 = 0x6E776F6E6B6E752ELL;
              goto LABEL_52;
            }

LABEL_47:
            v98 = 0x7463656E6E6F632ELL;
LABEL_52:
            v101 = *(v0 + 320);
            v102 = *(v0 + 168);
            v103 = *(v0 + 144);
            sub_100B72BF8(*(v0 + 176), type metadata accessor for DeviceEvent);
            v104 = sub_1000136BC(v98, v19, (v0 + 96));

            *(v23 + 14) = v104;
            *(v23 + 22) = 2160;
            *(v23 + 24) = 1752392040;
            *(v23 + 32) = 2081;
            v105 = *(v103 + 36);
            v106 = v102 + *(type metadata accessor for BeaconIdentifier() + 20);
            sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID);
            v107 = dispatch thunk of CustomStringConvertible.description.getter();
            v109 = v108;
            sub_100B72BF8(v102, type metadata accessor for DeviceEvent);
            v110 = sub_1000136BC(v107, v109, (v0 + 96));

            *(v23 + 34) = v110;
            _os_log_impl(&_mh_execute_header, v1, v28, "Saving device event %{public}s, source: %{public}s, for beacon %{private,mask.hash}s.", v23, 0x2Au);
            swift_arrayDestroy();

LABEL_53:
            v111 = async function pointer to daemon.getter[1];
            v112 = swift_task_alloc();
            *(v0 + 568) = v112;
            *v112 = v0;
            v112[1] = sub_100B6CBAC;

            return daemon.getter();
          }

          if (v97 == 2)
          {
            v19 = 0xEB00000000746365;
            v98 = 0x6E6E6F637369642ELL;
            goto LABEL_52;
          }

          v19 = 0xE700000000000000;
          v100 = 1953784110;
        }

        v98 = v100 | 0x68636100000000;
        goto LABEL_52;
      }

      v99 = *(v0 + 168);

      sub_100B72BF8(v99, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v89, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v90, type metadata accessor for DeviceEvent);
      goto LABEL_53;
    }

    v59 = *(v0 + 488);
    v60 = *(v0 + 328);
    v61 = *(v0 + 336);
    v62 = *(v0 + 320);
    v64 = *(v0 + 224);
    v63 = *(v0 + 232);
    v133 = *(v0 + 128);
    (*(v0 + 480))(v61, v53 + v55, v62);
    sub_100B72BB0(&qword_1016984A0, &type metadata accessor for UUID);
    v65 = dispatch thunk of static Equatable.== infix(_:_:)();
    v66 = *(v60 + 8);
    v66(v61, v62);
    sub_10000B3A8(v63, &qword_1016980D0, &unk_10138F3B0);
    v66(v64, v62);
    sub_10000B3A8(v133, &qword_1016980D0, &unk_10138F3B0);
    if ((v65 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    v19 = *(v0 + 320);
    v25 = *(v0 + 328);
    v1 = *(v0 + 216);
    sub_100B72BF8(*(v0 + 192), type metadata accessor for DeviceEvent);
    (*(v25 + 8))(v1, v19);
  }

  v69 = *(v0 + 544);
  v70 = *(v0 + 520);
  v71 = *(v0 + 400);
  v73 = *(v0 + 376);
  v72 = *(v0 + 384);
  v74 = *(v0 + 368);
  v113 = *(v0 + 344);
  v114 = *(v0 + 336);
  v75 = *(v0 + 296);
  v115 = *(v0 + 312);
  v116 = *(v0 + 288);
  v77 = *(v0 + 272);
  v76 = *(v0 + 280);
  v78 = *(v0 + 240);
  v117 = *(v0 + 264);
  v118 = *(v0 + 232);
  v119 = *(v0 + 224);
  v120 = *(v0 + 216);
  v121 = *(v0 + 208);
  v122 = *(v0 + 200);
  v123 = *(v0 + 192);
  v124 = *(v0 + 184);
  v125 = *(v0 + 176);
  v126 = *(v0 + 168);
  v127 = *(v0 + 160);
  v130 = *(v0 + 136);
  v134 = *(v0 + 128);

  sub_100006654(v74, v73);

  sub_10000B3A8(v78, &qword_1016980D0, &unk_10138F3B0);
  (*(v76 + 8))(v75, v77);

  v79 = *(v0 + 8);
  v80 = *(v0 + 544);

  return v79(v80);
}

uint64_t sub_100B6DE60()
{
  sub_100B72BF8(*(v2 + 192), type metadata accessor for DeviceEvent);
  (*(*(v2 + 328) + 8))(*(v2 + 216), *(v2 + 320));
  v3 = *(v2 + 560);
  isa = *(v2 + 552);
  while (1)
  {
    if (!isa)
    {
      v6 = ((1 << *(v2 + 90)) + 63) >> 6;
      if (v6 <= v3 + 1)
      {
        v7 = v3 + 1;
      }

      else
      {
        v7 = ((1 << *(v2 + 90)) + 63) >> 6;
      }

      v8 = v7 - 1;
      while (1)
      {
        v9 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v9 >= v6)
        {
          v47 = *(v2 + 208);
          v48 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
          (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
          isa = 0;
          v3 = v8;
          goto LABEL_16;
        }

        v0 = *(v2 + 544);
        isa = v0[v9 + 8].isa;
        ++v3;
        if (isa)
        {
          v3 = v9;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_44;
    }

    v0 = *(v2 + 544);
LABEL_15:
    v108 = *(v2 + 480);
    v110 = *(v2 + 488);
    v10 = *(v2 + 464);
    v11 = *(v2 + 336);
    v12 = *(v2 + 320);
    v13 = __clz(__rbit64(isa));
    v15 = *(v2 + 200);
    v14 = *(v2 + 208);
    isa &= isa - 1;
    v16 = v13 | (v3 << 6);
    v17 = *(v2 + 152);
    (*(v2 + 456))(v11, v0[6].isa + *(v2 + 472) * v16, v12);
    sub_100B72A30(v0[7].isa + *(v17 + 72) * v16, v15, type metadata accessor for DeviceEvent);
    v18 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    v19 = *(v18 + 48);
    v108(v14, v11, v12);
    sub_100B729C8(v15, v14 + v19, type metadata accessor for DeviceEvent);
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
LABEL_16:
    *(v2 + 560) = v3;
    *(v2 + 552) = isa;
    v20 = *(v2 + 216);
    sub_100B72B40(*(v2 + 208), v20);
    v21 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {
      break;
    }

    v22 = *(v2 + 192);
    v24 = *(v2 + 136);
    v23 = *(v2 + 144);
    sub_100B729C8(*(v2 + 216) + *(v21 + 48), v22, type metadata accessor for DeviceEvent);
    sub_1000D2A70(v22 + *(v23 + 32), v24, &unk_1016AA510, &unk_101393150);
    v25 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      sub_10000B3A8(*(v2 + 136), &unk_1016AA510, &unk_101393150);
      v26 = 1;
    }

    else
    {
      v27 = *(v2 + 464);
      v28 = *(v2 + 136);
      (*(v2 + 456))(*(v2 + 232), v28, *(v2 + 320));
      sub_100B72BF8(v28, type metadata accessor for DeviceEvent.AttachmentInfo);
      v26 = 0;
    }

    v30 = *(v2 + 320);
    v29 = *(v2 + 328);
    v32 = *(v2 + 232);
    v31 = *(v2 + 240);
    v34 = *(v2 + 120);
    v33 = *(v2 + 128);
    (*(v29 + 56))(v32, v26, 1, v30);
    v35 = *(v34 + 48);
    sub_1000D2A70(v32, v33, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v31, v33 + v35, &qword_1016980D0, &unk_10138F3B0);
    v36 = *(v29 + 48);
    v37 = v36(v33, 1, v30);
    v38 = *(v2 + 320);
    if (v37 == 1)
    {
      sub_10000B3A8(*(v2 + 232), &qword_1016980D0, &unk_10138F3B0);
      if (v36(v33 + v35, 1, v38) != 1)
      {
        goto LABEL_29;
      }

      sub_10000B3A8(*(v2 + 128), &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_4;
    }

    sub_1000D2A70(*(v2 + 128), *(v2 + 224), &qword_1016980D0, &unk_10138F3B0);
    if (v36(v33 + v35, 1, v38) == 1)
    {
      v62 = *(v2 + 320);
      v63 = *(v2 + 328);
      v64 = *(v2 + 224);
      sub_10000B3A8(*(v2 + 232), &qword_1016980D0, &unk_10138F3B0);
      (*(v63 + 8))(v64, v62);
LABEL_29:
      sub_10000B3A8(*(v2 + 128), &qword_1016AF880, &unk_10138CE20);
LABEL_30:
      v65 = *(v2 + 352);
      v66 = *(v2 + 192);
      v8 = *(v2 + 168);
      v67 = *(v2 + 176);
      sub_100B72A30(v66, *(v2 + 184), type metadata accessor for DeviceEvent);
      sub_100B72A30(v66, v67, type metadata accessor for DeviceEvent);
      sub_100B72A30(v66, v8, type metadata accessor for DeviceEvent);
      v0 = Logger.logObject.getter();
      LOBYTE(v8) = static os_log_type_t.error.getter();
      v68 = os_log_type_enabled(v0, v8);
      v69 = *(v2 + 176);
      v70 = *(v2 + 184);
      if (v68)
      {
        v71 = *(v2 + 144);
        v3 = swift_slowAlloc();
        *(v2 + 96) = swift_slowAlloc();
        *v3 = 136446979;
        v72 = *(v71 + 24);
        type metadata accessor for Date();
        sub_100B72BB0(&qword_1016969A0, &type metadata accessor for Date);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v74;
        sub_100B72BF8(v70, type metadata accessor for DeviceEvent);
        v76 = sub_1000136BC(v73, v75, (v2 + 96));

        *(v3 + 4) = v76;
        *(v3 + 12) = 2082;
        v77 = *(v69 + 9);
        if (v77 > 3)
        {
          if (*(v69 + 9) > 5u)
          {
            if (v77 == 6)
            {
              v1 = 0xEC00000064657261;
              v78 = 0x657070617369642ELL;
            }

            else
            {
              v1 = 0xE500000000000000;
              v78 = 0x726961702ELL;
            }

            goto LABEL_49;
          }

          if (v77 != 4)
          {
            v1 = 0xEF79627261654E64;
            v78 = 0x657463657465642ELL;
            goto LABEL_49;
          }

          v1 = 0xE700000000000000;
          v80 = 1952801838;
        }

        else
        {
          if (*(v69 + 9) <= 1u)
          {
            v1 = 0xE800000000000000;
            if (!*(v69 + 9))
            {
              v78 = 0x6E776F6E6B6E752ELL;
              goto LABEL_49;
            }

LABEL_44:
            v78 = 0x7463656E6E6F632ELL;
LABEL_49:
            v81 = *(v2 + 320);
            v82 = *(v2 + 168);
            v83 = *(v2 + 144);
            sub_100B72BF8(*(v2 + 176), type metadata accessor for DeviceEvent);
            v84 = sub_1000136BC(v78, v1, (v2 + 96));

            *(v3 + 14) = v84;
            *(v3 + 22) = 2160;
            *(v3 + 24) = 1752392040;
            *(v3 + 32) = 2081;
            v85 = *(v83 + 36);
            v86 = v82 + *(type metadata accessor for BeaconIdentifier() + 20);
            sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID);
            v87 = dispatch thunk of CustomStringConvertible.description.getter();
            v89 = v88;
            sub_100B72BF8(v82, type metadata accessor for DeviceEvent);
            v90 = sub_1000136BC(v87, v89, (v2 + 96));

            *(v3 + 34) = v90;
            _os_log_impl(&_mh_execute_header, v0, v8, "Saving device event %{public}s, source: %{public}s, for beacon %{private,mask.hash}s.", v3, 0x2Au);
            swift_arrayDestroy();

LABEL_50:
            v91 = async function pointer to daemon.getter[1];
            v92 = swift_task_alloc();
            *(v2 + 568) = v92;
            *v92 = v2;
            v92[1] = sub_100B6CBAC;

            return daemon.getter();
          }

          if (v77 == 2)
          {
            v1 = 0xEB00000000746365;
            v78 = 0x6E6E6F637369642ELL;
            goto LABEL_49;
          }

          v1 = 0xE700000000000000;
          v80 = 1953784110;
        }

        v78 = v80 | 0x68636100000000;
        goto LABEL_49;
      }

      v79 = *(v2 + 168);

      sub_100B72BF8(v79, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v69, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v70, type metadata accessor for DeviceEvent);
      goto LABEL_50;
    }

    v39 = *(v2 + 488);
    v40 = *(v2 + 328);
    v41 = *(v2 + 336);
    v42 = *(v2 + 320);
    v44 = *(v2 + 224);
    v43 = *(v2 + 232);
    v111 = *(v2 + 128);
    (*(v2 + 480))(v41, v33 + v35, v42);
    sub_100B72BB0(&qword_1016984A0, &type metadata accessor for UUID);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v46 = *(v40 + 8);
    v46(v41, v42);
    sub_10000B3A8(v43, &qword_1016980D0, &unk_10138F3B0);
    v46(v44, v42);
    sub_10000B3A8(v111, &qword_1016980D0, &unk_10138F3B0);
    if ((v45 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_4:
    v1 = *(v2 + 320);
    v5 = *(v2 + 328);
    v0 = *(v2 + 216);
    sub_100B72BF8(*(v2 + 192), type metadata accessor for DeviceEvent);
    (*(v5 + 8))(v0, v1);
  }

  v49 = *(v2 + 544);
  v50 = *(v2 + 520);
  v51 = *(v2 + 400);
  v53 = *(v2 + 376);
  v52 = *(v2 + 384);
  v54 = *(v2 + 368);
  v93 = *(v2 + 344);
  v94 = *(v2 + 336);
  v55 = *(v2 + 296);
  v95 = *(v2 + 312);
  v96 = *(v2 + 288);
  v57 = *(v2 + 272);
  v56 = *(v2 + 280);
  v58 = *(v2 + 240);
  v97 = *(v2 + 264);
  v98 = *(v2 + 232);
  v99 = *(v2 + 224);
  v100 = *(v2 + 216);
  v101 = *(v2 + 208);
  v102 = *(v2 + 200);
  v103 = *(v2 + 192);
  v104 = *(v2 + 184);
  v105 = *(v2 + 176);
  v106 = *(v2 + 168);
  v107 = *(v2 + 160);
  v109 = *(v2 + 136);
  v112 = *(v2 + 128);

  sub_100006654(v54, v53);

  sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
  (*(v56 + 8))(v55, v57);

  v59 = *(v2 + 8);
  v60 = *(v2 + 544);

  return v59(v60);
}

uint64_t sub_100B6EA60()
{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  v4 = v0[46];

  sub_100006654(v4, v2);

  v26 = v0[64];
  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[39];
  v9 = v0[36];
  v8 = v0[37];
  v10 = v0[33];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v17 = v0[26];
  v18 = v0[25];
  v19 = v0[24];
  v20 = v0[23];
  v21 = v0[22];
  v22 = v0[21];
  v23 = v0[20];
  v24 = v0[17];
  v25 = v0[16];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100B6EBDC()
{
  v136 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 592);
  v3 = *(v0 + 352);
  v4 = *(v0 + 192);
  v5 = *(v0 + 160);

  sub_100B72A30(v4, v5, type metadata accessor for DeviceEvent);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 320);
    v131 = *(v0 + 192);
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v135 = v128;
    *v11 = 138543875;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v14 = *(v10 + 36);
    v15 = v9 + *(type metadata accessor for BeaconIdentifier() + 20);
    sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = type metadata accessor for DeviceEvent;
    sub_100B72BF8(v9, type metadata accessor for DeviceEvent);
    v20 = sub_1000136BC(v16, v18, &v135);

    *(v11 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save location %{public}@, for beacon %{private,mask.hash}s.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v128);

    v21 = v131;
  }

  else
  {
    v19 = *(v0 + 192);
    v22 = *(v0 + 160);

    v1 = type metadata accessor for DeviceEvent;
    sub_100B72BF8(v22, type metadata accessor for DeviceEvent);
    v21 = v19;
  }

  sub_100B72BF8(v21, type metadata accessor for DeviceEvent);
  (*(*(v0 + 328) + 8))(*(v0 + 216), *(v0 + 320));
  v23 = *(v0 + 560);
  isa = *(v0 + 552);
  while (1)
  {
    if (!isa)
    {
      v26 = ((1 << *(v0 + 90)) + 63) >> 6;
      if (v26 <= v23 + 1)
      {
        v27 = v23 + 1;
      }

      else
      {
        v27 = ((1 << *(v0 + 90)) + 63) >> 6;
      }

      v28 = v27 - 1;
      while (1)
      {
        v29 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          v67 = *(v0 + 208);
          v68 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
          (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
          isa = 0;
          v23 = v28;
          goto LABEL_19;
        }

        v1 = *(v0 + 544);
        isa = v1[v29 + 8].isa;
        ++v23;
        if (isa)
        {
          v23 = v29;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v1 = *(v0 + 544);
LABEL_18:
    v129 = *(v0 + 480);
    v132 = *(v0 + 488);
    v30 = *(v0 + 464);
    v31 = *(v0 + 336);
    v32 = *(v0 + 320);
    v33 = __clz(__rbit64(isa));
    v35 = *(v0 + 200);
    v34 = *(v0 + 208);
    isa &= isa - 1;
    v36 = v33 | (v23 << 6);
    v37 = *(v0 + 152);
    (*(v0 + 456))(v31, v1[6].isa + *(v0 + 472) * v36, v32);
    sub_100B72A30(v1[7].isa + *(v37 + 72) * v36, v35, type metadata accessor for DeviceEvent);
    v38 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    v39 = *(v38 + 48);
    v129(v34, v31, v32);
    sub_100B729C8(v35, v34 + v39, type metadata accessor for DeviceEvent);
    (*(*(v38 - 8) + 56))(v34, 0, 1, v38);
LABEL_19:
    *(v0 + 560) = v23;
    *(v0 + 552) = isa;
    v40 = *(v0 + 216);
    sub_100B72B40(*(v0 + 208), v40);
    v41 = sub_1000BC4D4(&qword_1016A58E0, &unk_1013B3330);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
      break;
    }

    v42 = *(v0 + 192);
    v44 = *(v0 + 136);
    v43 = *(v0 + 144);
    sub_100B729C8(*(v0 + 216) + *(v41 + 48), v42, type metadata accessor for DeviceEvent);
    sub_1000D2A70(v42 + *(v43 + 32), v44, &unk_1016AA510, &unk_101393150);
    v45 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      sub_10000B3A8(*(v0 + 136), &unk_1016AA510, &unk_101393150);
      v46 = 1;
    }

    else
    {
      v47 = *(v0 + 464);
      v48 = *(v0 + 136);
      (*(v0 + 456))(*(v0 + 232), v48, *(v0 + 320));
      sub_100B72BF8(v48, type metadata accessor for DeviceEvent.AttachmentInfo);
      v46 = 0;
    }

    v50 = *(v0 + 320);
    v49 = *(v0 + 328);
    v52 = *(v0 + 232);
    v51 = *(v0 + 240);
    v54 = *(v0 + 120);
    v53 = *(v0 + 128);
    (*(v49 + 56))(v52, v46, 1, v50);
    v55 = *(v54 + 48);
    sub_1000D2A70(v52, v53, &qword_1016980D0, &unk_10138F3B0);
    sub_1000D2A70(v51, v53 + v55, &qword_1016980D0, &unk_10138F3B0);
    v56 = *(v49 + 48);
    v57 = v56(v53, 1, v50);
    v58 = *(v0 + 320);
    if (v57 == 1)
    {
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      if (v56(v53 + v55, 1, v58) != 1)
      {
        goto LABEL_32;
      }

      sub_10000B3A8(*(v0 + 128), &qword_1016980D0, &unk_10138F3B0);
      goto LABEL_7;
    }

    sub_1000D2A70(*(v0 + 128), *(v0 + 224), &qword_1016980D0, &unk_10138F3B0);
    if (v56(v53 + v55, 1, v58) == 1)
    {
      v82 = *(v0 + 320);
      v83 = *(v0 + 328);
      v84 = *(v0 + 224);
      sub_10000B3A8(*(v0 + 232), &qword_1016980D0, &unk_10138F3B0);
      (*(v83 + 8))(v84, v82);
LABEL_32:
      sub_10000B3A8(*(v0 + 128), &qword_1016AF880, &unk_10138CE20);
LABEL_33:
      v85 = *(v0 + 352);
      v86 = *(v0 + 192);
      v28 = *(v0 + 168);
      v87 = *(v0 + 176);
      sub_100B72A30(v86, *(v0 + 184), type metadata accessor for DeviceEvent);
      sub_100B72A30(v86, v87, type metadata accessor for DeviceEvent);
      sub_100B72A30(v86, v28, type metadata accessor for DeviceEvent);
      v1 = Logger.logObject.getter();
      LOBYTE(v28) = static os_log_type_t.error.getter();
      v88 = os_log_type_enabled(v1, v28);
      v89 = *(v0 + 176);
      v90 = *(v0 + 184);
      if (v88)
      {
        v91 = *(v0 + 144);
        v23 = swift_slowAlloc();
        *(v0 + 96) = swift_slowAlloc();
        *v23 = 136446979;
        v92 = *(v91 + 24);
        type metadata accessor for Date();
        sub_100B72BB0(&qword_1016969A0, &type metadata accessor for Date);
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v95 = v94;
        sub_100B72BF8(v90, type metadata accessor for DeviceEvent);
        v96 = sub_1000136BC(v93, v95, (v0 + 96));

        *(v23 + 4) = v96;
        *(v23 + 12) = 2082;
        v97 = *(v89 + 9);
        if (v97 > 3)
        {
          if (*(v89 + 9) > 5u)
          {
            if (v97 == 6)
            {
              v19 = 0xEC00000064657261;
              v98 = 0x657070617369642ELL;
            }

            else
            {
              v19 = 0xE500000000000000;
              v98 = 0x726961702ELL;
            }

            goto LABEL_52;
          }

          if (v97 != 4)
          {
            v19 = 0xEF79627261654E64;
            v98 = 0x657463657465642ELL;
            goto LABEL_52;
          }

          v19 = 0xE700000000000000;
          v100 = 1952801838;
        }

        else
        {
          if (*(v89 + 9) <= 1u)
          {
            v19 = 0xE800000000000000;
            if (!*(v89 + 9))
            {
              v98 = 0x6E776F6E6B6E752ELL;
              goto LABEL_52;
            }

LABEL_47:
            v98 = 0x7463656E6E6F632ELL;
LABEL_52:
            v101 = *(v0 + 320);
            v102 = *(v0 + 168);
            v103 = *(v0 + 144);
            sub_100B72BF8(*(v0 + 176), type metadata accessor for DeviceEvent);
            v104 = sub_1000136BC(v98, v19, (v0 + 96));

            *(v23 + 14) = v104;
            *(v23 + 22) = 2160;
            *(v23 + 24) = 1752392040;
            *(v23 + 32) = 2081;
            v105 = *(v103 + 36);
            v106 = v102 + *(type metadata accessor for BeaconIdentifier() + 20);
            sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID);
            v107 = dispatch thunk of CustomStringConvertible.description.getter();
            v109 = v108;
            sub_100B72BF8(v102, type metadata accessor for DeviceEvent);
            v110 = sub_1000136BC(v107, v109, (v0 + 96));

            *(v23 + 34) = v110;
            _os_log_impl(&_mh_execute_header, v1, v28, "Saving device event %{public}s, source: %{public}s, for beacon %{private,mask.hash}s.", v23, 0x2Au);
            swift_arrayDestroy();

LABEL_53:
            v111 = async function pointer to daemon.getter[1];
            v112 = swift_task_alloc();
            *(v0 + 568) = v112;
            *v112 = v0;
            v112[1] = sub_100B6CBAC;

            return daemon.getter();
          }

          if (v97 == 2)
          {
            v19 = 0xEB00000000746365;
            v98 = 0x6E6E6F637369642ELL;
            goto LABEL_52;
          }

          v19 = 0xE700000000000000;
          v100 = 1953784110;
        }

        v98 = v100 | 0x68636100000000;
        goto LABEL_52;
      }

      v99 = *(v0 + 168);

      sub_100B72BF8(v99, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v89, type metadata accessor for DeviceEvent);
      sub_100B72BF8(v90, type metadata accessor for DeviceEvent);
      goto LABEL_53;
    }

    v59 = *(v0 + 488);
    v60 = *(v0 + 328);
    v61 = *(v0 + 336);
    v62 = *(v0 + 320);
    v64 = *(v0 + 224);
    v63 = *(v0 + 232);
    v133 = *(v0 + 128);
    (*(v0 + 480))(v61, v53 + v55, v62);
    sub_100B72BB0(&qword_1016984A0, &type metadata accessor for UUID);
    v65 = dispatch thunk of static Equatable.== infix(_:_:)();
    v66 = *(v60 + 8);
    v66(v61, v62);
    sub_10000B3A8(v63, &qword_1016980D0, &unk_10138F3B0);
    v66(v64, v62);
    sub_10000B3A8(v133, &qword_1016980D0, &unk_10138F3B0);
    if ((v65 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    v19 = *(v0 + 320);
    v25 = *(v0 + 328);
    v1 = *(v0 + 216);
    sub_100B72BF8(*(v0 + 192), type metadata accessor for DeviceEvent);
    (*(v25 + 8))(v1, v19);
  }

  v69 = *(v0 + 544);
  v70 = *(v0 + 520);
  v71 = *(v0 + 400);
  v73 = *(v0 + 376);
  v72 = *(v0 + 384);
  v74 = *(v0 + 368);
  v113 = *(v0 + 344);
  v114 = *(v0 + 336);
  v75 = *(v0 + 296);
  v115 = *(v0 + 312);
  v116 = *(v0 + 288);
  v77 = *(v0 + 272);
  v76 = *(v0 + 280);
  v78 = *(v0 + 240);
  v117 = *(v0 + 264);
  v118 = *(v0 + 232);
  v119 = *(v0 + 224);
  v120 = *(v0 + 216);
  v121 = *(v0 + 208);
  v122 = *(v0 + 200);
  v123 = *(v0 + 192);
  v124 = *(v0 + 184);
  v125 = *(v0 + 176);
  v126 = *(v0 + 168);
  v127 = *(v0 + 160);
  v130 = *(v0 + 136);
  v134 = *(v0 + 128);

  sub_100006654(v74, v73);

  sub_10000B3A8(v78, &qword_1016980D0, &unk_10138F3B0);
  (*(v76 + 8))(v75, v77);

  v79 = *(v0 + 8);
  v80 = *(v0 + 544);

  return v79(v80);
}

uint64_t sub_100B6FA20(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for OwnedBeaconRecord();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_100B6FB10;

  return daemon.getter();
}

uint64_t sub_100B6FB10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100B72BB0(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100B72BB0(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100B6FCEC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100B6FCEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = a1;

  v7 = v4[9];
  if (v1)
  {
    a1 = v4[4];

    v8 = sub_100B70220;
  }

  else
  {

    v8 = sub_100B6FE44;
  }

  return _swift_task_switch(v8, a1, 0);
}

uint64_t sub_100B6FE44()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  *v3 = v0;
  v3[1] = sub_100B6FF30;
  v5 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_1004216C0, v5, v4);
}

uint64_t sub_100B6FF30()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100B70048, v2, 0);
}

uint64_t sub_100B70048()
{
  v1 = v0[4];
  v0[13] = v0[2];
  return _swift_task_switch(sub_100B7006C, v1, 0);
}

uint64_t sub_100B7006C()
{
  v1 = v0[13];
  v2 = v0[11];
  if (*(v1 + 16))
  {
    v3 = v0[7];
    v4 = v0[5];
    v5 = v0[3];
    v6 = *(v0[6] + 80);
    sub_100B72A30(v1 + ((v6 + 32) & ~v6), v3, type metadata accessor for OwnedBeaconRecord);

    v7 = *(v4 + 20);
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, v3 + v7, v8);
    sub_100B72BF8(v3, type metadata accessor for OwnedBeaconRecord);
    (*(v9 + 56))(v5, 0, 1, v8);
  }

  else
  {
    v10 = v0[3];
    v11 = v0[13];

    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100B70220()
{
  v1 = v0[3];
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100B702C4(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v108 = *v2;
  v109 = v2;
  v4 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v113 = &v101 - v6;
  v111 = type metadata accessor for DeviceEvent(0);
  v105 = *(v111 - 8);
  v7 = *(v105 + 64);
  v8 = __chkstk_darwin(v111);
  v106 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v103 = &v101 - v11;
  v12 = __chkstk_darwin(v10);
  v102 = &v101 - v13;
  __chkstk_darwin(v12);
  v112 = &v101 - v14;
  v121 = type metadata accessor for HashAlgorithm();
  v15 = *(v121 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v121);
  v120 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocalFindableAccessoryRecord();
  v110 = *(v18 - 8);
  v19 = *(v110 + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v107 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v101 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v101 - v26;
  __chkstk_darwin(v25);
  v123 = &v101 - v28;
  if (qword_101694CE8 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v29 = type metadata accessor for Logger();
    v115 = sub_1000076D4(v29, qword_1016B66A8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Process LocalFindable locations response.", v32, 2u);
    }

    v114 = v24;

    v34 = *(a2 + 16);
    if (!v34)
    {
      break;
    }

    *&v119 = v27;
    v35 = a2 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
    v36 = *(v110 + 72);
    LODWORD(v118) = enum case for HashAlgorithm.sha256(_:);
    v116 = (v15 + 8);
    v117 = (v15 + 104);
    v124 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      v122 = v34;
      v24 = v123;
      sub_100B72A30(v35, v123, type metadata accessor for LocalFindableAccessoryRecord);
      v37 = UUID.data.getter();
      v39 = v38;
      v40 = v120;
      a2 = v121;
      (*v117)(v120, v118, v121);
      v41 = Data.hash(algorithm:)();
      v15 = v42;
      sub_100016590(v37, v39);
      (*v116)(v40, a2);
      v27 = v119;
      sub_100B72A30(v24, v119, type metadata accessor for LocalFindableAccessoryRecord);
      v43 = v124;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125 = v43;
      v46 = sub_100771E30(v41, v15);
      v47 = *(v43 + 16);
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        break;
      }

      a2 = v45;
      if (*(v43 + 24) >= v49)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101009B94();
        }
      }

      else
      {
        sub_100FEFC18(v49, isUniquelyReferenced_nonNull_native);
        v50 = sub_100771E30(v41, v15);
        if ((a2 & 1) != (v51 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v46 = v50;
      }

      v52 = v125;
      v124 = v125;
      if (a2)
      {
        sub_100B71F24(v27, v125[7] + v46 * v36);
        sub_100016590(v41, v15);
        sub_100B72BF8(v123, type metadata accessor for LocalFindableAccessoryRecord);
      }

      else
      {
        v125[(v46 >> 6) + 8] |= 1 << v46;
        v53 = (v52[6] + 16 * v46);
        *v53 = v41;
        v53[1] = v15;
        sub_100B729C8(v27, v52[7] + v46 * v36, type metadata accessor for LocalFindableAccessoryRecord);
        sub_100B72BF8(v123, type metadata accessor for LocalFindableAccessoryRecord);
        v54 = v52[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_42;
        }

        v52[2] = v56;
      }

      v35 += v36;
      v34 = (v122 - 1);
      if (v122 == 1)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v124 = _swiftEmptyDictionarySingleton;
LABEL_18:
  v57 = v114;
  v123 = *(v104 + 16);
  if (v123)
  {
    v121 = 0;
    v118 = (v105 + 48);
    v58 = (v104 + 48);
    v122 = _swiftEmptyDictionarySingleton;
    *&v33 = 136315138;
    v119 = v33;
    v60 = v112;
    v59 = v113;
    v61 = v124;
    while (1)
    {
      v63 = *(v58 - 2);
      v62 = *(v58 - 1);
      v64 = *v58;
      v65 = v61;
      v66 = v61[2];
      sub_100017D5C(v63, v62);

      if (!v66 || (v67 = sub_100771E30(v63, v62), (v68 & 1) == 0))
      {
        sub_100017D5C(v63, v62);

        v76 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        sub_100016590(v63, v62);

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v125 = v79;
          *v78 = v119;
          sub_100017D5C(v63, v62);
          v80 = Data.description.getter();
          v82 = v81;
          sub_100016590(v63, v62);
          v83 = sub_1000136BC(v80, v82, &v125);

          *(v78 + 4) = v83;
          v57 = v114;
          _os_log_impl(&_mh_execute_header, v76, v77, "Location for unknown identifier: %s", v78, 0xCu);
          sub_100007BAC(v79);
          v60 = v112;

          v59 = v113;
        }

        sub_100016590(v63, v62);

        goto LABEL_21;
      }

      v120 = v62;
      v69 = v65[7] + *(v110 + 72) * v67;
      v70 = v107;
      sub_100B72A30(v69, v107, type metadata accessor for LocalFindableAccessoryRecord);
      v71 = sub_100B729C8(v70, v57, type metadata accessor for LocalFindableAccessoryRecord);
      __chkstk_darwin(v71);
      v72 = v108;
      *(&v101 - 4) = v109;
      *(&v101 - 3) = v57;
      *(&v101 - 2) = v72;

      v73 = v64;
      v74 = v121;
      v75 = sub_1005C71E4(sub_100B71F04, (&v101 - 6), v73);
      v121 = v74;

      sub_1012BB39C(v75, v59);

      if ((*v118)(v59, 1, v111) != 1)
      {
        break;
      }

      sub_100016590(v63, v120);

      sub_10000B3A8(v59, &unk_1016AA500, &unk_1013B3600);
LABEL_35:
      sub_100B72BF8(v57, type metadata accessor for LocalFindableAccessoryRecord);
LABEL_21:
      v61 = v124;
      v58 += 3;
      if (!--v123)
      {

        goto LABEL_38;
      }
    }

    sub_100B729C8(v59, v60, type metadata accessor for DeviceEvent);
    if (v122[2])
    {
      v84 = sub_1000210EC(v57);
      if (v85)
      {
        v86 = v103;
        sub_100B72A30(v122[7] + *(v105 + 72) * v84, v103, type metadata accessor for DeviceEvent);
        v87 = v86;
        v88 = v102;
        sub_100B729C8(v87, v102, type metadata accessor for DeviceEvent);
        v89 = *(v111 + 24);
        if (static Date.< infix(_:_:)())
        {
          v90 = v106;
          sub_100B72A30(v60, v106, type metadata accessor for DeviceEvent);
          v91 = v122;
          v92 = swift_isUniquelyReferenced_nonNull_native();
          v125 = v91;
          sub_100FFEA2C(v90, v57, v92);
          sub_100016590(v63, v120);

          v122 = v125;
          sub_100B72BF8(v88, type metadata accessor for DeviceEvent);
          v93 = v60;
LABEL_34:
          sub_100B72BF8(v93, type metadata accessor for DeviceEvent);
          goto LABEL_35;
        }

        sub_100B72BF8(v88, type metadata accessor for DeviceEvent);
      }
    }

    v94 = v106;
    sub_100B72A30(v60, v106, type metadata accessor for DeviceEvent);
    v95 = v122;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v125 = v95;
    sub_100FFEA2C(v94, v57, v96);
    sub_100016590(v63, v120);

    v122 = v125;
    v93 = v60;
    goto LABEL_34;
  }

  v122 = _swiftEmptyDictionarySingleton;
LABEL_38:
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 134217984;
    *(v99 + 4) = v122[2];
    _os_log_impl(&_mh_execute_header, v97, v98, "Found locations for %ld accessories.", v99, 0xCu);
  }

  return v122;
}

uint64_t sub_100B70EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LocalFindableAccessoryRecord();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B71280(*a1, *(a1 + 8), a2, a3);
  if (v3)
  {
    if (qword_101694CE8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_1016B66A8);
    sub_100B72A30(a2, v10, type metadata accessor for LocalFindableAccessoryRecord);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v14 = 138543875;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      *(v14 + 12) = 2160;
      *(v14 + 14) = 1752392040;
      *(v14 + 22) = 2081;
      type metadata accessor for UUID();
      v26 = a3;
      sub_100B72BB0(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_100B72BF8(v10, type metadata accessor for LocalFindableAccessoryRecord);
      v21 = sub_1000136BC(v18, v20, &v27);

      *(v14 + 24) = v21;
      a3 = v26;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to decrypt location %{public}@,\nfor accessory %{private,mask.hash}s.", v14, 0x20u);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v16);
    }

    else
    {

      sub_100B72BF8(v10, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v24 = type metadata accessor for DeviceEvent(0);
    return (*(*(v24 - 8) + 56))(a3, 1, 1, v24);
  }

  else
  {
    v22 = type metadata accessor for DeviceEvent(0);
    return (*(*(v22 - 8) + 56))(a3, 0, 1, v22);
  }
}

uint64_t sub_100B71280@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a3;
  v105 = a1;
  v106 = a2;
  v95 = a4;
  v100 = type metadata accessor for BeaconIdentifier();
  v4 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A3B68, &unk_1013AEE10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v99 = &v87 - v8;
  v97 = type metadata accessor for DeviceEventFormat.AttachmentInfoFormat(0);
  v96 = *(v97 - 8);
  v9 = *(v96 + 64);
  __chkstk_darwin(v97);
  v98 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016AA510, &unk_101393150);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v101 = &v87 - v13;
  v14 = sub_1000BC4D4(&qword_1016A3B60, &qword_1013AEE08);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v92 = &v87 - v16;
  v94 = type metadata accessor for DeviceEventFormat.LocationFormat(0);
  v93 = *(v94 - 8);
  v17 = *(v93 + 64);
  v18 = __chkstk_darwin(v94);
  v91 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v90 = &v87 - v20;
  v21 = sub_1000BC4D4(&qword_101699E50, &qword_1013D97C0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v87 - v23;
  v25 = type metadata accessor for DeviceEventFormat(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for P256PublicKey();
  v103 = *(v29 - 8);
  v30 = *(v103 + 8);
  __chkstk_darwin(v29);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = (&v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for JSONDecoder();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = JSONDecoder.init()();
  *v37 = sub_100B72CC0;
  v37[1] = 0;
  (*(v34 + 104))(v37, enum case for JSONDecoder.DateDecodingStrategy.custom(_:), v33);
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  sub_1000D27EC();
  v42 = v112;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v42)
  {
  }

  v43 = v103;
  v106 = v29;
  v89 = v25;
  v112 = v41;
  v105 = v28;
  v111[0] = v107;
  v111[1] = v108;
  v111[2] = v109;
  v111[3] = v110;
  v44 = type metadata accessor for LocalFindableAccessoryRecord();
  v45 = *(v44 + 60);
  v46 = v104;
  v47 = v104 + *(v44 + 56);
  P256PrivateKey.publicKey.getter();
  v49 = sub_100B71F88(v111, v46 + v45);
  v51 = v50;
  (*(v43 + 8))(v32, v106);
  sub_100B72BB0(&qword_1016B6790, type metadata accessor for DeviceEventFormat);
  v52 = v105;
  v53 = v89;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v103 = v49;
  v106 = v51;
  v88 = byte_1013D9882[*(v52 + v53[6])];
  v54 = v92;
  sub_1000D2A70(v52, v92, &qword_1016A3B60, &qword_1013AEE08);
  v55 = v94;
  v56 = (*(v93 + 48))(v54, 1, v94);
  v87 = v24;
  if (v56 == 1)
  {
    sub_10000B3A8(v54, &qword_1016A3B60, &qword_1013AEE08);
    v57 = type metadata accessor for DeviceEvent.Location(0);
    (*(*(v57 - 8) + 56))(v24, 1, 1, v57);
  }

  else
  {
    v58 = v90;
    sub_100B729C8(v54, v90, type metadata accessor for DeviceEventFormat.LocationFormat);
    v59 = v91;
    sub_100B729C8(v58, v91, type metadata accessor for DeviceEventFormat.LocationFormat);
    *v24 = *v59;
    *(v24 + 2) = *(v59 + 16);
    v60 = *(v55 + 28);
    v61 = type metadata accessor for DeviceEvent.Location(0);
    v62 = *(v61 + 28);
    v63 = type metadata accessor for Date();
    v64 = &v24[v62];
    v53 = v89;
    (*(*(v63 - 8) + 32))(v64, v59 + v60, v63);
    (*(*(v61 - 8) + 56))(v24, 0, 1, v61);
  }

  v65 = v95;
  v66 = v101;
  v67 = v98;
  v68 = v97;
  v69 = v52 + v53[5];
  v70 = v99;
  sub_1000D2A70(v69, v99, &qword_1016A3B68, &unk_1013AEE10);
  if ((*(v96 + 48))(v70, 1, v68) == 1)
  {
    sub_10000B3A8(v70, &qword_1016A3B68, &unk_1013AEE10);
    v71 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    (*(*(v71 - 8) + 56))(v66, 1, 1, v71);
  }

  else
  {
    sub_100B729C8(v70, v67, type metadata accessor for DeviceEventFormat.AttachmentInfoFormat);
    v72 = type metadata accessor for UUID();
    v73 = *(v72 - 8);
    (*(v73 + 32))(v66, v67, v72);
    v74 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    (*(v73 + 56))(v66 + *(v74 + 20), 1, 1, v72);
    v53 = v89;
    (*(*(v74 - 8) + 56))(v66, 0, 1, v74);
  }

  v75 = v102;
  v76 = v100;
  v77 = getuid();
  sub_1000294F0(v77);
  v78 = *(v76 + 20);
  v79 = type metadata accessor for UUID();
  (*(*(v79 - 8) + 16))(v75 + v78, v104, v79);
  v80 = v53[7];
  v81 = type metadata accessor for DeviceEvent(0);
  v82 = v81[6];
  v83 = type metadata accessor for Date();
  v84 = v65 + v82;
  v85 = v105;
  (*(*(v83 - 8) + 16))(v84, &v105[v80], v83);
  v86 = v87;
  sub_1000D2A70(v87, v65 + v81[7], &qword_101699E50, &qword_1013D97C0);
  sub_1000D2A70(v66, v65 + v81[8], &unk_1016AA510, &unk_101393150);
  sub_100B72A30(v75, v65 + v81[9], type metadata accessor for BeaconIdentifier);
  static Date.trustedNow.getter(v65 + v81[10]);
  sub_100016590(v103, v106);
  sub_1000D2840(v111);

  sub_100B72BF8(v75, type metadata accessor for BeaconIdentifier);
  sub_10000B3A8(v66, &unk_1016AA510, &unk_101393150);
  sub_10000B3A8(v86, &qword_101699E50, &qword_1013D97C0);
  result = sub_100B72BF8(v85, type metadata accessor for DeviceEventFormat);
  *v65 = 0;
  *(v65 + 8) = 1;
  *(v65 + 9) = v88;
  return result;
}

uint64_t sub_100B71E4C(void *a1)
{
  v2 = a1[4];
  sub_1000035D0(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_1000035D0(v4, v4[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    Date.init(timeIntervalSince1970:)();
    return sub_100007BAC(v4);
  }

  return result;
}

uint64_t sub_100B71F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_100B70EE8(a1, v2[3], a2);
}

uint64_t sub_100B71F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalFindableAccessoryRecord();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_100B71F88(_OWORD *a1, unint64_t a2)
{
  v56 = a2;
  v60 = a1;
  v2 = type metadata accessor for AES.GCM.Nonce();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v57 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for AES.GCM.SealedBox();
  v54 = *(v55 - 8);
  v5 = *(v54 + 64);
  __chkstk_darwin(v55);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymmetricKey();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for P256.Signing.ECDSASignature();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for P256.Signing.PublicKey();
  v61 = *(v16 - 8);
  v17 = *(v61 + 64);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for P256PublicKey();
  sub_100B72BB0(&qword_1016B6798, &type metadata accessor for P256PublicKey);
  *&v63 = KeyRepresenting.rawValue.getter();
  *(&v63 + 1) = v20;
  v21 = v72;
  P256.Signing.PublicKey.init<A>(rawRepresentation:)();
  if (!v21)
  {
    v50 = v7;
    v51 = v11;
    v52 = v8;
    v72 = v19;
    v53 = v12;
    v22 = v60;
    v71 = *v60;
    v63 = *v60;
    sub_1001022C4(&v71, &v67);
    sub_1000E0A3C();
    P256.Signing.ECDSASignature.init<A>(rawRepresentation:)();
    v49 = v16;
    v23 = v22[3];
    v69 = v22[1];
    v70 = v23;
    v66 = v23;
    v64 = &type metadata for Data;
    v65 = &protocol witness table for Data;
    v63 = v22[1];
    v24 = sub_1000035D0(&v63, &type metadata for Data);
    v25 = *v24;
    v26 = v24[1];
    sub_1001022C4(&v70, &v67);
    sub_1001022C4(&v69, &v67);
    sub_1001022C4(&v70, &v67);
    sub_1001022C4(&v69, &v67);
    sub_100017DB0(v25, v26);
    sub_100007BAC(&v63);
    v27 = v66;
    v68 = v22[2];
    v67 = v66;
    v64 = &type metadata for Data;
    v65 = &protocol witness table for Data;
    v63 = v22[2];
    v28 = sub_1000035D0(&v63, &type metadata for Data);
    v29 = *v28;
    v30 = v28[1];
    sub_1001022C4(&v68, v62);
    sub_1001022C4(&v68, v62);
    sub_100017D5C(v27, *(&v27 + 1));
    sub_100017DB0(v29, v30);
    sub_100016590(v27, *(&v27 + 1));
    sub_100007BAC(&v63);
    v31 = v67;
    v63 = v67;
    v32 = v72;
    if (P256.Signing.PublicKey.isValidSignature<A>(_:for:)())
    {
      type metadata accessor for SymmetricKey256();
      sub_100B72BB0(&qword_1016982E8, &type metadata accessor for SymmetricKey256);
      *&v63 = KeyRepresenting.rawValue.getter();
      *(&v63 + 1) = v33;
      v34 = v51;
      SymmetricKey.init<A>(data:)();
      v63 = v70;
      AES.GCM.Nonce.init<A>(data:)();
      v35 = v59;
      v56 = v31 >> 64;
      v60 = v31;
      v63 = v69;
      v67 = v68;
      v44 = v50;
      AES.GCM.SealedBox.init<A, B>(nonce:ciphertext:tag:)();
      v45 = v61;
      v46 = static AES.GCM.open(_:using:)();
      v47 = v44;
      v57 = 0;
      v19 = v46;
      sub_100016590(v60, v56);
      (*(v54 + 8))(v47, v55);
      (*(v58 + 8))(v34, v52);
      (*(v35 + 8))(v15, v53);
      (*(v45 + 8))(v32, v49);
    }

    else
    {
      v60 = v31;
      sub_10020545C(&v68);
      sub_10020545C(&v69);
      sub_10020545C(&v70);
      if (qword_101694CE8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_1016B66A8);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v53;
      if (v39)
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Invalid ECDSASignature", v41, 2u);
      }

      v19 = type metadata accessor for CryptoError();
      sub_100B72BB0(&qword_1016B67A0, &type metadata accessor for CryptoError);
      swift_allocError();
      (*(*(v19 - 1) + 104))(v42, enum case for CryptoError.invalidSignature(_:), v19);
      swift_willThrow();
      sub_100016590(v60, *(&v31 + 1));
      (*(v59 + 8))(v15, v40);
      (*(v31 + 8))(v32, v27);
    }
  }

  return v19;
}

uint64_t sub_100B729C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100B72A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100B72A98()
{
  result = qword_1016B67B0;
  if (!qword_1016B67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67B0);
  }

  return result;
}

unint64_t sub_100B72AEC()
{
  result = qword_1016B67B8;
  if (!qword_1016B67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67B8);
  }

  return result;
}

uint64_t sub_100B72B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B67A8, &qword_1013D97C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B72BB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100B72BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100B72C6C()
{
  result = qword_1016B67C0;
  if (!qword_1016B67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67C0);
  }

  return result;
}

uint64_t sub_100B72CD8()
{
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1016B67C8 = result;
  return result;
}

uint64_t sub_100B72D40(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_8:
        v9 = (*(a1 + 48) + 40 * (__clz(__rbit64(v4)) | (v7 << 6)));
        v11 = *v9;
        v10 = v9[1];
        v12 = v9[2];
        v19 = v9[3];
        v13 = v9[4];
        v14 = qword_101694CF8;

        if (v14 != -1)
        {
          swift_once();
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = qword_1016B67D0;
        qword_1016B67D0 = 0x8000000000000000;
        sub_100FFACA0(v11, v10, v19, v13, isUniquelyReferenced_nonNull_native);

        qword_1016B67D0 = v21;
        swift_endAccess();
        if (qword_101694D00 != -1)
        {
          swift_once();
        }

        v4 &= v4 - 1;
        sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_101385D80;
        *(v16 + 32) = v11;
        *(v16 + 40) = v10;
        v20 = v16;
        sub_100397EB4(v12);
        swift_beginAccess();
        v17 = swift_isUniquelyReferenced_nonNull_native();
        v22 = qword_1016B67D8;
        qword_1016B67D8 = 0x8000000000000000;
        sub_101000EC8(v20, v19, v13, v17);

        qword_1016B67D8 = v22;
        result = swift_endAccess();
      }

      while (v4);
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100B72FD8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = *(v4 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      String.hash(into:)();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  v9 = v1[3];
  v10 = v1[4];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B73094()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  String.hash(into:)();
  Hasher._combine(_:)(*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      String.hash(into:)();

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return String.hash(into:)();
}

Swift::Int sub_100B73140()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      String.hash(into:)();

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B731F8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10038ED80(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100B732BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Handle();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Friend();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = type metadata accessor for ClientOrigin();
  v1[11] = v8;
  v9 = *(v8 - 8);
  v1[12] = v9;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();
  v11 = *(*(type metadata accessor for RequestOrigin() - 8) + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100B73478, 0, 0);
}

uint64_t sub_100B73478()
{
  v1 = v0[14];
  (*(v0[12] + 104))(v0[13], enum case for ClientOrigin.other(_:), v0[11]);
  RequestOrigin.init(_:)();
  v2 = type metadata accessor for Session();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[15] = Session.init(_:)();
  v5 = async function pointer to Session.friendsFollowingMyLocation()[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_100B73568;

  return Session.friendsFollowingMyLocation()();
}

uint64_t sub_100B73568(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v8 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = sub_100B739B0;
  }

  else
  {
    v6 = v3[15];

    v5 = sub_100B73684;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100B73684()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v42 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v41 = *(v3 + 72);
    v39 = (v3 + 8);
    v5 = _swiftEmptyArrayStorage;
    v40 = (v0[4] + 8);
    do
    {
      v47 = v5;
      v8 = v0[9];
      v7 = v0[10];
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[3];
      v42(v7, v4, v9);
      v42(v8, v7, v9);
      Friend.handle.getter();
      v12 = Handle.serverID.getter();
      v14 = v13;
      v15 = *v40;
      (*v40)(v10, v11);
      v16 = v0[9];
      v17 = v0[10];
      v18 = v0[7];
      if (v14)
      {
        v46 = v12;
        v43 = v0[10];
        v19 = v0[5];
        v20 = v0[3];
        Friend.handle.getter();
        v21 = Handle.identifier.getter();
        v44 = v22;
        v45 = v21;
        v15(v19, v20);
        Friend.handle.getter();
        v23 = Handle.siblingIdentifiers.getter();
        v15(v19, v20);
        v24 = *v39;
        (*v39)(v16, v18);
        v24(v43, v18);
        v5 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100A5E834(0, *(v47 + 2) + 1, 1, v47);
        }

        v26 = *(v5 + 2);
        v25 = *(v5 + 3);
        if (v26 >= v25 >> 1)
        {
          v5 = sub_100A5E834((v25 > 1), v26 + 1, 1, v5);
        }

        *(v5 + 2) = v26 + 1;
        v27 = &v5[40 * v26];
        *(v27 + 4) = v45;
        *(v27 + 5) = v44;
        *(v27 + 6) = v23;
        *(v27 + 7) = v46;
        *(v27 + 8) = v14;
      }

      else
      {
        v6 = *v39;
        (*v39)(v0[9], v0[7]);
        v6(v17, v18);
        v5 = v47;
      }

      v4 += v41;
      --v2;
    }

    while (v2);
    v28 = v0[17];
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v30 = v0[13];
  v29 = v0[14];
  v32 = v0[9];
  v31 = v0[10];
  v34 = v0[5];
  v33 = v0[6];
  v35 = v0[2];
  v36 = sub_10112B748(v5);

  *v35 = v36;

  v37 = v0[1];

  return v37();
}

uint64_t sub_100B739B0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];
  v9 = v0[18];

  return v8();
}

unint64_t sub_100B73A74()
{
  result = qword_1016B67E0;
  if (!qword_1016B67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67E0);
  }

  return result;
}

uint64_t sub_100B73AC8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1684628325;
    v7 = 0x754E6C6169726573;
    v8 = 0x49746375646F7270;
    if (a1 != 3)
    {
      v8 = 0x6449726F646E6576;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x644970696863;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4364656573;
    v2 = 0x7361486572616873;
    if (a1 != 9)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6F69737265567766;
    v4 = 0x727574616E676973;
    if (a1 != 6)
    {
      v4 = 0x4E6E6F6973736573;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100B73C38(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B67E8, &qword_1013D9C90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B741A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v27) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v27) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    LOBYTE(v27) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[7];
    LOBYTE(v27) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v27) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = *(v3 + 5);
    v27 = *(v3 + 5);
    v26 = 6;
    sub_1001022C4(&v31, v25);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v27, *(&v27 + 1));
    v30 = *(v3 + 6);
    v27 = *(v3 + 6);
    v26 = 7;
    sub_1001022C4(&v30, v25);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v27, *(&v27 + 1));
    v29 = *(v3 + 7);
    v27 = *(v3 + 7);
    v26 = 8;
    sub_1001022C4(&v29, v25);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v27, *(&v27 + 1));
    v27 = *(v3 + 8);
    v28 = v27;
    v26 = 9;
    sub_1001022C4(&v28, v25);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v27, *(&v27 + 1));
    v21 = v3[18];
    v22 = v3[19];
    LOBYTE(v27) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100B73FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B74310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B74008(uint64_t a1)
{
  v2 = sub_100B741A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B74044(uint64_t a1)
{
  v2 = sub_100B741A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B74080(void *a1)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_100B73C38(a1);
}

uint64_t sub_100B740E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_100B7412C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100B741A4()
{
  result = qword_1016B67F0;
  if (!qword_1016B67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67F0);
  }

  return result;
}

unint64_t sub_100B7420C()
{
  result = qword_1016B67F8;
  if (!qword_1016B67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B67F8);
  }

  return result;
}

unint64_t sub_100B74264()
{
  result = qword_1016B6800;
  if (!qword_1016B6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6800);
  }

  return result;
}

unint64_t sub_100B742BC()
{
  result = qword_1016B6808;
  if (!qword_1016B6808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6808);
  }

  return result;
}

uint64_t sub_100B74310(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x644970696863 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69737265567766 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4364656573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7361486572616873 && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100B74694(uint64_t a1, uint64_t a2)
{
  v2[42] = a1;
  v2[43] = a2;
  v3 = type metadata accessor for HashAlgorithm();
  v2[44] = v3;
  v4 = *(v3 - 8);
  v2[45] = v4;
  v5 = *(v4 + 64) + 15;
  v2[46] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[47] = v6;
  v7 = *(v6 - 8);
  v2[48] = v7;
  v8 = *(v7 + 64) + 15;
  v2[49] = swift_task_alloc();

  return _swift_task_switch(sub_100B747B0, 0, 0);
}

void sub_100B747B0()
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

  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 376);
  v9 = *(v0 + 336);
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
  *(v0 + 400) = v25;
  v30 = type metadata accessor for JSONEncoder();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(v0 + 408) = JSONEncoder.init()();
  *(v0 + 16) = *v9;
  v33 = v9[4];
  v35 = v9[1];
  v34 = v9[2];
  *(v0 + 64) = v9[3];
  *(v0 + 80) = v33;
  *(v0 + 32) = v35;
  *(v0 + 48) = v34;
  sub_100B7586C();
  v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 416) = 0;
  *(v0 + 424) = v36;
  *(v0 + 432) = v37;
  sub_100017D5C(v36, v37);
  v38 = swift_task_alloc();
  *(v0 + 440) = v38;
  *v38 = v0;
  v38[1] = sub_100B74C80;

  sub_100EA3F5C();
}

uint64_t sub_100B74C80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 440);
  v6 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = a2;

  return _swift_task_switch(sub_100B74D80, 0, 0);
}

uint64_t sub_100B74D80()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 416);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 352);
  *(v0 + 296) = v2;
  *(v0 + 304) = v1;
  *(v0 + 280) = &type metadata for Data;
  *(v0 + 288) = &protocol witness table for Data;
  *(v0 + 256) = *(v0 + 424);
  v7 = sub_1000035D0((v0 + 256), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 256));
  v10 = *(v0 + 304);
  *(v0 + 464) = *(v0 + 296);
  *(v0 + 472) = v10;
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  *(v0 + 480) = v11;
  *(v0 + 488) = v12;
  (*(v5 + 8))(v4, v6);
  v14 = swift_task_alloc();
  *(v0 + 496) = v14;
  *v14 = v0;
  v14[1] = sub_100B74F20;
  v15 = *(v0 + 344);

  return sub_100EA87F4(v11, v13, v15);
}

uint64_t sub_100B74F20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    v7 = sub_100B75414;
  }

  else
  {
    v8 = v4[60];
    v9 = v4[61];
    v4[64] = a1;
    sub_100016590(v8, v9);
    v7 = sub_100B75050;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100B75050()
{
  v48 = v0;
  v2 = v0[63];
  v1 = v0[64];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[50];
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

  v26 = *(v43 + 424);
  v27 = *(v43 + 432);
  v28 = *(v43 + 408);
  v29 = *(v43 + 336);
  v46 = *(v43 + 344);

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
  v38 = *(v43 + 424);
  v37 = *(v43 + 432);
  v39 = *(v43 + 392);
  v40 = *(v43 + 368);

  v41 = *(v43 + 8);

  return v41(v44, v38, v37);
}

uint64_t sub_100B75414()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  sub_100016590(*(v0 + 480), *(v0 + 488));
  sub_100016590(v1, v2);
  static os_log_type_t.error.getter();
  v3 = &qword_101695000;
  if (qword_1016950C8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v4 = *(v0 + 504);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  *(v0 + 328) = v4;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v43 = sub_100008C00();
  *(v5 + 64) = v43;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  v42 = v0;
  v0 = *(v0 + 400);
  static os_log_type_t.debug.getter();
  if (*(v3 + 200) != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v9 = v0 + 64;
  v10 = -1;
  v11 = -1 << *(v0 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v3 = v10 & *(v0 + 64);
  v12 = (63 - v11) >> 6;
  v44 = v0;

  v13 = 0;
  while (v3)
  {
    v14 = v13;
    v15 = v44;
LABEL_13:
    v16 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v17 = (v14 << 10) | (16 * v16);
    v18 = *(v15 + 56);
    v19 = (*(v15 + 48) + v17);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v18 + v17);
    v0 = *v22;
    v23 = v22[1];

    static os_log_type_t.debug.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10138BBE0;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v43;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v43;
    *(v24 + 72) = v0;
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
      goto LABEL_19;
    }

    if (v14 >= v12)
    {
      break;
    }

    v3 = *(v9 + 8 * v14);
    ++v13;
    if (v3)
    {
      v13 = v14;
      goto LABEL_13;
    }
  }

  v26 = *(v42 + 424);
  v25 = *(v42 + 432);
  v27 = *(v42 + 408);
  v28 = *(v42 + 336);
  v29 = *(v42 + 344);

  static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_101385D80;
  *(v42 + 176) = *v28;
  v31 = v28[4];
  v33 = v28[1];
  v32 = v28[2];
  *(v42 + 224) = v28[3];
  *(v42 + 240) = v31;
  *(v42 + 192) = v33;
  *(v42 + 208) = v32;
  v34 = String.init<A>(describing:)();
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v43;
  *(v30 + 32) = v34;
  *(v30 + 40) = v35;
  os_log(_:dso:log:_:_:)();

  sub_100017D5C(v26, v25);

  sub_100016590(v26, v25);
  v37 = *(v42 + 424);
  v36 = *(v42 + 432);
  v38 = *(v42 + 392);
  v39 = *(v42 + 368);

  v40 = *(v42 + 8);

  return v40(v44, v37, v36);
}

unint64_t sub_100B7586C()
{
  result = qword_1016B6810;
  if (!qword_1016B6810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6810);
  }

  return result;
}

uint64_t sub_100B758E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_100B75928(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FetchResponse.SearchResult()
{
  result = qword_1016B6870;
  if (!qword_1016B6870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100B759EC()
{
  sub_100B75A88();
  if (v0 <= 0x3F)
  {
    sub_100157BAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100B75A88()
{
  if (!qword_1016B6880)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B6880);
    }
  }
}

uint64_t sub_100B75B94()
{
  if (*v0)
  {
    result = 0x6F43737574617473;
  }

  else
  {
    result = 0x73746C75736572;
  }

  *v0;
  return result;
}

uint64_t sub_100B75BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
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

uint64_t sub_100B75CB8(uint64_t a1)
{
  v2 = sub_100B76F78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B75CF4(uint64_t a1)
{
  v2 = sub_100B76F78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B75D30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100B76D7C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_100B75D64()
{
  v1 = 25705;
  v2 = 0x656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x656B636150766C74;
  }

  if (*v0)
  {
    v1 = 0x7364616F6C796170;
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

uint64_t sub_100B75DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B770FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B75DFC(uint64_t a1)
{
  v2 = sub_100B77FF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B75E38(uint64_t a1)
{
  v2 = sub_100B77FF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100B75E74@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B7725C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100B75EBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001F280(a1, v13);
  sub_100B7725C(v13, &v14);
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v18 = v14;
  *a2 = v14;
  v6 = type metadata accessor for FetchResponse.SearchResult();
  v7 = *(v6 + 24);
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = v16;
  if (v16 == 20)
  {
    v9 = 7;
  }

  *(a2 + *(v6 + 28)) = v9;
  v10 = v15;
  v11 = v17;
  sub_1001022C4(&v18, v13);
  v12 = sub_100B9C7B8(v10, v11);
  sub_100B77FC8(&v14);
  result = sub_100007BAC(a1);
  *(a2 + 16) = v12;
  return result;
}

uint64_t sub_100B75FF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x61636F4C6E736361;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = 0x8000000101349FC0;
  }

  else
  {
    v5 = 0xED0000736E6F6974;
  }

  if (*a2)
  {
    v6 = 0x61636F4C6E736361;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = 0xED0000736E6F6974;
  }

  else
  {
    v7 = 0x8000000101349FC0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100B760A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100B7613C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100B761BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100B76258(unint64_t *a1@<X8>)
{
  v2 = 0x8000000101349FC0;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x61636F4C6E736361;
    v2 = 0xED0000736E6F6974;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_100B762A8()
{
  if (*v0)
  {
    result = 0x61636F4C6E736361;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_100B762F4@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160C5D8, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_100B76358(uint64_t a1)
{
  v2 = sub_100B77DA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B76394(uint64_t a1)
{
  v2 = sub_100B77DA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B763D0(uint64_t a1)
{
  v2 = sub_100B787FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B7640C(uint64_t a1)
{
  v2 = sub_100B787FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B76474()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0x656B636150766C74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_100B764D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B78928(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B764F8(uint64_t a1)
{
  v2 = sub_100B79C30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B76534(uint64_t a1)
{
  v2 = sub_100B79C30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B76570@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100B78A44(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100B765A0(uint64_t a1)
{
  v2 = sub_100B790A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B765DC(uint64_t a1)
{
  v2 = sub_100B790A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100B76644@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t sub_100B76684@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100B775A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100B76760(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v17 = a4;
  v8 = sub_1000BC4D4(&qword_1016B6A98, &qword_1013DAD18);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B79FF0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v20 = a3;
  v18 = 0;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v19, v20);
  if (!v4)
  {
    v14 = v17;
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = v14;
    v18 = 2;
    sub_100B7A098();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100B76948()
{
  v1 = 7630182;
  if (*v0 == 1)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_100B76990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100B794A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100B769B8(uint64_t a1)
{
  v2 = sub_100B79FF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B769F4(uint64_t a1)
{
  v2 = sub_100B79FF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100B76A30(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_100B795C8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v6;
  }
}

uint64_t sub_100B76A88(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B6A38, &qword_1013DAA00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B79B04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  v19 = v18;
  v17[23] = 0;
  sub_1001022C4(&v19, v17);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v18, *(&v18 + 1));
  if (!v2)
  {
    v11 = *(v3 + 2);
    v12 = *(v3 + 24);
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 4);
    v14 = *(v3 + 5);
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v18 = *(v3 + 6);
    v17[0] = 3;
    sub_1000BC4D4(&qword_1016B6A10, &qword_1013DA9F0);
    sub_100B79C84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100B76C9C(uint64_t a1)
{
  v2 = sub_100B79B04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100B76CD8(uint64_t a1)
{
  v2 = sub_100B79B04();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100B76D14@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100B79820(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_100B76D7C(uint64_t *a1)
{
  v2 = sub_1000BC4D4(&qword_1016B68B8, &qword_1013D9FD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B76F78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1000BC4D4(&qword_1016B68C8, &qword_1013D9FD8);
  v10[7] = 0;
  sub_100B76FCC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v11;
  v10[5] = 1;
  sub_100B770A8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100007BAC(a1);
  return v9;
}

unint64_t sub_100B76F78()
{
  result = qword_1016B68C0;
  if (!qword_1016B68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68C0);
  }

  return result;
}

unint64_t sub_100B76FCC()
{
  result = qword_1016B68D0;
  if (!qword_1016B68D0)
  {
    sub_1000BC580(&qword_1016B68C8, &qword_1013D9FD8);
    sub_100B77050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68D0);
  }

  return result;
}

unint64_t sub_100B77050()
{
  result = qword_1016B68D8;
  if (!qword_1016B68D8)
  {
    type metadata accessor for FetchResponse.SearchResult();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68D8);
  }

  return result;
}

unint64_t sub_100B770A8()
{
  result = qword_1016B68E0;
  if (!qword_1016B68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68E0);
  }

  return result;
}

uint64_t sub_100B770FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364616F6C796170 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656B636150766C74 && a2 == 0xEA00000000007374)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100B7725C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B6908, &qword_1013D9FE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B77FF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v23 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v20;
  v19 = v21;
  sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
  v23 = 1;
  sub_1006476FC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v20;
  v23 = 2;
  sub_100479640();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v20;
  sub_1000BC4D4(&qword_1016B6918, &qword_101406490);
  v23 = 3;
  sub_100B7804C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v11;
  v13 = v11;
  v15 = v19;
  v14 = v20;
  sub_100017D5C(v13, v19);

  v16 = v18;

  sub_100007BAC(a1);
  sub_100016590(v12, v15);

  *a2 = v12;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v22;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_100B775A0(uint64_t *a1)
{
  v2 = type metadata accessor for FetchResponse.SearchResult();
  v86 = *(v2 - 8);
  v87 = v2;
  v3 = *(v86 + 64);
  v4 = __chkstk_darwin(v2);
  v81 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = (&v69 - v7);
  v9 = __chkstk_darwin(v6);
  v11 = &v69 - v10;
  __chkstk_darwin(v9);
  v13 = &v69 - v12;
  v14 = sub_1000BC4D4(&qword_1016B68E8, &qword_1013D9FE0);
  v85 = *(v14 - 8);
  v15 = *(v85 + 64);
  __chkstk_darwin(v14);
  v17 = &v69 - v16;
  v18 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B77DA8();
  v19 = v88;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    sub_100007BAC(a1);
    return v8;
  }

  v84 = v13;
  v88 = v11;
  v80 = v8;
  v92 = 0;
  sub_100B77DFC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v89;
  v21 = v90;
  v92 = 1;
  sub_100B77E50();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v89;
  v24 = v90;
  v70 = a1;
  v69 = v14;
  v25 = v85;
  v75 = v17;
  v76 = 0;
  v71 = v89;
  if (!v20)
  {
    v8 = _swiftEmptyArrayStorage;
    goto LABEL_32;
  }

  v91 = v90;
  if ((v21 & 0x100) != 0)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
LABEL_30:
      v8 = _swiftEmptyArrayStorage;
LABEL_31:

      v23 = v71;
      v24 = v91;
      v14 = v69;
      v25 = v85;
      a1 = v70;
LABEL_32:
      if (!v23)
      {
LABEL_45:
        (*(v25 + 8))(v17, v14);
        sub_100007BAC(a1);
        return v8;
      }

      if ((v24 & 0x100) != 0)
      {
      }

      else
      {
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v51 & 1) == 0)
        {
LABEL_44:

          a1 = v70;
          v14 = v69;
          v25 = v85;
          v17 = v75;
          goto LABEL_45;
        }
      }

      v52 = *(v71 + 16);
      if (v52)
      {
        v53 = (v71 + 56);
        v55 = v80;
        v54 = v81;
        do
        {
          v88 = v52;
          v56 = *(v53 - 3);
          v57 = *(v53 - 2);
          v59 = *(v53 - 1);
          v58 = *v53;

          sub_100017D5C(v57, v59);

          sub_100017D5C(v57, v59);
          v83 = v56;
          v84 = v58;
          v60 = sub_100B9C7B8(v56, v58);
          v61 = v87;
          v62 = *(v87 + 24);
          v63 = type metadata accessor for Date();
          (*(*(v63 - 8) + 56))(v55 + v62, 1, 1, v63);
          *v55 = v57;
          v55[1] = v59;
          v55[2] = v60;
          *(v55 + *(v61 + 28)) = 7;
          sub_100B77EA4(v55, v54);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = v54;
          v66 = v8;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v66 = sub_100A5EA70(0, v8[2] + 1, 1, v8);
          }

          v68 = v66[2];
          v67 = v66[3];
          v8 = v66;
          if (v68 >= v67 >> 1)
          {
            v8 = sub_100A5EA70(v67 > 1, v68 + 1, 1, v66);
          }

          v53 += 4;

          sub_100016590(v57, v59);

          v55 = v80;
          sub_100B77F08(v80);
          v8[2] = v68 + 1;
          sub_100B77F64(v65, v8 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v68);
          v52 = (v88 - 1);
          v54 = v65;
        }

        while (v88 != 1);
      }

      goto LABEL_44;
    }
  }

  v74 = *(v20 + 16);
  if (!v74)
  {
    goto LABEL_30;
  }

  v27 = 0;
  v8 = _swiftEmptyArrayStorage;
  v72 = v20;
  v73 = v20 + 32;
  while (v27 < *(v20 + 16))
  {
    v78 = v27;
    v79 = v8;
    v28 = (v73 + 56 * v27);
    v29 = *v28;
    v30 = v28[5];
    v31 = v28[6];
    v32 = *(v31 + 16);
    v82 = v28[1];
    v83 = v29;
    sub_100017D5C(v29, v82);
    v77 = v30;

    if (v32)
    {
      v33 = 0;
      v34 = (v31 + 40);
      v35 = _swiftEmptyArrayStorage;
      while (v33 < *(v31 + 16))
      {
        v36 = *(v34 - 1);
        v37 = *v34;
        sub_100017D5C(v36, *v34);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100A5E954(0, *(v35 + 2) + 1, 1, v35);
          v35 = result;
        }

        v39 = *(v35 + 2);
        v38 = *(v35 + 3);
        if (v39 >= v38 >> 1)
        {
          result = sub_100A5E954((v38 > 1), v39 + 1, 1, v35);
          v35 = result;
        }

        ++v33;
        *(v35 + 2) = v39 + 1;
        v40 = &v35[24 * v39];
        *(v40 + 4) = v36;
        *(v40 + 5) = v37;
        v40[52] = 0;
        *(v40 + 12) = 3;
        v34 += 4;
        if (v32 == v33)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      break;
    }

    v35 = _swiftEmptyArrayStorage;
LABEL_24:
    v41 = v87;
    v42 = *(v87 + 24);
    v43 = type metadata accessor for Date();
    v44 = v84 + v42;
    v45 = v84;
    (*(*(v43 - 8) + 56))(v44, 1, 1, v43);
    v47 = v82;
    v46 = v83;
    *v45 = v83;
    v45[1] = v47;
    v45[2] = v35;
    *(v45 + *(v41 + 28)) = 15;
    sub_100B77EA4(v45, v88);
    sub_100017D5C(v46, v47);
    v8 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100A5EA70(0, v8[2] + 1, 1, v8);
    }

    v48 = v86;
    v17 = v75;
    v20 = v72;
    v50 = v8[2];
    v49 = v8[3];
    if (v50 >= v49 >> 1)
    {
      v8 = sub_100A5EA70(v49 > 1, v50 + 1, 1, v8);
    }

    v27 = v78 + 1;
    sub_100016590(v83, v82);

    sub_100B77F08(v84);
    v8[2] = v50 + 1;
    result = sub_100B77F64(v88, v8 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50);
    if (v27 == v74)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100B77DA8()
{
  result = qword_1016B68F0;
  if (!qword_1016B68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68F0);
  }

  return result;
}

unint64_t sub_100B77DFC()
{
  result = qword_1016B68F8;
  if (!qword_1016B68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B68F8);
  }

  return result;
}

unint64_t sub_100B77E50()
{
  result = qword_1016B6900;
  if (!qword_1016B6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6900);
  }

  return result;
}

uint64_t sub_100B77EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchResponse.SearchResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B77F08(uint64_t a1)
{
  v2 = type metadata accessor for FetchResponse.SearchResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B77F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FetchResponse.SearchResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100B77FF8()
{
  result = qword_1016B6910;
  if (!qword_1016B6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6910);
  }

  return result;
}

unint64_t sub_100B7804C()
{
  result = qword_1016B6920;
  if (!qword_1016B6920)
  {
    sub_1000BC580(&qword_1016B6918, &qword_101406490);
    sub_1006476FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6920);
  }

  return result;
}

__n128 sub_100B780F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_100B78114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_100B7815C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100B781E0()
{
  result = qword_1016B6928;
  if (!qword_1016B6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6928);
  }

  return result;
}

unint64_t sub_100B78238()
{
  result = qword_1016B6930;
  if (!qword_1016B6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6930);
  }

  return result;
}

unint64_t sub_100B78290()
{
  result = qword_1016B6938;
  if (!qword_1016B6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6938);
  }

  return result;
}

unint64_t sub_100B782E8()
{
  result = qword_1016B6940;
  if (!qword_1016B6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6940);
  }

  return result;
}

unint64_t sub_100B78340()
{
  result = qword_1016B6948;
  if (!qword_1016B6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6948);
  }

  return result;
}

unint64_t sub_100B78398()
{
  result = qword_1016B6950;
  if (!qword_1016B6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6950);
  }

  return result;
}

unint64_t sub_100B783F0()
{
  result = qword_1016B6958;
  if (!qword_1016B6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6958);
  }

  return result;
}

unint64_t sub_100B78448()
{
  result = qword_1016B6960;
  if (!qword_1016B6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6960);
  }

  return result;
}

unint64_t sub_100B784A0()
{
  result = qword_1016B6968;
  if (!qword_1016B6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6968);
  }

  return result;
}

unint64_t sub_100B784F8()
{
  result = qword_1016B6970;
  if (!qword_1016B6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6970);
  }

  return result;
}

unint64_t sub_100B7854C()
{
  result = qword_1016B6978;
  if (!qword_1016B6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6978);
  }

  return result;
}

uint64_t sub_100B785A0(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6980, &qword_1013DA5C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100B787FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000BC4D4(&qword_1016B6990, &qword_1013DA5D0);
    v10[15] = 0;
    sub_100B78850();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[14] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10[12] = 2;
    sub_100B770A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

unint64_t sub_100B787FC()
{
  result = qword_1016B6988;
  if (!qword_1016B6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6988);
  }

  return result;
}

unint64_t sub_100B78850()
{
  result = qword_1016B6998;
  if (!qword_1016B6998)
  {
    sub_1000BC580(&qword_1016B6990, &qword_1013DA5D0);
    sub_100B788D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6998);
  }

  return result;
}

unint64_t sub_100B788D4()
{
  result = qword_1016B69A0;
  if (!qword_1016B69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69A0);
  }

  return result;
}

uint64_t sub_100B78928(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656B636150766C74 && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100B78A44(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B6A28, &qword_1013DA9F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100B79C30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    v15 = 0;
    sub_1006476FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    v15 = 1;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v13;
    v11 = v14;
    sub_1000BC4D4(&qword_1016B6918, &qword_101406490);
    v15 = 2;
    sub_100B7804C();
    v12[1] = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);

    sub_100017D5C(v10, v11);

    sub_100007BAC(a1);

    sub_100016590(v10, v11);
  }

  return v8;
}

uint64_t sub_100B78D18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEF64616F6C796150;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65566769666E6F63 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100B78E48(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B69A8, &qword_1013DA5D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000035D0(a1, v8);
  sub_100B790A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000BC4D4(&qword_1016B69B8, &qword_1013DA5E0);
    v10[15] = 0;
    sub_100B790F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[14] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10[12] = 2;
    sub_100B770A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

unint64_t sub_100B790A4()
{
  result = qword_1016B69B0;
  if (!qword_1016B69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69B0);
  }

  return result;
}

unint64_t sub_100B790F8()
{
  result = qword_1016B69C0;
  if (!qword_1016B69C0)
  {
    sub_1000BC580(&qword_1016B69B8, &qword_1013DA5E0);
    sub_100B7917C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69C0);
  }

  return result;
}

unint64_t sub_100B7917C()
{
  result = qword_1016B69C8;
  if (!qword_1016B69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69C8);
  }

  return result;
}

uint64_t sub_100B791F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100B79238(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100B7929C()
{
  result = qword_1016B69D0;
  if (!qword_1016B69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69D0);
  }

  return result;
}

unint64_t sub_100B792F4()
{
  result = qword_1016B69D8;
  if (!qword_1016B69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69D8);
  }

  return result;
}

unint64_t sub_100B7934C()
{
  result = qword_1016B69E0;
  if (!qword_1016B69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69E0);
  }

  return result;
}

unint64_t sub_100B793A4()
{
  result = qword_1016B69E8;
  if (!qword_1016B69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69E8);
  }

  return result;
}

unint64_t sub_100B793FC()
{
  result = qword_1016B69F0;
  if (!qword_1016B69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69F0);
  }

  return result;
}

unint64_t sub_100B79454()
{
  result = qword_1016B69F8;
  if (!qword_1016B69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B69F8);
  }

  return result;
}

uint64_t sub_100B794A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEA00000000007354 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7630182 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_100B795C8(uint64_t *a1)
{
  v4 = sub_1000BC4D4(&qword_1016B6A80, &qword_1013DAD10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B79FF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    v15 = 0;
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v14[0];
    v12 = v14[1];
    LOBYTE(v14[0]) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v13;
    v15 = 2;
    sub_100B7A044();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    sub_100017D5C(v11, v12);
    sub_100007BAC(a1);
    sub_100016590(v11, v12);
  }

  return v2;
}

uint64_t sub_100B79820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B6A00, &qword_1013DA9E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100B79B04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v29 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v26;
  v25 = v27;
  LOBYTE(v26) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v13;
  v24 = v12;
  LOBYTE(v26) = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v23 = v14;
  sub_1000BC4D4(&qword_1016B6A10, &qword_1013DA9F0);
  v29 = 3;
  sub_100B79B58();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v11;
  v18 = v11;
  v20 = v25;
  v19 = v26;
  sub_100017D5C(v18, v25);

  sub_100007BAC(a1);
  sub_100016590(v17, v20);

  *a2 = v17;
  *(a2 + 8) = v20;
  *(a2 + 16) = v24;
  *(a2 + 24) = v28 & 1;
  *(a2 + 32) = v23;
  *(a2 + 40) = v16;
  *(a2 + 48) = v19;
  return result;
}

unint64_t sub_100B79B04()
{
  result = qword_1016B6A08;
  if (!qword_1016B6A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A08);
  }

  return result;
}

unint64_t sub_100B79B58()
{
  result = qword_1016B6A18;
  if (!qword_1016B6A18)
  {
    sub_1000BC580(&qword_1016B6A10, &qword_1013DA9F0);
    sub_100B79BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A18);
  }

  return result;
}

unint64_t sub_100B79BDC()
{
  result = qword_1016B6A20;
  if (!qword_1016B6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A20);
  }

  return result;
}

unint64_t sub_100B79C30()
{
  result = qword_1016B6A30;
  if (!qword_1016B6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A30);
  }

  return result;
}

unint64_t sub_100B79C84()
{
  result = qword_1016B6A40;
  if (!qword_1016B6A40)
  {
    sub_1000BC580(&qword_1016B6A10, &qword_1013DA9F0);
    sub_100B79D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A40);
  }

  return result;
}

unint64_t sub_100B79D08()
{
  result = qword_1016B6A48;
  if (!qword_1016B6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A48);
  }

  return result;
}

uint64_t sub_100B79D7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

unint64_t sub_100B79DE4()
{
  result = qword_1016B6A50;
  if (!qword_1016B6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A50);
  }

  return result;
}

unint64_t sub_100B79E3C()
{
  result = qword_1016B6A58;
  if (!qword_1016B6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A58);
  }

  return result;
}

unint64_t sub_100B79E94()
{
  result = qword_1016B6A60;
  if (!qword_1016B6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A60);
  }

  return result;
}

unint64_t sub_100B79EEC()
{
  result = qword_1016B6A68;
  if (!qword_1016B6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A68);
  }

  return result;
}

unint64_t sub_100B79F44()
{
  result = qword_1016B6A70;
  if (!qword_1016B6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A70);
  }

  return result;
}

unint64_t sub_100B79F9C()
{
  result = qword_1016B6A78;
  if (!qword_1016B6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A78);
  }

  return result;
}

unint64_t sub_100B79FF0()
{
  result = qword_1016B6A88;
  if (!qword_1016B6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A88);
  }

  return result;
}

unint64_t sub_100B7A044()
{
  result = qword_1016B6A90;
  if (!qword_1016B6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6A90);
  }

  return result;
}

unint64_t sub_100B7A098()
{
  result = qword_1016B6AA0;
  if (!qword_1016B6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6AA0);
  }

  return result;
}

unint64_t sub_100B7A110()
{
  result = qword_1016B6AA8;
  if (!qword_1016B6AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6AA8);
  }

  return result;
}

unint64_t sub_100B7A168()
{
  result = qword_1016B6AB0;
  if (!qword_1016B6AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6AB0);
  }

  return result;
}

unint64_t sub_100B7A1C0()
{
  result = qword_1016B6AB8;
  if (!qword_1016B6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6AB8);
  }

  return result;
}

unint64_t sub_100B7A218()
{
  result = qword_1016B6AC0;
  if (!qword_1016B6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B6AC0);
  }

  return result;
}

unint64_t sub_100B7A26C()
{
  result = qword_1016B6AC8[0];
  if (!qword_1016B6AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016B6AC8);
  }

  return result;
}

uint64_t sub_100B7A2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a2;
  v35 = *(a1 + 16);
  v5 = type metadata accessor for FailableRecord();
  v6 = type metadata accessor for Optional();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v33 = &v32 - v8;
  v9 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for URL();
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  __chkstk_darwin(v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v32 - v19;
  v21 = type metadata accessor for DirectorySequence();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v26 = *(a1 + 40);
  v39 = v3;
  sub_100B7A72C(v3 + v26, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000B3A8(v20, &qword_1016A5970, &unk_1013B3470);
    return (*(*(v5 - 8) + 56))(v40, 1, 1, v5);
  }

  (*(v22 + 32))(v25, v20, v21);
  DirectorySequence.next()();
  v27 = v38;
  if ((*(v38 + 48))(v12, 1, v13) == 1)
  {
    (*(v22 + 8))(v25, v21);
    sub_10000B3A8(v12, &unk_101696AC0, &qword_101390A60);
    v28 = v39;
    sub_10000B3A8(v39 + v26, &qword_1016A5970, &unk_1013B3470);
    (*(v22 + 56))(v28 + v26, 1, 1, v21);
    return (*(*(v5 - 8) + 56))(v40, 1, 1, v5);
  }

  (*(v27 + 32))(v16, v12, v13);
  v30 = objc_autoreleasePoolPush();
  v31 = v33;
  sub_100B7A79C(v16, v39, v35, *(v34 + 24), v33);
  objc_autoreleasePoolPop(v30);
  (*(v22 + 8))(v25, v21);
  (*(v36 + 32))(v40, v31, v37);
  return (*(v27 + 8))(v16, v13);
}

uint64_t sub_100B7A72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B7A79C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v137 = a4;
  v139 = a2;
  v144 = a5;
  v142 = type metadata accessor for BeaconStoreFileRecord();
  v7 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v135 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v131 = *(v9 - 8);
  v132 = v9;
  v10 = *(v131 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v128 - v12;
  v143 = a3;
  v136 = *(a3 - 8);
  v14 = *(v136 + 64);
  __chkstk_darwin(v11);
  v130 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for URL();
  v145 = *(v147 - 8);
  v16 = *(v145 + 64);
  v17 = __chkstk_darwin(v147);
  v19 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v128 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v128 - v24;
  v26 = __chkstk_darwin(v23);
  v134 = &v128 - v27;
  __chkstk_darwin(v26);
  v29 = &v128 - v28;
  v30 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v128 - v32;
  v34 = type metadata accessor for UUID();
  v140 = *(v34 - 8);
  v141 = v34;
  v35 = v140[8];
  v36 = __chkstk_darwin(v34);
  v133 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v138 = &v128 - v38;
  v146 = a1;
  if (URL.pathExtension.getter() == 0xD000000000000010 && 0x80000001013541B0 == v39)
  {

LABEL_5:
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000076D4(v41, qword_10177BA08);
    v42 = v145;
    v43 = *(v145 + 16);
    v44 = v147;
    v43(v19, v146, v147);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v148 = v48;
      *v47 = 141558275;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      sub_100B7B820();
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v145 + 8))(v19, v147);
      v52 = sub_1000136BC(v49, v51, &v148);

      *(v47 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Tombstoned file extension. Skipping file %{private,mask.hash}s", v47, 0x16u);
      sub_100007BAC(v48);
      v44 = v147;

      v42 = v145;
    }

    else
    {

      (*(v42 + 8))(v19, v44);
    }

    v53 = v144;
    v54 = v146;
    v43(v144, v146, v44);
    v55 = *(v142 + 20);
    v43((v53 + v55), v54, v44);
    (*(v42 + 56))(v53 + v55, 0, 1, v44);
    goto LABEL_11;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_5;
  }

  if (URL.pathExtension.getter() == 0x64726F636572 && v60 == 0xE600000000000000)
  {

    v61 = v147;
  }

  else
  {
    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v61 = v147;
    if ((v62 & 1) == 0)
    {
      v103 = v144;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_1000076D4(v104, qword_10177BA08);
      v105 = v145;
      (*(v145 + 16))(v22, v146, v61);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v148 = v109;
        *v108 = 141558275;
        *(v108 + 4) = 1752392040;
        *(v108 + 12) = 2081;
        sub_100B7B820();
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = v61;
        v113 = v112;
        (*(v105 + 8))(v22, v111);
        v114 = sub_1000136BC(v110, v113, &v148);

        *(v108 + 14) = v114;
        _os_log_impl(&_mh_execute_header, v106, v107, "Invalid extension. Skipping file %{private,mask.hash}s", v108, 0x16u);
        sub_100007BAC(v109);
      }

      else
      {

        (*(v105 + 8))(v22, v61);
      }

      v119 = type metadata accessor for FailableRecord();
      return (*(*(v119 - 8) + 56))(v103, 1, 1, v119);
    }
  }

  v63 = v29;
  URL.deletingPathExtension()();
  URL.lastPathComponent.getter();
  v64 = v145 + 8;
  v129 = *(v145 + 8);
  v129(v29, v61);
  UUID.init(uuidString:)();

  v66 = v140;
  v65 = v141;
  if ((v140[6])(v33, 1, v141) != 1)
  {
    (v66[4])(v138, v33, v65);
    v80 = v143;
    v81 = *(v139 + *(type metadata accessor for FailableRecordSequence() + 36));
    v82 = v145 + 16;
    v146 = *(v145 + 16);
    v146(v29);

    sub_100B2C7A8();

    v83 = v129;
    v129(v63, v61);
    v84 = v136;
    if ((*(v136 + 48))(v13, 1, v80) != 1)
    {
      (v140[1])(v138, v141);
      v116 = *(v84 + 32);
      v117 = v130;
      v116(v130, v13, v80);
      v118 = v144;
      v116(v144, v117, v80);
      v56 = type metadata accessor for FailableRecord();
      swift_storeEnumTagMultiPayload();
      v57 = *(*(v56 - 8) + 56);
      v58 = v118;
      return v57(v58, 0, 1, v56);
    }

    (*(v131 + 8))(v13, v132);
    v85 = v146;
    (v146)(v63, v139, v61);
    v132 = URL.description.getter();
    v87 = v86;
    v137 = v64;
    v83(v63, v61);
    v88 = v82;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_1000076D4(v89, qword_10177BA08);
    v90 = v140;
    v91 = v133;
    (v140[2])(v133, v138, v141);

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v131 = v88;
      v95 = v94;
      v148 = swift_slowAlloc();
      *v95 = 141558787;
      *(v95 + 4) = 1752392040;
      *(v95 + 12) = 2081;
      v96 = UUID.uuidString.getter();
      v97 = v91;
      v99 = v98;
      v100 = v90[1];
      v136 = (v90 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v140 = v100;
      (v100)(v97, v141);
      v101 = sub_1000136BC(v96, v99, &v148);

      *(v95 + 14) = v101;
      *(v95 + 22) = 2160;
      *(v95 + 24) = 1752392040;
      *(v95 + 32) = 2081;
      v102 = sub_1000136BC(v132, v87, &v148);

      *(v95 + 34) = v102;
      _os_log_impl(&_mh_execute_header, v92, v93, "Could not read item %{private,mask.hash}s for records at: %{private,mask.hash}s", v95, 0x2Au);
      swift_arrayDestroy();

      v85 = v146;
    }

    else
    {

      v120 = v90[1];
      v136 = (v90 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v140 = v120;
      (v120)(v91, v141);
    }

    v121 = v147;
    v85(v63, v139, v147);
    v146 = objc_autoreleasePoolPush();
    v122 = v138;
    UUID.uuidString.getter();
    v123 = v134;
    URL.appendingPathComponent(_:)();

    v124 = v135;
    URL.appendingPathExtension(_:)();
    v125 = v85;
    v126 = v129;
    v129(v123, v121);
    objc_autoreleasePoolPop(v146);
    v126(v63, v121);
    v142 = *(v142 + 20);
    v125(v63, v139, v121);
    v146 = objc_autoreleasePoolPush();
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v127 = v142;
    URL.appendingPathExtension(_:)();
    v126(v123, v121);
    objc_autoreleasePoolPop(v146);
    v126(v63, v121);
    (v140)(v122, v141);
    (*(v145 + 56))(v124 + v127, 0, 1, v121);
    v53 = v144;
    sub_100B7B890(v124, v144);
LABEL_11:
    v56 = type metadata accessor for FailableRecord();
    swift_storeEnumTagMultiPayload();
    v57 = *(*(v56 - 8) + 56);
    v58 = v53;
    return v57(v58, 0, 1, v56);
  }

  sub_10000B3A8(v33, &qword_1016980D0, &unk_10138F3B0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  sub_1000076D4(v67, qword_10177BA08);
  v68 = v61;
  (*(v145 + 16))(v25, v146, v61);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  v71 = os_log_type_enabled(v69, v70);
  v72 = v144;
  if (v71)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v148 = v74;
    *v73 = 141558275;
    *(v73 + 4) = 1752392040;
    *(v73 + 12) = 2081;
    sub_100B7B820();
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    v76 = v68;
    v78 = v77;
    v129(v25, v76);
    v79 = sub_1000136BC(v75, v78, &v148);

    *(v73 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v69, v70, "Invalid file identifier at URL: %{private,mask.hash}s", v73, 0x16u);
    sub_100007BAC(v74);
    v72 = v144;
  }

  else
  {

    v129(v25, v61);
  }

  v115 = type metadata accessor for FailableRecord();
  return (*(*(v115 - 8) + 56))(v72, 1, 1, v115);
}