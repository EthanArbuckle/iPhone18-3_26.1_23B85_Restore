uint64_t sub_1000BEC3C(uint64_t a1)
{
  v2 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BECD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BED78()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_1000BED84@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CloudOptInData() + 32);

  return sub_1000AB284(v3, a1);
}

uint64_t type metadata accessor for CloudOptInData()
{
  result = qword_100390270;
  if (!qword_100390270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BEE14()
{
  v1 = (v0 + *(type metadata accessor for CloudOptInData() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1000BEE54()
{
  v1 = (v0 + *(type metadata accessor for CloudOptInData() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1000BEE94()
{
  v1 = *v0;
  v2 = 0x444964726F636572;
  v3 = 0x6F6973726556736FLL;
  if (v1 != 5)
  {
    v3 = 0x6C6169726573;
  }

  v4 = 0x6574617473;
  if (v1 != 3)
  {
    v4 = 0x73656D6954746D73;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 6910581;
  if (v1 != 1)
  {
    v5 = 0x746163696C707061;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000BEF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000CE058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BEF9C(uint64_t a1)
{
  v2 = sub_1000BF2C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BEFD8(uint64_t a1)
{
  v2 = sub_1000BF2C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BF014(void *a1)
{
  v3 = v1;
  v5 = sub_100095820(&qword_100384688, &qword_1002D71A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  sub_1000A0E50(a1, a1[3]);
  sub_1000BF2C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v28[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v28[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    v28[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[6];
    v18 = *(v3 + 56);
    v28[12] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = type metadata accessor for CloudOptInData();
    v20 = v19[8];
    v28[11] = 4;
    type metadata accessor for Date();
    sub_1000D24F0(&qword_100384690, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = (v3 + v19[9]);
    v22 = *v21;
    v23 = v21[1];
    v28[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = (v3 + v19[10]);
    v25 = *v24;
    v26 = v24[1];
    v28[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000BF2C8()
{
  result = qword_100390160[0];
  if (!qword_100390160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100390160);
  }

  return result;
}

uint64_t sub_1000BF31C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v35 - v6;
  v8 = sub_100095820(&qword_100384698, &qword_1002D71A8);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  __chkstk_darwin(v8);
  v11 = v35 - v10;
  v12 = type metadata accessor for CloudOptInData();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v39 = a1;
  sub_1000A0E50(a1, v17);
  sub_1000BF2C8();
  v18 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10009A9E8(v39);
  }

  v19 = v7;
  v21 = v37;
  v20 = v38;
  v46 = 0;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 1) = v22;
  v35[1] = v22;
  v45 = 1;
  *(v15 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 3) = v23;
  v44 = 2;
  *(v15 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 5) = v24;
  v43 = 3;
  *(v15 + 6) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[56] = v25 & 1;
  type metadata accessor for Date();
  v42 = 4;
  sub_1000D24F0(&unk_100383FF0, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v12;
  sub_1000D1B4C(v19, &v15[*(v12 + 32)], &qword_100383FB0, &unk_1002D6690);
  v41 = 5;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = &v15[*(v12 + 36)];
  *v28 = v27;
  v28[1] = v29;
  v40 = 6;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v31;
  (*(v21 + 8))(v18, v20);
  v33 = &v15[*(v26 + 40)];
  *v33 = v30;
  v33[1] = v32;
  sub_1000BF818(v15, v36);
  sub_10009A9E8(v39);
  return sub_1000BF87C(v15);
}

uint64_t sub_1000BF818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudOptInData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BF87C(uint64_t a1)
{
  v2 = type metadata accessor for CloudOptInData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BF8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  v15 = type metadata accessor for CloudOptInData();
  result = sub_1000D1B4C(a10, a9 + v15[8], &qword_100383FB0, &unk_1002D6690);
  v17 = (a9 + v15[9]);
  *v17 = a11;
  v17[1] = a12;
  v18 = (a9 + v15[10]);
  *v18 = a13;
  v18[1] = a14;
  return result;
}

uint64_t sub_1000BF9A8()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_100390148);
  sub_10009597C(v0, qword_100390148);
  return Logger.init(transparencyCategory:)();
}

id sub_1000BFA10()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 uri];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = [v1 application];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = objc_allocWithZone(KTOptInState);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithURI:v10 application:v8];

  v12 = [v1 state];
  if (v12)
  {
    v13 = v12;
    [v11 setState:{objc_msgSend(v12, "unsignedIntegerValue")}];
  }

  v14 = [v1 smtTimestamp];
  if (v14)
  {
    v15 = v14;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16.super.isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v16.super.isa = 0;
  }

  [v11 setSmtTimestamp:v16.super.isa];

  v17 = [v1 osVersion];
  [v11 setOsVersion:v17];

  v18 = [v1 serialNumber];
  [v11 setSerialNumber:v18];

  return v11;
}

void *sub_1000BFCBC()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void sub_1000BFD00(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_1000BFD98()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_1000BFDD0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

void *sub_1000BFE68(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = 0x6E4974704FLL;
  v10[3] = 0xE500000000000000;
  v10[9] = 0;
  v10[12] = 0xE100000000000000;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a4;
  v10[8] = a5;
  v10[10] = &_swiftEmptySetSingleton;
  v10[11] = 64;
  swift_beginAccess();
  v10[9] = 0;
  v11 = objc_allocWithZone(KTNearFutureScheduler);
  swift_unknownObjectRetain();
  swift_retain_n();
  v12 = a1;
  v13 = a2;
  v14 = a3;
  swift_unknownObjectRetain();
  v15 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000C0294;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A31E0;
  aBlock[3] = &unk_1003202E8;
  v16 = _Block_copy(aBlock);
  v17 = [v11 initWithName:v15 initialDelay:2000000000 exponentialBackoff:3600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v16 block:1.4];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v16);

  v18 = v10[9];
  v10[9] = v17;

  return v10;
}

void *sub_1000C0084(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = 0x6E4974704FLL;
  v5[3] = 0xE500000000000000;
  v5[9] = 0;
  v5[12] = 0xE100000000000000;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;
  v5[8] = a5;
  v5[10] = &_swiftEmptySetSingleton;
  v5[11] = 64;
  swift_beginAccess();
  v5[9] = 0;
  v9 = objc_allocWithZone(KTNearFutureScheduler);
  swift_unknownObjectRetain();
  swift_retain_n();
  v10 = a1;
  v11 = a2;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000D2A2C;
  v19 = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A31E0;
  aBlock[3] = &unk_100320310;
  v14 = _Block_copy(aBlock);
  v15 = [v9 initWithName:v13 initialDelay:2000000000 exponentialBackoff:3600000000000 maximumDelay:0 keepProcessAlive:0 dependencyDescriptionCode:v14 block:1.4];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v14);

  v16 = v5[9];
  v5[9] = v15;

  return v5;
}

uint64_t sub_1000C0298()
{
  v1 = v0;
  if (qword_100390140 != -1)
  {
LABEL_20:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10009597C(v2, qword_100390148);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "updateMonitorWithNewAggregateState", v5, 2u);
  }

  v6 = (*(*v1 + 200))();
  v7 = v6;
  v8 = 0;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v6 + 56;
  v12 = v10 & *(v6 + 56);
  v13 = (v9 + 63) >> 6;
  while (v12)
  {
LABEL_12:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = (*(v7 + 48) + ((v8 << 10) | (16 * v15)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*v1 + 264);

    v20 = v19(v17, v18);

    if (v20)
    {
      v21 = v1[8];
      if (v21)
      {
        [v21 updateAggregateOptIOState:v20];
      }
    }
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v11 + 8 * v14);
    ++v8;
    if (v12)
    {
      v8 = v14;
      goto LABEL_12;
    }
  }

  v22 = *(*v1 + 208);

  return v22(&_swiftEmptySetSingleton);
}

uint64_t sub_1000C04E8(void *a1, char *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SHA256();
  v61 = *(v8 - 8);
  v9 = v61[8];
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256Digest();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  v14 = __chkstk_darwin(v12);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v18 = type metadata accessor for String.Encoding();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v63 = a2;

  v23._countAndFlagsBits = 47;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);

  v24._countAndFlagsBits = a3;
  v24._object = a4;
  String.append(_:)(v24);

  static String.Encoding.utf8.getter();
  v25 = String.data(using:allowLossyConversion:)();
  v27 = v26;

  (*(v19 + 8))(v22, v18);
  result = 0;
  if (v27 >> 60 != 15)
  {
    sub_1000D24F0(&unk_100384000, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_100002D78(v25, v27);
    sub_1000B4C30(v25, v27);
    v53 = v27;
    v54 = v25;
    sub_10009A9D4(v25, v27);
    dispatch thunk of HashFunction.finalize()();
    (v61[1])(v11, v8);
    v30 = v56;
    v29 = v57;
    (*(v56 + 16))(v60, v17, v57);
    sub_1000D24F0(&qword_1003846A0, &type metadata accessor for SHA256Digest);
    result = dispatch thunk of Sequence.makeIterator()();
    v31 = v63;
    v61 = v62;
    v60 = v62[2];
    v32 = v17;
    v33 = &_swiftEmptyArrayStorage;
    if (v63 == v60)
    {
LABEL_3:

      v62 = v33;
      sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
      sub_1000D29A4(&qword_1003851A0, &unk_100383FD0, &qword_1002D6BC0);
      v34 = BidirectionalCollection<>.joined(separator:)();
      v36 = v35;

      sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
      v37 = *(v55 + 40);
      v38._countAndFlagsBits = v34;
      v38._object = v36;
      isa = CKRecordID.init(recordName:zoneID:)(v38, v37).super.isa;
      sub_10009A9D4(v54, v53);
      (*(v30 + 8))(v32, v29);
      return isa;
    }

    else
    {
      v59 = (v61 + 4);
      v58 = xmmword_1002D47B0;
      v40 = v63;
      v41 = v29;
      v42 = v30;
      while ((v31 & 0x8000000000000000) == 0)
      {
        if (v40 >= v61[2])
        {
          goto LABEL_15;
        }

        v43 = v32;
        v44 = v40[v59];
        sub_100095820(&unk_100383140, &qword_1002D6BD0);
        v45 = swift_allocObject();
        *(v45 + 16) = v58;
        *(v45 + 56) = &type metadata for UInt8;
        *(v45 + 64) = &protocol witness table for UInt8;
        *(v45 + 32) = v44;
        v46 = String.init(format:_:)();
        v48 = v47;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1000B3938(0, v33[2] + 1, 1, v33);
          v33 = result;
        }

        v50 = v33[2];
        v49 = v33[3];
        if (v50 >= v49 >> 1)
        {
          result = sub_1000B3938((v49 > 1), v50 + 1, 1, v33);
          v33 = result;
        }

        ++v40;
        v33[2] = v50 + 1;
        v51 = &v33[2 * v50];
        *(v51 + 4) = v46;
        *(v51 + 5) = v48;
        v29 = v41;
        v30 = v42;
        v32 = v43;
        if (v60 == v40)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000C0AB4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10009597C(v10, qword_100390148);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000999E4(a1, a2, &v16);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000999E4(a3, a4, &v16);
    _os_log_impl(&_mh_execute_header, v11, v12, "get record %s[%s]", v13, 0x16u);
    swift_arrayDestroy();
  }

  v14 = (*(*v5 + 152))();
  __chkstk_darwin(v14);
  sub_100095820(&qword_1003846A8, &qword_1002D71B0);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v16;
}

uint64_t sub_1000C0CF4()
{

  v13 = sub_1000CD634(v1);
  sub_1000CB258(&v13);
  v2 = v13;
  v3 = v13 < 0 || (v13 & 0x4000000000000000) != 0;
  if (!v3)
  {
    v4 = *(v13 + 16);
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_13:

    return 0;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_6:
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
LABEL_15:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v3)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v0 = v2 & 0xC000000000000001;
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

  if (v6 < *(v2 + 16))
  {
    v7 = *(v2 + 8 * v6 + 32);
    if (v3)
    {
LABEL_11:
      v8 = _CocoaArrayWrapper.endIndex.getter();
LABEL_17:
      if (v8)
      {
        while (1)
        {
          v5 = __OFSUB__(v8--, 1);
          if (v5)
          {
            __break(1u);
            break;
          }

          if (v0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            if (v8 >= *(v2 + 16))
            {
              goto LABEL_33;
            }

            v10 = *(v2 + 32 + 8 * v8);
          }

          v9 = v10;
          v11 = [v10 state];
          if (v11 != [v7 state])
          {

            return v7;
          }

          v7 = v9;
          if (!v8)
          {
            goto LABEL_31;
          }
        }
      }

      v9 = v7;
LABEL_31:

      return v9;
    }

LABEL_16:
    v8 = *(v2 + 16);
    goto LABEL_17;
  }

LABEL_35:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000C0EA4(void **a1, void **a2)
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
      sub_1000057C4(v10, &qword_100383FB0, &unk_1002D6690);
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
      sub_1000057C4(v8, &qword_100383FB0, &unk_1002D6690);
    }
  }

  v36 = static Date.< infix(_:_:)();
  v37 = *(v12 + 8);
  v37(v16, v11);
  v37(v34, v11);
  return v36 & 1;
}

void *sub_1000C1278(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100390140 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    sub_10009597C(v6, qword_100390148);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000999E4(a1, a2, &v38);
      _os_log_impl(&_mh_execute_header, v7, v8, "get aggregate record [%s]", v9, 0xCu);
      sub_10009A9E8(v10);
    }

    v11 = (*(*v3 + 152))();
    __chkstk_darwin(v11);
    sub_100095820(&qword_1003846B0, &qword_1002D71B8);
    NSManagedObjectContext.performAndWait<A>(_:)();

    a1 = v38;
    if (!v38)
    {
      goto LABEL_33;
    }

    v12 = v38 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v12)
    {
      break;
    }

    a2 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v13 = *(a1 + 8 * a2 + 32);
      }

      v14 = v13;
      v15 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v38 = v13;
      sub_1000C1810(&v38);

      ++a2;
      if (v15 == v12)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_16:

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_32:

LABEL_33:
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "no opt in records to pick";
      goto LABEL_35;
    }

LABEL_36:

    return 0;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_32;
  }

LABEL_18:
  v16 = (*(*v3 + 256))(a1);

  if (!v16)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Failed to pick oldest record";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);

      goto LABEL_36;
    }

    goto LABEL_36;
  }

  [v16 setEverOptIn:1];
  v17 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v20 = 136315650;
    v21 = [v17 uri];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v25 = 0xE100000000000000;
      v23 = 45;
    }

    v30 = sub_1000999E4(v23, v25, &v38);

    *(v20 + 4) = v30;
    *(v20 + 12) = 2080;
    v31 = [v17 application];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_1000999E4(v32, v34, &v38);

    *(v20 + 14) = v35;
    *(v20 + 22) = 2048;
    v36 = [v17 state];

    *(v20 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v18, v19, "Final optin: %s[%s] - %lu", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v16;
}

void sub_1000C1810(void **a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = *a1;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10009597C(v15, qword_100390148);
  v45 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v42 = v6;
    v18 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v46 = v43;
    *v18 = 136315906;
    v19 = [v45 uri];
    v44 = v3;
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v23 = 0xE100000000000000;
      v21 = 45;
    }

    v25 = sub_1000999E4(v21, v23, &v46);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = [v45 application];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_1000999E4(v27, v29, &v46);

    *(v18 + 14) = v30;
    *(v18 + 22) = 2048;
    v31 = [v45 state];

    *(v18 + 24) = v31;
    *(v18 + 32) = 2080;
    v32 = [v45 smtTimestamp];
    if (v32)
    {
      v33 = v32;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = v44;
      (*(v44 + 56))(v11, 0, 1, v2);
    }

    else
    {
      v34 = v44;
      (*(v44 + 56))(v11, 1, 1, v2);
    }

    sub_1000D1B4C(v11, v13, &qword_100383FB0, &unk_1002D6690);
    if ((*(v34 + 48))(v13, 1, v2))
    {
      sub_1000057C4(v13, &qword_100383FB0, &unk_1002D6690);
      v35 = 0xE100000000000000;
      v36 = 45;
    }

    else
    {
      v37 = v42;
      (*(v34 + 16))(v42, v13, v2);
      sub_1000057C4(v13, &qword_100383FB0, &unk_1002D6690);
      v38 = Date.description.getter();
      v35 = v39;
      (*(v34 + 8))(v37, v2);
      v36 = v38;
    }

    v40 = sub_1000999E4(v36, v35, &v46);

    *(v18 + 34) = v40;
    _os_log_impl(&_mh_execute_header, v16, v17, "processing optin: %s[%s] - %lu %s", v18, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v24 = v45;
  }
}

void sub_1000C1CCC(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_1000C26C0(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1000C1DB8()
{
  v1 = v0;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10009597C(v2, qword_100390148);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "getAllOptInStates", v5, 2u);
  }

  v6 = (*(*v1 + 152))();
  sub_100095820(&qword_1003846B8, &unk_1002DCED0);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v8;
}

id sub_1000C1F0C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for Date();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  __chkstk_darwin(v8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  v18 = *a1;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10009597C(v19, qword_100390148);
  v20 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v62 = v22;
    v63 = a3;
    v64 = a2;
    v65 = a4;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v68 = v61;
    *v23 = 136315906;
    v25 = [v20 uri];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_1000999E4(v26, v28, &v68);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = [v20 application];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = sub_1000999E4(v31, v33, &v68);

    *(v23 + 14) = v34;
    *(v23 + 22) = 2112;
    v35 = [v20 state];
    *(v23 + 24) = v35;
    v60 = v24;
    *v24 = v35;
    *(v23 + 32) = 2080;
    v36 = [v20 smtTimestamp];
    if (v36)
    {
      v37 = v36;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v67;
      (*(v67 + 56))(v15, 0, 1, v8);
    }

    else
    {
      v38 = v67;
      (*(v67 + 56))(v15, 1, 1, v8);
    }

    sub_1000D1B4C(v15, v17, &qword_100383FB0, &unk_1002D6690);
    v39 = (*(v38 + 48))(v17, 1, v8);
    a4 = v65;
    v40 = v63;
    if (v39)
    {
      sub_1000057C4(v17, &qword_100383FB0, &unk_1002D6690);
      v41 = 0xE100000000000000;
      v42 = 45;
    }

    else
    {
      v43 = v66;
      (*(v38 + 16))(v66, v17, v8);
      sub_1000057C4(v17, &qword_100383FB0, &unk_1002D6690);
      v44 = Date.description.getter();
      v41 = v45;
      (*(v38 + 8))(v43, v8);
      v42 = v44;
    }

    v46 = sub_1000999E4(v42, v41, &v68);

    *(v23 + 34) = v46;
    _os_log_impl(&_mh_execute_header, v21, v62, v40, v23, 0x2Au);
    sub_1000057C4(v60, &unk_100383290, &unk_1002D5BA0);

    swift_arrayDestroy();

    a2 = v64;
  }

  else
  {
  }

  v47 = [v20 ckstate];
  if (!v47)
  {
    goto LABEL_16;
  }

  v48 = v47;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  if (v49 == 0x646574656C6564 && v51 == 0xE700000000000000)
  {
    goto LABEL_18;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v52 & 1) == 0)
  {
LABEL_16:
    v53 = [v20 uri];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    if (v54 == *(a2 + 88) && v56 == *(a2 + 96))
    {
LABEL_18:

      goto LABEL_19;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v58 & 1) == 0)
    {
      result = sub_1000BFA10();
      goto LABEL_20;
    }
  }

LABEL_19:
  result = 0;
LABEL_20:
  *a4 = result;
  return result;
}

unint64_t sub_1000C2E30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095820(&qword_100384A90, &unk_1002D7150);
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
        v24 = *(*(a1 + 56) + 8 * v15);

        sub_100095820(&qword_100384A98, &qword_1002D73E8);
        swift_dynamicCast();
        sub_10009C6AC(&v25, v27);
        sub_10009C6AC(v27, v28);
        sub_10009C6AC(v28, &v26);
        result = sub_10000574C(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10009A9E8(v12);
          result = sub_10009C6AC(&v26, v12);
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
          result = sub_10009C6AC(&v26, (v2[7] + 32 * result));
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

void sub_1000C3090(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10009597C(v10, qword_100390148);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v13 = 136315394;
    if (a2)
    {
      v14 = a1;
    }

    else
    {
      v14 = 45;
    }

    v15 = a4;
    v16 = a3;
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0xE100000000000000;
    }

    v18 = sub_1000999E4(v14, v17, &v20);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000999E4(v16, v15, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "deleting optin record %s[%s]", v13, 0x16u);
    swift_arrayDestroy();
  }

  v19 = (*(*v5 + 152))();
  __chkstk_darwin(v19);
  NSManagedObjectContext.performAndWait<A>(_:)();
}

uint64_t sub_1000C3318()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t sub_1000C3348()
{
  v1 = (*(*v0 + 152))();
  sub_100095820(&qword_1003846D0, &qword_1002D71C8);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v3;
}

uint64_t sub_1000C3434(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D4790;
  v8 = *(v2 + 88);
  v7 = *(v2 + 96);
  *(v6 + 56) = &type metadata for String;
  v9 = sub_10009FD4C();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v9;
  *(v6 + 64) = v9;
  *(v6 + 72) = a1;
  *(v6 + 80) = a2;

  v10 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v10];

  v23 = 0;
  v11 = [v5 execute:&v23];
  v12 = v23;
  if (!v11)
  {
    v22 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 2;
  }

  v13 = v11;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  if (v14 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_12:

    return 2;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;

  v18 = [v17 state];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 BOOLValue];

    return v20;
  }

  return 2;
}

uint64_t sub_1000C3708(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (*(*v4 + 152))();
  sub_100095820(a3, a4);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v9;
}

id sub_1000C37B8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = (*(*v4 + 296))();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 24) = v10;
    *(v11 + 32) = a4 & 1;
    *(v11 + 40) = a1;
    *(v11 + 48) = a2;
    *(v11 + 56) = a3 & 1;

    v12 = v10;

    v13 = String._bridgeToObjectiveC()();
    v24 = sub_1000CF3C0;
    v25 = v11;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000D2A70;
    v23 = &unk_100320388;
    v14 = _Block_copy(&v20);
    v15 = [objc_opt_self() named:v13 withBlockTakingSelf:v14];

    _Block_release(v14);

    return v15;
  }

  else
  {
    v17 = String._bridgeToObjectiveC()();
    v24 = sub_1000C3A20;
    v25 = 0;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000D2A70;
    v23 = &unk_100320338;
    v18 = _Block_copy(&v20);
    v19 = [objc_opt_self() named:v17 withBlockTakingSelf:v18];

    _Block_release(v18);

    return v19;
  }
}

void sub_1000C3A28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1000C3A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 320))();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 recordID];
  }

  else
  {
    v10 = (*(*v3 + 240))(v3[11], v3[12], a1, a2);
    if (!v10)
    {
      v17 = String._bridgeToObjectiveC()();
      v22 = sub_1000C3D2C;
      v23 = 0;
      v18 = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_1000D2A70;
      v21 = &unk_1003203B0;
      v14 = _Block_copy(&v18);
      v15 = [objc_opt_self() named:v17 withBlockTakingSelf:v14];

      goto LABEL_6;
    }

    v9 = v10;
  }

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v9;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v12 = v9;

  swift_unknownObjectRetain();
  v13 = String._bridgeToObjectiveC()();
  v22 = sub_1000CF724;
  v23 = v11;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1000D2A70;
  v21 = &unk_100320400;
  v14 = _Block_copy(&v18);
  v15 = [objc_opt_self() named:v13 withBlockTakingSelf:v14];

LABEL_6:
  _Block_release(v14);

  return v15;
}

void sub_1000C3D34(void *a1)
{
  type metadata accessor for KTError();
  sub_1000D24F0(&qword_100384A78, type metadata accessor for KTError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  v2 = _convertErrorToNSError(_:)();

  [a1 setError:v2];
}

void sub_1000C3E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v17 = swift_allocObject();
  *(v17 + 16) = &_swiftEmptyArrayStorage;
  v10 = (*(*v4 + 152))();
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (v5)
  {
  }

  else
  {
    v11 = a4 & 1;

    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = v11;
    v13 = v17;
    *(v12 + 32) = v4;
    *(v12 + 40) = v13;
    *(v12 + 48) = a1;
    *(v12 + 56) = a2;

    v14 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_1000CFA5C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D2A70;
    aBlock[3] = &unk_100320478;
    v15 = _Block_copy(aBlock);
    [objc_opt_self() named:v14 withBlockTakingSelf:v15];

    _Block_release(v15);
  }
}

id sub_1000C403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v178 = a6;
  v200 = a3;
  v201 = a4;
  v199 = a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v183 = &v170[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v190 = &v170[-v15];
  v16 = __chkstk_darwin(v14);
  v180 = &v170[-v17];
  v18 = __chkstk_darwin(v16);
  v176 = &v170[-v19];
  v20 = __chkstk_darwin(v18);
  v198 = &v170[-v21];
  __chkstk_darwin(v20);
  v181 = &v170[-v22];
  v23 = sub_100095820(&qword_100384A68, &qword_1002D73D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v191 = &v170[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v189 = &v170[-v27];
  v28 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(a1 + 64);
  v173 = (v29 + 63) >> 6;
  v194 = (v10 + 16);
  v195 = (v10 + 32);
  v188 = "CloudOpInStateMonitor";
  v182 = v10;
  v192 = (v10 + 8);
  v185 = a5;
  v171 = a5 & 1;
  v184 = a1;

  v32 = 0;
  v33 = &qword_100384A70;
  *(&v34 + 1) = 4;
  v187 = xmmword_1002D4790;
  *&v34 = 136315138;
  v172 = v34;
  *&v34 = 136315906;
  v174 = v34;
  v202 = v9;
  v186 = a1 + 64;
  if (!v31)
  {
LABEL_5:
    if (v173 <= v32 + 1)
    {
      v36 = v32 + 1;
    }

    else
    {
      v36 = v173;
    }

    v37 = v36 - 1;
    v38 = v191;
    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v35 >= v173)
      {
        v81 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
        (*(*(v81 - 8) + 56))(v38, 1, 1, v81);
        v31 = 0;
        v32 = v37;
        goto LABEL_14;
      }

      v31 = *(v28 + 8 * v35);
      ++v32;
      if (v31)
      {
        v32 = v35;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
    goto LABEL_62;
  }

  while (1)
  {
    v35 = v32;
LABEL_13:
    v39 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v40 = v39 | (v35 << 6);
    v41 = (*(v184 + 48) + 16 * v40);
    v43 = *v41;
    v42 = v41[1];
    v44 = v182;
    v45 = v181;
    (*(v182 + 16))(v181, *(v184 + 56) + *(v182 + 72) * v40, v9);
    v46 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
    v47 = *(v46 + 48);
    v48 = v191;
    *v191 = v43;
    *(v48 + 1) = v42;
    v38 = v48;
    (*(v44 + 32))(&v48[v47], v45);
    (*(*(v46 - 8) + 56))(v38, 0, 1, v46);

LABEL_14:
    v49 = v189;
    sub_1000D1B4C(v38, v189, &qword_100384A68, &qword_1002D73D0);
    v50 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {

      v160 = (*(*v201 + 152))(v159);
      v204 = 0;
      v161 = [v160 save:&v204];

      if (v161)
      {
        return v204;
      }

      v169 = v204;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }

    v51 = *v49;
    v6 = *(v49 + 1);
    v52 = *(v50 + 48);
    v53 = v198;
    (*v195)();
    v204 = 0;
    v54 = [objc_opt_self() fetchRequest];
    sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
    sub_100095820(&unk_100383140, &qword_1002D6BD0);
    v55 = swift_allocObject();
    *(v55 + 16) = v187;
    *(v55 + 56) = &type metadata for String;
    v56 = sub_10009FD4C();
    v197 = v51;
    *(v55 + 32) = v51;
    *(v55 + 40) = v6;
    *(v55 + 96) = &type metadata for String;
    *(v55 + 104) = v56;
    v57 = v199;
    v58 = v200;
    *(v55 + 64) = v56;
    *(v55 + 72) = v57;
    *(v55 + 80) = v58;

    v59 = NSPredicate.init(format:_:)();
    [v54 setPredicate:v59];

    v203 = 0;
    v196 = v54;
    v60 = [v54 execute:&v203];
    v61 = v203;
    if (v60)
    {
      v62 = v60;
      sub_10009FDA0(0, &qword_1003846E0, off_100315888);
      v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v61;

      v65 = v63 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v53;
      v66 = v180;
      if (v65)
      {
        if ((v63 & 0xC000000000000001) != 0)
        {
          v68 = v6;
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v67 = v202;
        }

        else
        {
          v67 = v202;
          if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_69;
          }

          v68 = v6;
          v6 = *(v63 + 32);
        }

        swift_beginAccess();
        v204 = v6;
        if (v6)
        {

          if (qword_100390140 != -1)
          {
            swift_once();
          }

          v69 = type metadata accessor for Logger();
          sub_10009597C(v69, qword_100390148);
          v70 = *v194;
          v71 = v198;
          (*v194)(v176, v198, v67);
          v70(v66, v71, v67);
          v72 = Logger.logObject.getter();
          v9 = v67;
          v73 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v72, v73))
          {
            LODWORD(v193) = v73;
            v197 = v72;
            v74 = swift_slowAlloc();
            v179 = swift_slowAlloc();
            v203 = v179;
            *v74 = v174;
            v75 = [v6 recordID];
            if (v75)
            {
              v76 = v75;
              v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v79 = v78;
            }

            else
            {
              v79 = 0xE300000000000000;
              v77 = 7104878;
            }

            v107 = v176;
            v108 = sub_1000999E4(v77, v79, &v203);

            *(v74 + 4) = v108;
            *(v74 + 12) = 2080;
            v109 = [v6 uri];
            v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v112 = v111;

            v113 = sub_1000999E4(v110, v112, &v203);

            v177 = v74;
            *(v74 + 14) = v113;
            *(v74 + 22) = 2080;
            sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date);
            v9 = v202;
            v114 = dispatch thunk of CustomStringConvertible.description.getter();
            v116 = v115;
            v117 = *v192;
            (*v192)(v107, v9);
            v118 = sub_1000999E4(v114, v116, &v203);

            v119 = v177;
            v177[3] = v118;
            *(v119 + 16) = 2048;
            v120 = v180;
            Date.timeIntervalSince1970.getter();
            v122 = v121;
            v117(v120, v9);
            *(v119 + 34) = v122;
            v123 = v197;
            _os_log_impl(&_mh_execute_header, v197, v193, "optInStore: updating existing record %s %s %s[%f", v119, 0x2Au);
            swift_arrayDestroy();
          }

          else
          {

            v106 = *v192;
            (*v192)(v66, v9);
            v106(v176, v9);
          }

          v33 = v198;
          goto LABEL_45;
        }

        v6 = v68;
      }

      else
      {

        swift_beginAccess();
        v204 = 0;
      }
    }

    else
    {
      v80 = v203;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v175 = 0;
      v33 = v53;
    }

    v82 = (*(*v201 + 240))(v197, v6, v199, v200);
    if (!v82)
    {
      break;
    }

    v83 = v82;
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_10009597C(v84, qword_100390148);
    v85 = v83;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    v88 = os_log_type_enabled(v86, v87);
    v9 = v202;
    v193 = v85;
    if (v88)
    {
      v89 = swift_slowAlloc();
      v179 = v6;
      v90 = v89;
      v91 = swift_slowAlloc();
      v203 = v91;
      *v90 = v172;
      v92 = [v85 recordName];
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v94;

      v96 = v93;
      v33 = v198;
      v97 = sub_1000999E4(v96, v95, &v203);
      v9 = v202;

      *(v90 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v86, v87, "creating new record %s", v90, 0xCu);
      sub_10009A9E8(v91);
    }

    v98 = (*(*v201 + 152))();
    v99 = [objc_allocWithZone(CloudOptIn) initWithContext:v98];

    if (!v99)
    {

      (*v192)(v33, v9);
    }

    v100 = v99;
    v101 = v193;
    v102 = [v193 recordName];
    if (!v102)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = String._bridgeToObjectiveC()();
    }

    [v100 setRecordID:v102];

    v103 = v100;
    v104 = String._bridgeToObjectiveC()();

    [v103 setUri:v104];

    v6 = v103;
    v105 = String._bridgeToObjectiveC()();
    [v6 setApplication:v105];

LABEL_45:
    v124 = v6;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v124 setSmtTimestamp:isa];

    v126 = String._bridgeToObjectiveC()();
    [v124 setCkstate:v126];

    sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
    v127 = NSNumber.init(integerLiteral:)(v185 & 1).super.super.isa;
    [v124 setState:v127];

    [v124 setCkrecord:0];
    v128 = (*(*v201 + 440))(v124);
    if (!v128)
    {
      (*v192)(v33, v9);

      v156 = v196;
LABEL_54:
      v33 = &qword_100384A70;

      v28 = v186;
      goto LABEL_55;
    }

    v129 = v128;
    v130 = v178;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v131 = v183;
    if (*((*v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v130 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v158 = *((*v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v197 = v124;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v132 = type metadata accessor for Logger();
    sub_10009597C(v132, qword_100390148);
    v133 = *v194;
    v134 = v202;
    (*v194)(v190, v33, v202);
    v9 = v134;
    v133(v131, v33, v134);
    v135 = v131;
    v6 = v129;
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v136, v137))
    {

      v156 = v197;
      v157 = *v192;
      (*v192)(v135, v9);
      v157(v190, v9);
      v157(v198, v9);
      goto LABEL_54;
    }

    v138 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    v203 = v193;
    *v138 = v174;
    v139 = [v6 recordID];
    LODWORD(v179) = v137;
    v140 = v139;
    v141 = [v139 recordName];

    v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v144 = v143;

    v145 = sub_1000999E4(v142, v144, &v203);

    *(v138 + 4) = v145;
    *(v138 + 12) = 1024;
    *(v138 + 14) = v171;
    *(v138 + 18) = 2080;
    sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date);
    v146 = v190;
    v147 = dispatch thunk of CustomStringConvertible.description.getter();
    v177 = v6;
    v6 = v147;
    v149 = v148;
    v150 = *v192;
    (*v192)(v146, v202);
    v151 = sub_1000999E4(v6, v149, &v203);

    *(v138 + 20) = v151;
    *(v138 + 28) = 2048;
    v152 = v183;
    Date.timeIntervalSince1970.getter();
    v154 = v153;
    v150(v152, v202);
    *(v138 + 30) = v154;
    _os_log_impl(&_mh_execute_header, v136, v179, "trying to update record %s %{BOOL}d smtTimeStamp: %s:[%f]", v138, 0x26u);
    swift_arrayDestroy();

    v9 = v202;

    v155 = v197;
    v150(v198, v9);

    v28 = v186;
    v33 = &qword_100384A70;
LABEL_55:
    if (!v31)
    {
      goto LABEL_5;
    }
  }

  v32 = v202;
  if (qword_100390140 != -1)
  {
    goto LABEL_70;
  }

LABEL_62:
  v163 = type metadata accessor for Logger();
  sub_10009597C(v163, qword_100390148);
  v164 = static os_log_type_t.error.getter();

  v165 = Logger.logObject.getter();

  if (os_log_type_enabled(v165, v164))
  {
    v166 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v203 = v167;
    *v166 = v172;
    v168 = sub_1000999E4(v197, v6, &v203);

    *(v166 + 4) = v168;
    _os_log_impl(&_mh_execute_header, v165, v164, "failed to create recordID %s", v166, 0xCu);
    sub_10009A9E8(v167);
  }

  else
  {
  }

  return (*v192)(v33, v32);
}

void sub_1000C54FC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10009597C(v9, qword_100390148);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136315650;
    type metadata accessor for Date();
    v13 = Dictionary.Keys.description.getter();
    v15 = a3;
    v16 = a2;
    v17 = sub_1000999E4(v13, v14, &v19);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1000999E4(v16, v15, &v19);
    *(v12 + 22) = 1024;
    *(v12 + 24) = a4 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "updating record %s[%s] to %{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();
  }

  v18 = (*(*v5 + 152))();
  __chkstk_darwin(v18);
  NSManagedObjectContext.performAndWait<A>(_:)();
}

void sub_1000C579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v148 = a5;
  v142 = a4;
  v160 = a2;
  v161 = a3;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v155 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v146 = &v138 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v138 - v14);
  __chkstk_darwin(v13);
  v143 = &v138 - v16;
  v17 = sub_100095820(&qword_100384A68, &qword_1002D73D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v154 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v152 = (&v138 - v21);
  v167 = 0;
  v22 = *(a1 + 64);
  v153 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v145 = a1;

  swift_beginAccess();
  v26 = 0;
  v165 = 0;
  v27 = (v23 + 63) >> 6;
  v156 = (v7 + 16);
  v162 = (v7 + 32);
  v151 = "CloudOpInStateMonitor";
  v144 = v7;
  v149 = (v7 + 8);
  v28 = &qword_1002D73D8;
  *(&v29 + 1) = 4;
  v150 = xmmword_1002D4790;
  *&v29 = 136315138;
  v138 = v29;
  *&v29 = 136315906;
  v139 = v29;
  v159 = v6;
  v157 = v15;
  v147 = v27;
  while (1)
  {
    if (!v25)
    {
      if (v27 <= v26 + 1)
      {
        v38 = v26 + 1;
      }

      else
      {
        v38 = v27;
      }

      v39 = v38 - 1;
      v40 = v154;
      while (1)
      {
        v37 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v37 >= v27)
        {
          v93 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
          (*(*(v93 - 8) + 56))(v40, 1, 1, v93);
          v25 = 0;
          v26 = v39;
          goto LABEL_17;
        }

        v25 = *(v153 + 8 * v37);
        ++v26;
        if (v25)
        {
          v26 = v37;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      swift_once();
LABEL_51:
      v129 = type metadata accessor for Logger();
      sub_10009597C(v129, qword_100390148);
      v130 = static os_log_type_t.error.getter();
      v131 = v164;

      v132 = Logger.logObject.getter();

      if (os_log_type_enabled(v132, v130))
      {
        v133 = v28;
        v134 = swift_slowAlloc();
        v135 = v6;
        v136 = swift_slowAlloc();
        v166 = v136;
        *v134 = v138;
        v137 = sub_1000999E4(v158, v131, &v166);

        *(v134 + 4) = v137;
        _os_log_impl(&_mh_execute_header, v132, v130, "failed to create recordID %s", v134, 0xCu);
        sub_10009A9E8(v136);

        (*v149)(v133, v135);
      }

      else
      {

        (*v149)(v28, v6);
      }

      return;
    }

    v37 = v26;
LABEL_16:
    v41 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v42 = v41 | (v37 << 6);
    v43 = (*(v145 + 48) + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    v46 = v144;
    v47 = v143;
    (*(v144 + 16))(v143, *(v145 + 56) + *(v144 + 72) * v42, v6);
    v48 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
    v49 = *(v48 + 48);
    v50 = v154;
    *v154 = v45;
    *(v50 + 1) = v44;
    v40 = v50;
    (*(v46 + 32))(&v50[v49], v47, v6);
    (*(*(v48 - 8) + 56))(v40, 0, 1, v48);

LABEL_17:
    v51 = v152;
    sub_1000D1B4C(v40, v152, &qword_100384A68, &qword_1002D73D0);
    v52 = sub_100095820(&qword_100384A70, &qword_1002D73D8);
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {
      break;
    }

    v54 = *v51;
    v53 = v51[1];
    v28 = v157;
    (*v162)(v157, v51 + *(v52 + 48), v6);
    v55 = [objc_opt_self() fetchRequest];
    sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
    sub_100095820(&unk_100383140, &qword_1002D6BD0);
    v56 = swift_allocObject();
    *(v56 + 16) = v150;
    *(v56 + 56) = &type metadata for String;
    v57 = sub_10009FD4C();
    v158 = v54;
    *(v56 + 32) = v54;
    *(v56 + 40) = v53;
    *(v56 + 96) = &type metadata for String;
    *(v56 + 104) = v57;
    v58 = v160;
    v59 = v161;
    *(v56 + 64) = v57;
    *(v56 + 72) = v58;
    *(v56 + 80) = v59;
    v164 = v53;

    v60 = NSPredicate.init(format:_:)();
    [v55 setPredicate:v60];

    v166 = 0;
    v163 = v55;
    v61 = [v55 execute:&v166];
    v6 = v166;
    if (!v61)
    {
      v69 = v166;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v140 = 0;
      v66 = v155;
      v70 = v165;
      v6 = v159;
      if (v165)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    v62 = v61;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v6;

    v65 = v165;
    if (v63 >> 62)
    {
      v94 = _CocoaArrayWrapper.endIndex.getter();
      v66 = v155;
      if (!v94)
      {
LABEL_37:

        v68 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      v66 = v155;
      if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }
    }

    if ((v63 & 0xC000000000000001) != 0)
    {
      v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v67 = *(v63 + 32);
    }

    v68 = v67;

LABEL_38:
    v167 = v68;

    v70 = v68;
    v6 = v159;
    if (v70)
    {
LABEL_39:
      v165 = v70;

      if (qword_100390140 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_10009597C(v95, qword_100390148);
      v96 = *v156;
      v97 = v146;
      (*v156)(v146, v28, v6);
      v96(v66, v28, v6);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v98, v99))
      {
        LODWORD(v158) = v99;
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v166 = v101;
        *v100 = v139;
        v102 = [v165 recordID];
        v164 = v98;
        v141 = v101;
        if (v102)
        {
          v103 = v102;
          v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v106 = v105;
        }

        else
        {
          v106 = 0xE300000000000000;
          v104 = 7104878;
        }

        v107 = v146;
        v108 = sub_1000999E4(v104, v106, &v166);

        *(v100 + 4) = v108;
        *(v100 + 12) = 2080;
        v109 = [v165 uri];
        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        v113 = sub_1000999E4(v110, v112, &v166);

        *(v100 + 14) = v113;
        *(v100 + 22) = 2080;
        sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date);
        v114 = v107;
        v6 = v159;
        v115 = dispatch thunk of CustomStringConvertible.description.getter();
        v117 = v116;
        v30 = v149;
        v118 = *v149;
        (*v149)(v114, v6);
        v119 = sub_1000999E4(v115, v117, &v166);

        *(v100 + 24) = v119;
        *(v100 + 32) = 2048;
        v120 = v155;
        Date.timeIntervalSince1970.getter();
        v122 = v121;
        v118(v120, v6);
        *(v100 + 34) = v122;
        v123 = v164;
        _os_log_impl(&_mh_execute_header, v164, v158, "setOptIn: updating existing record %s %s %s[%f", v100, 0x2Au);
        swift_arrayDestroy();

        v32 = v165;
        v28 = v157;
      }

      else
      {

        v30 = v149;
        v31 = *v149;
        (*v149)(v66, v6);
        v31(v97, v6);
        v32 = v165;
      }

      goto LABEL_5;
    }

LABEL_26:
    v71 = (*(*v142 + 240))(v158, v164, v160, v161);
    if (!v71)
    {
      if (qword_100390140 == -1)
      {
        goto LABEL_51;
      }

      goto LABEL_57;
    }

    v72 = v71;
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_10009597C(v73, qword_100390148);
    v74 = static os_log_type_t.info.getter();
    v75 = v72;
    v76 = Logger.logObject.getter();

    v77 = os_log_type_enabled(v76, v74);
    v141 = v75;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v166 = v79;
      *v78 = v138;
      v80 = [v75 recordName];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v84 = sub_1000999E4(v81, v83, &v166);
      v28 = v157;

      *(v78 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v76, v74, "creating new record %s", v78, 0xCu);
      sub_10009A9E8(v79);
    }

    v85 = (*(*v142 + 152))();
    v86 = [objc_allocWithZone(CloudOptIn) initWithContext:v85];

    v167 = v86;
    if (!v86)
    {

      (*v149)(v28, v159);

      return;
    }

    v87 = v86;
    v88 = v141;
    v89 = [v141 recordName];
    v6 = v159;
    if (!v89)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = String._bridgeToObjectiveC()();
    }

    v165 = v86;
    [v87 setRecordID:{v89, v138}];

    v90 = v87;
    v91 = String._bridgeToObjectiveC()();
    [v90 setApplication:v91];

    v32 = v90;
    v92 = String._bridgeToObjectiveC()();

    [v32 setUri:v92];

    v30 = v149;
LABEL_5:
    v33 = v32;
    v34 = String._bridgeToObjectiveC()();
    [v33 setCkstate:v34];

    sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
    isa = NSNumber.init(integerLiteral:)(v148 & 1).super.super.isa;
    [v33 setState:isa];

    v36 = Date._bridgeToObjectiveC()().super.isa;
    [v33 setSmtTimestamp:v36];

    (*v30)(v28, v6);
    v27 = v147;
    v28 = &qword_1002D73D8;
  }

  v125 = (*(*v142 + 152))(v124);
  v166 = 0;
  v126 = [v125 save:&v166];

  v127 = v166;
  if ((v126 & 1) == 0)
  {
    v128 = v127;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000C6828(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v8 = v6;
  v41 = a6;
  v42 = a5;
  v38 = a1;
  v39 = a4;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10009597C(v16, qword_100390148);
  v17 = *(v12 + 16);
  v40 = a3;
  v17(v15, a3, v11);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v37 = v7;
    v21 = v20;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v21 = 136315906;
    v35 = v19;
    v22 = v38;
    *(v21 + 4) = sub_1000999E4(v38, a2, &v43);
    *(v21 + 12) = 2080;
    sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date);
    v34 = v18;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = a2;
    v26 = v25;
    (*(v12 + 8))(v15, v11);
    v27 = sub_1000999E4(v23, v26, &v43);
    a2 = v24;
    LOBYTE(v23) = v41;
    v28 = v42;

    *(v21 + 14) = v27;
    *(v21 + 22) = 2080;
    v29 = v39;
    *(v21 + 24) = sub_1000999E4(v39, v28, &v43);
    *(v21 + 32) = 1024;
    *(v21 + 34) = v23 & 1;
    v30 = v34;
    _os_log_impl(&_mh_execute_header, v34, v35, "adding optin record %s:%s[%s] to %{BOOL}d", v21, 0x26u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v15, v11);
    v22 = v38;
    v29 = v39;
  }

  v31 = (*(*v8 + 152))();
  __chkstk_darwin(v31);
  *(&v33 - 8) = v22;
  *(&v33 - 7) = a2;
  v32 = v42;
  *(&v33 - 6) = v29;
  *(&v33 - 5) = v32;
  *(&v33 - 4) = v40;
  *(&v33 - 3) = v8;
  *(&v33 - 16) = v41 & 1;
  NSManagedObjectContext.performAndWait<A>(_:)();
}

void sub_1000C6C0C(void *a1, char *a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v208 = a6;
  v204 = a7;
  v210 = a5;
  v214 = a3;
  v213 = type metadata accessor for Date();
  v215 = *(v213 - 8);
  v10 = *(v215 + 64);
  v11 = __chkstk_darwin(v213);
  v191 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v194 = &v190 - v14;
  v15 = __chkstk_darwin(v13);
  v203 = &v190 - v16;
  v17 = __chkstk_darwin(v15);
  v190 = &v190 - v18;
  v19 = __chkstk_darwin(v17);
  v202 = &v190 - v20;
  __chkstk_darwin(v19);
  v201 = &v190 - v21;
  v22 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v195 = &v190 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v197 = &v190 - v27;
  v28 = __chkstk_darwin(v26);
  v196 = &v190 - v29;
  v30 = __chkstk_darwin(v28);
  v192 = &v190 - v31;
  v32 = __chkstk_darwin(v30);
  v193 = &v190 - v33;
  __chkstk_darwin(v32);
  v212 = (&v190 - v34);
  v200 = objc_opt_self();
  v35 = [v200 fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  v199 = sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v36 = swift_allocObject();
  v198 = xmmword_1002D4790;
  *(v36 + 16) = xmmword_1002D4790;
  *(v36 + 56) = &type metadata for String;
  v37 = sub_10009FD4C();
  v207 = a1;
  *(v36 + 32) = a1;
  *(v36 + 40) = a2;
  *(v36 + 96) = &type metadata for String;
  *(v36 + 104) = v37;
  v38 = v214;
  *(v36 + 64) = v37;
  *(v36 + 72) = v38;
  *(v36 + 80) = a4;
  v205 = a2;

  v211 = a4;

  v39 = NSPredicate.init(format:_:)();
  v40 = &selRef_setInitializedComplete_;
  [v35 setPredicate:v39];

  v217 = 0;
  v206 = v35;
  v41 = [v35 execute:&v217];
  v42 = v217;
  if (!v41)
  {
    v65 = v217;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v209 = 0;
    goto LABEL_15;
  }

  v43 = v41;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v42;

  if (v44 >> 62)
  {
    v46 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = v202;
  v48 = v201;
  if (!v46)
  {

LABEL_15:
    v201 = *(v215 + 56);
    v196 = (v215 + 56);
    (v201)(v212, 1, 1, v213);
    v66 = [v200 fetchRequest];
    v67 = swift_allocObject();
    *(v67 + 16) = v198;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = v37;
    *(v67 + 32) = v214;
    *(v67 + 40) = v211;
    *(v67 + 96) = &type metadata for Bool;
    *(v67 + 104) = &protocol witness table for Bool;
    *(v67 + 72) = v204 & 1;

    v68 = NSPredicate.init(format:_:)();
    [v66 setPredicate:v68];

    sub_100095820(&qword_100384A50, &qword_1002D7650);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1002D6360;
    v70 = objc_allocWithZone(NSSortDescriptor);
    v71 = String._bridgeToObjectiveC()();
    v72 = [v70 initWithKey:v71 ascending:0];

    *(v69 + 32) = v72;
    sub_10009FDA0(0, &unk_100384A58, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v66 setSortDescriptors:isa];

    sub_100095820(&qword_100383F98, &qword_1002D6B40);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1002D47B0;
    *(v74 + 56) = &type metadata for String;
    strcpy((v74 + 32), "smtTimestamp");
    *(v74 + 45) = 0;
    *(v74 + 46) = -5120;
    v75 = Array._bridgeToObjectiveC()().super.isa;

    [v66 setPropertiesToFetch:v75];

    [v66 setFetchLimit:1];
    v217 = 0;
    v202 = v66;
    v76 = [v66 execute:&v217];
    v77 = v217;
    if (!v76)
    {
      v89 = v217;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v209 = 0;
      v81 = v213;
      v82 = v215;
      v49 = v205;
      a2 = v203;
      goto LABEL_29;
    }

    v78 = v76;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v77;

    v49 = v205;
    a2 = v203;
    if (!(v40 >> 62))
    {
      v80 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }

LABEL_72:
    v80 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:
    v81 = v213;
    v82 = v215;
    v83 = v197;
    if (v80)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_75;
        }

        v84 = *(v40 + 32);
      }

      v85 = v84;

      v86 = [v85 smtTimestamp];
      if (v86)
      {
        v87 = v86;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v88 = 0;
        v85 = v87;
        v83 = v197;
      }

      else
      {
        v88 = 1;
      }

      (v201)(v83, v88, 1, v81);
      sub_1000BECD4(v83, v212);
    }

    else
    {
    }

LABEL_29:
    v93 = v208;
    v94 = (*(*v208 + 240))(v207, v49, v214, v211);
    if (v94)
    {
      v95 = v94;
      if (qword_100390140 != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for Logger();
      sub_10009597C(v96, qword_100390148);
      v97 = static os_log_type_t.info.getter();
      v98 = *(v82 + 16);
      v99 = v210;
      v98(a2, v210, v81);
      v100 = v194;
      v199 = v98;
      v98(v194, v99, v81);
      v101 = v95;
      v102 = Logger.logObject.getter();

      LODWORD(v200) = v97;
      v103 = os_log_type_enabled(v102, v97);
      v104 = v81;
      v201 = v101;
      if (v103)
      {
        *&v198 = v102;
        v105 = swift_slowAlloc();
        v197 = swift_slowAlloc();
        v217 = v197;
        *v105 = 136315906;
        v106 = [v101 recordName];
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;

        v110 = sub_1000999E4(v107, v109, &v217);

        *(v105 + 4) = v110;
        *(v105 + 12) = 2080;
        sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date);
        v111 = v203;
        v112 = dispatch thunk of CustomStringConvertible.description.getter();
        v114 = v113;
        v115 = *(v215 + 8);
        v115(v111, v104);
        v116 = sub_1000999E4(v112, v114, &v217);

        *(v105 + 14) = v116;
        *(v105 + 22) = 2048;
        Date.timeIntervalSince1970.getter();
        v118 = v117;
        v115(v100, v104);
        *(v105 + 24) = v118;
        *(v105 + 32) = 2080;
        v119 = v212;
        swift_beginAccess();
        if ((*(v215 + 48))(v119, 1, v104))
        {
          v120 = 0xE100000000000000;
          v121 = 45;
        }

        else
        {
          v166 = v190;
          v199(v190, v119, v104);
          v167 = Date.description.getter();
          v120 = v168;
          v115(v166, v104);
          v121 = v167;
        }

        v93 = v208;
        v169 = sub_1000999E4(v121, v120, &v217);

        *(v105 + 34) = v169;
        v170 = v198;
        _os_log_impl(&_mh_execute_header, v198, v200, "creating new record %s %s[%f] newest %s", v105, 0x2Au);
        swift_arrayDestroy();

        v128 = v215;
      }

      else
      {

        v128 = v215;
        v115 = *(v215 + 8);
        v115(v100, v104);
        v129 = (v115)(v203, v104);
      }

      v171 = *(*v93 + 152);
      v172 = (v171)(v129);
      v173 = [objc_allocWithZone(CloudOptIn) initWithContext:v172];

      v174 = [v201 recordName];
      if (!v174)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v174 = String._bridgeToObjectiveC()();
      }

      [v173 setRecordID:v174];

      v175 = String._bridgeToObjectiveC()();
      [v173 setUri:v175];

      v176 = String._bridgeToObjectiveC()();
      [v173 setApplication:v176];

      sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
      v177 = NSNumber.init(integerLiteral:)(v204 & 1).super.super.isa;
      [v173 setState:v177];

      v178 = v212;
      swift_beginAccess();
      v179 = v195;
      sub_1000AB284(v178, v195);
      v180 = v213;
      if ((*(v128 + 48))(v179, 1, v213) == 1)
      {
        sub_1000057C4(v179, &qword_100383FB0, &unk_1002D6690);
      }

      else
      {
        v181 = v191;
        (*(v128 + 32))(v191, v179, v180);
        if (static Date.> infix(_:_:)())
        {
          v182 = v181;
          v183 = Date._bridgeToObjectiveC()().super.isa;
          [v173 setSmtTimestamp:v183];

          v115(v182, v180);
LABEL_64:
          v185 = String._bridgeToObjectiveC()();
          [v173 setCkstate:v185];

          v186 = v171();
          v216 = 0;
          v187 = [v186 save:&v216];

          if (!v187)
          {
            v189 = v216;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            sub_1000057C4(v212, &qword_100383FB0, &unk_1002D6690);
            return;
          }

          v188 = v216;

          v127 = &v218;
LABEL_66:

          v159 = v212;
          goto LABEL_67;
        }

        v115(v181, v180);
      }

      v184 = Date._bridgeToObjectiveC()().super.isa;
      [v173 setSmtTimestamp:v184];

      goto LABEL_64;
    }

    if (qword_100390140 == -1)
    {
LABEL_36:
      v122 = type metadata accessor for Logger();
      sub_10009597C(v122, qword_100390148);
      v123 = static os_log_type_t.error.getter();

      v124 = Logger.logObject.getter();

      if (os_log_type_enabled(v124, v123))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v217 = v126;
        *v125 = 136315138;
        *(v125 + 4) = sub_1000999E4(v207, v49, &v217);
        _os_log_impl(&_mh_execute_header, v124, v123, "failed to create recordID %s", v125, 0xCu);
        sub_10009A9E8(v126);
      }

      v127 = &v219;
      goto LABEL_66;
    }

LABEL_75:
    swift_once();
    goto LABEL_36;
  }

  if ((v44 & 0xC000000000000001) != 0)
  {
    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v49 = v215;
    goto LABEL_8;
  }

  v49 = v215;
  if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_72;
  }

  v50 = *(v44 + 32);
LABEL_8:

  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_10009597C(v51, qword_100390148);
  v52 = *(v49 + 16);
  v53 = v210;
  v54 = v213;
  v52(v48, v210, v213);
  v214 = v52;
  v52(v47, v53, v54);
  v55 = v50;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  v58 = &stru_10036E000;
  if (os_log_type_enabled(v56, v57))
  {
    v212 = v56;
    v59 = swift_slowAlloc();
    v207 = swift_slowAlloc();
    v217 = v207;
    *v59 = 136316162;
    v60 = [v55 recordID];
    LODWORD(v211) = v57;
    if (v60)
    {
      v61 = v60;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;
    }

    else
    {
      v64 = 0xE300000000000000;
      v62 = 7104878;
    }

    v130 = sub_1000999E4(v62, v64, &v217);

    *(v59 + 4) = v130;
    *(v59 + 12) = 2080;
    v131 = [v55 uri];
    v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v133;

    v135 = sub_1000999E4(v132, v134, &v217);

    *(v59 + 14) = v135;
    *(v59 + 22) = 2080;
    sub_1000D24F0(&qword_1003846E8, &type metadata accessor for Date);
    v54 = v213;
    v136 = dispatch thunk of CustomStringConvertible.description.getter();
    v137 = v48;
    v139 = v138;
    v140 = *(v215 + 8);
    v140(v137, v54);
    v141 = sub_1000999E4(v136, v139, &v217);

    *(v59 + 24) = v141;
    *(v59 + 32) = 2048;
    Date.timeIntervalSince1970.getter();
    v143 = v142;
    v140(v47, v54);
    *(v59 + 34) = v143;
    *(v59 + 42) = 2080;
    v144 = [v55 smtTimestamp];
    if (v144)
    {
      v145 = v192;
      v146 = v144;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v147 = 0;
      v148 = v193;
    }

    else
    {
      v147 = 1;
      v148 = v193;
      v145 = v192;
    }

    v149 = v215;
    (*(v215 + 56))(v145, v147, 1, v54);
    sub_1000D1B4C(v145, v148, &qword_100383FB0, &unk_1002D6690);
    if ((*(v149 + 48))(v148, 1, v54))
    {
      sub_1000057C4(v148, &qword_100383FB0, &unk_1002D6690);
      v150 = 0xE100000000000000;
      v151 = 45;
    }

    else
    {
      v152 = v190;
      v214(v190, v148, v54);
      sub_1000057C4(v148, &qword_100383FB0, &unk_1002D6690);
      v153 = Date.description.getter();
      v150 = v154;
      v140(v152, v54);
      v151 = v153;
    }

    v91 = v208;
    v92 = v196;
    v155 = sub_1000999E4(v151, v150, &v217);

    *(v59 + 44) = v155;
    v156 = v212;
    _os_log_impl(&_mh_execute_header, v212, v211, "addOptIn: have existing record %s %s %s[%f] %s", v59, 0x34u);
    swift_arrayDestroy();

    v49 = v215;
    v58 = &stru_10036E000;
  }

  else
  {

    v90 = *(v49 + 8);
    v90(v47, v54);
    v90(v48, v54);
    v91 = v208;
    v92 = v196;
  }

  v157 = [v55 v58[201].attr];
  if (v157)
  {
    v158 = v157;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v49 + 56))(v92, 0, 1, v54);
    v159 = v92;
LABEL_67:
    sub_1000057C4(v159, &qword_100383FB0, &unk_1002D6690);
    return;
  }

  (*(v49 + 56))(v92, 1, 1, v54);
  sub_1000057C4(v92, &qword_100383FB0, &unk_1002D6690);
  v160 = Date._bridgeToObjectiveC()().super.isa;
  [v55 setSmtTimestamp:v160];

  v161 = String._bridgeToObjectiveC()();
  [v55 setCkstate:v161];

  v162 = (*(*v91 + 152))();
  v217 = 0;
  v163 = [v162 save:&v217];

  if (v163)
  {
    v164 = v217;
  }

  else
  {
    v165 = v217;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000C83B8(void *a1)
{
  v2 = v1;
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10009597C(v4, qword_100390148);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = [v5 recordID];
    v11 = [v10 recordName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1000999E4(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "merging cloud optin: %s", v8, 0xCu);
    sub_10009A9E8(v9);
  }

  v16 = (*(*v2 + 152))();
  __chkstk_darwin(v16);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v18;
}

void sub_1000C85F0(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v163 = a3;
  v6 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v156 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v157 = &v147 - v11;
  __chkstk_darwin(v10);
  v151 = (&v147 - v12);
  v13 = type metadata accessor for Date();
  v159 = *(v13 - 8);
  v160 = v13;
  v14 = *(v159 + 64);
  v15 = __chkstk_darwin(v13);
  v152 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v150 = (&v147 - v17);
  v18 = sub_100095820(&unk_100384A30, &qword_1002D73C8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v161 = &v147 - v20;
  v158 = type metadata accessor for CloudOptInData();
  v154 = *(v158 - 8);
  v21 = *(v154 + 64);
  __chkstk_darwin(v158);
  v153 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002D47B0;
  v164 = a1;
  v25 = [a1 recordID];
  v26 = [v25 recordName];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = sub_10009FD4C();
  *(v24 + 32) = v27;
  *(v24 + 40) = v29;
  v30 = NSPredicate.init(format:_:)();
  [v23 setPredicate:v30];

  v166[0] = 0;
  v162 = v23;
  v31 = [v23 execute:v166];
  v32 = v166[0];
  if (v31)
  {
    v33 = v31;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v32;

    if (v34 >> 62)
    {
      v36 = v3;
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else
    {
      v36 = v3;
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_4:
        if ((v34 & 0xC000000000000001) != 0)
        {
          v37 = v36;
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v37 = v36;
          v38 = *(v34 + 32);
        }

        v39 = v38;

        goto LABEL_15;
      }
    }
  }

  else
  {
    v40 = v166[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v36 = 0;
  }

  v42 = (*(*a2 + 152))(v41);
  v39 = [objc_allocWithZone(CloudOptIn) initWithContext:v42];

  if (!v39)
  {
    v59 = 0;
    v60 = v162;
    goto LABEL_51;
  }

  v37 = v36;
  v43 = [v164 recordID];
  v44 = [v43 recordName];

  if (!v44)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = String._bridgeToObjectiveC()();
  }

  [v39 setRecordID:v44];

LABEL_15:
  v45 = type metadata accessor for JSONDecoder();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = JSONDecoder.init()();
  v49 = [v164 encryptedValues];
  v50 = String._bridgeToObjectiveC()();
  v51 = [v49 objectForKeyedSubscript:v50];
  swift_unknownObjectRelease();

  v52 = &selRef_URIWithUnprefixedURI_;
  if (v51)
  {
    v165 = v51;
    sub_100095820(&qword_1003844B0, &qword_1002D6E00);
    v53 = v37;
    if (swift_dynamicCast())
    {
      v54 = v48;
      v55 = v166[0];
      v56 = v166[1];
      sub_1000D24F0(&unk_100384A40, type metadata accessor for CloudOptInData);
      v57 = v161;
      v58 = v158;
      v155 = v54;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v53)
      {

        sub_1000956CC(v55, v56);
        (*(v154 + 56))(v57, 1, 1, v58);
        sub_1000057C4(v57, &unk_100384A30, &qword_1002D73C8);
        v161 = 0;
        v53 = 0;
        v48 = v155;
      }

      else
      {
        v148 = v56;
        v149 = v55;
        (*(v154 + 56))(v57, 0, 1, v58);
        v61 = v153;
        sub_1000D1AE8(v57, v153);
        v62 = v61[2];
        v63 = v61[3];
        v64 = String._bridgeToObjectiveC()();
        [v39 setUri:v64];

        v65 = v61[4];
        v66 = v61[5];
        v67 = String._bridgeToObjectiveC()();
        [v39 setApplication:v67];

        v68 = v61;
        v161 = (*(*a2 + 264))(v65, v66);
        if (*(v61 + 56) == 1)
        {
          [v39 setState:0];
        }

        else
        {
          v69 = [objc_allocWithZone(NSNumber) initWithInteger:v61[6]];
          [v39 setState:v69];
        }

        v71 = v159;
        v70 = v160;
        v72 = v151;
        v48 = v155;
        sub_1000AB284(v68 + *(v158 + 32), v151);
        v73 = &selRef_URIWithUnprefixedURI_;
        if ((*(v71 + 48))(v72, 1, v70) == 1)
        {
          sub_1000057C4(v72, &qword_100383FB0, &unk_1002D6690);
        }

        else
        {
          v74 = v150;
          (*(v71 + 32))(v150, v72, v70);
          isa = Date._bridgeToObjectiveC()().super.isa;
          [v39 setSmtTimestamp:isa];

          v76 = v74;
          v73 = &selRef_URIWithUnprefixedURI_;
          (*(v71 + 8))(v76, v70);
        }

        v77 = v158;
        v78 = (v68 + *(v158 + 40));
        if (v78[1])
        {
          v79 = *v78;
          v80 = String._bridgeToObjectiveC()();
          [v39 setSerialNumber:v80];
        }

        v81 = (v68 + *(v77 + 36));
        if (v81[1])
        {
          v82 = *v81;
          v83 = String._bridgeToObjectiveC()();
          [v39 setOsVersion:v83];
        }

        v84 = [v39 v73[203]];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;

        v88 = (*(*a2 + 216))(v166);
        v89 = v87;
        v52 = &selRef_URIWithUnprefixedURI_;
        sub_1000A971C(&v165, v85, v89);

        v90 = v88(v166, 0);
        v91 = (*(*a2 + 176))(v90);
        [v91 trigger];
        sub_1000956CC(v149, v148);

        sub_1000BF87C(v153);
      }
    }

    else
    {
      v161 = 0;
    }
  }

  else
  {
    v161 = 0;
    v53 = v37;
  }

  v92 = String._bridgeToObjectiveC()();
  [v39 setCkstate:v92];

  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  sub_10009597C(v93, qword_100390148);
  v94 = v39;
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v95, v96))
  {
    v150 = v95;
    LODWORD(v154) = v96;
    v155 = v48;
    v158 = v53;
    v97 = v52;
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v166[0] = v153;
    *v98 = 136316162;
    v100 = [v94 uri];
    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;

    v104 = sub_1000999E4(v101, v103, v166);

    *(v98 + 4) = v104;
    *(v98 + 12) = 2080;
    v105 = [v94 v97[203]];
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    v109 = sub_1000999E4(v106, v108, v166);

    *(v98 + 14) = v109;
    *(v98 + 22) = 2112;
    v110 = [v94 state];
    *(v98 + 24) = v110;
    v151 = v99;
    *v99 = v110;
    *(v98 + 32) = 2080;
    v111 = [v94 smtTimestamp];
    if (v111)
    {
      v112 = v156;
      v113 = v111;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v114 = 0;
      v115 = v160;
    }

    else
    {
      v114 = 1;
      v115 = v160;
      v112 = v156;
    }

    v116 = v159;
    (*(v159 + 56))(v112, v114, 1, v115);
    v117 = v157;
    sub_1000D1B4C(v112, v157, &qword_100383FB0, &unk_1002D6690);
    v118 = (*(v116 + 48))(v117, 1, v115);
    v119 = v150;
    if (v118)
    {
      sub_1000057C4(v117, &qword_100383FB0, &unk_1002D6690);
      v120 = 0xE100000000000000;
      v121 = 45;
    }

    else
    {
      v122 = v152;
      (*(v116 + 16))(v152, v117, v115);
      sub_1000057C4(v117, &qword_100383FB0, &unk_1002D6690);
      v123 = Date.description.getter();
      v124 = v115;
      v121 = v123;
      v120 = v125;
      (*(v116 + 8))(v122, v124);
    }

    v126 = sub_1000999E4(v121, v120, v166);

    *(v98 + 34) = v126;
    *(v98 + 42) = 2080;
    v127 = [v94 recordID];
    if (v127)
    {
      v128 = v127;
      v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v131 = v130;
    }

    else
    {
      v131 = 0xEB00000000444964;
      v129 = 0x726F6365722D6F6ELL;
    }

    v132 = sub_1000999E4(v129, v131, v166);

    *(v98 + 44) = v132;
    _os_log_impl(&_mh_execute_header, v119, v154, "merged cloud optin: %s[%s] %@ %s %s", v98, 0x34u);
    sub_1000057C4(v151, &unk_100383290, &unk_1002D5BA0);

    swift_arrayDestroy();

    v52 = &selRef_URIWithUnprefixedURI_;
  }

  else
  {
  }

  v133 = (*(*a2 + 456))(v94, v164);
  v134 = (*(*a2 + 152))(v133);
  v166[0] = 0;
  v135 = [v134 save:v166];

  if (v135)
  {
    v136 = v166[0];
  }

  else
  {
    v137 = v166[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v138 = [v94 uri];
  v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v141 = v140;

  v142 = [v94 v52[203]];
  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v145 = v144;

  v146 = v139;
  v60 = v161;
  (*(*a2 + 376))(v146, v141, v143, v145, v161);

  v59 = 1;
LABEL_51:

  *v163 = v59;
}

void sub_1000C9664(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v12 = (*(*v5 + 248))();
  if (!v12)
  {
    return;
  }

  if (v5[11] == a1 && v5[12] == a2)
  {
    goto LABEL_20;
  }

  v34 = v12;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_19;
  }

  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10009597C(v14, qword_100390148);
  v34 = v34;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v33 = v16;
    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v17 = 136315650;
    [v34 state];
    v18 = KTOptInGetString();
    log = v15;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_1000999E4(v19, v21, &v35);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1000999E4(a3, a4, &v35);
    *(v17 + 22) = 2080;
    *(v17 + 24) = sub_1000999E4(a1, a2, &v35);
    v15 = log;
    _os_log_impl(&_mh_execute_header, log, v33, "updating peer opt-in state to %s for %s for %s", v17, 0x20u);
    swift_arrayDestroy();
  }

  v23 = v6[8];
  if (!v23)
  {
LABEL_19:
    v12 = v34;
LABEL_20:

    return;
  }

  v24 = v6[8];
  swift_unknownObjectRetain();
  v25 = sub_10014C080([v34 state]);
  sub_100095820(&qword_1003844C0, &qword_1002D6E08);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1002D47B0;
  *(v26 + 32) = a1;
  *(v26 + 40) = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v28 = String._bridgeToObjectiveC()();
  [v23 setCachedPeerOptInState:v25 uris:isa application:v28];

  if (a5)
  {
    v29 = a5;
    v30 = [v29 state];
    if (v30 == [v34 state] || !sub_10014C080(objc_msgSend(v34, "state")))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = String._bridgeToObjectiveC()();
      [v23 removeFailuresOnOptIn:v31];
      swift_unknownObjectRelease();
    }

    goto LABEL_19;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1000C9A78(void *a1)
{
  v3 = (*(*v1 + 152))();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000CFEB4;
  *(v5 + 24) = v4;
  v10[4] = sub_1000A040C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10009EB40;
  v10[3] = &unk_1003204F0;
  v6 = _Block_copy(v10);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C9C34()
{
  v9 = &_swiftEmptyArrayStorage;
  v1 = (*(*v0 + 152))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000D0578;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100320568;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000C9DCC()
{
  v9 = &_swiftEmptyArrayStorage;
  v1 = (*(*v0 + 152))();
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000D0590;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_1003205E0;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000C9F64()
{
  v9 = 0;
  v1 = (*(*v0 + 152))();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000D08F0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100320658;
  v4 = _Block_copy(aBlock);

  [v1 performBlockAndWait:v4];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000CA0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*v3 + 152))();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000D0ADC;
  *(v9 + 24) = v8;
  v13[4] = sub_1000A0E98;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10009EB40;
  v13[3] = &unk_1003206D0;
  v10 = _Block_copy(v13);

  [v7 performBlockAndWait:v10];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CA29C(void *a1)
{
  v12 = 0;
  v3 = (*(*v1 + 152))();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = &v12;
  v4[4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000D1134;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1000A0E98;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009EB40;
  aBlock[3] = &unk_100320748;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v3 performBlockAndWait:v6];

  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_1000CA440(void *a1)
{
  v2 = v1;
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v67 - v6;
  v8 = type metadata accessor for CloudOptInData();
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 ckrecord];
  if (v12)
  {
    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xF000000000000000;
  }

  v17 = type metadata accessor for KTCloudRecords();
  v18 = (*(v17 + 456))(v14, v16);
  sub_10009A9D4(v14, v16);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    result = (*(*v2 + 448))(a1);
    if (!result)
    {
      return result;
    }

    v21.super.isa = result;
    sub_10009FDA0(0, &qword_1003851B0, CKRecord_ptr);
    v22 = v2[2];
    v23 = v2[3];

    v24._countAndFlagsBits = v22;
    v24._object = v23;
    v19 = CKRecord.init(recordType:recordID:)(v24, v21).super.isa;
    v18 = 0;
  }

  v25 = v18;
  v26 = [(objc_class *)v19 recordID];

  v27 = [v26 recordName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v29;
  v74 = v28;

  v30 = [a1 uri];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [a1 application];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v36;
  v71 = v35;

  v37 = [a1 state];
  v38 = v37;
  if (v37)
  {
    v69 = [v37 integerValue];
  }

  else
  {
    v69 = 0;
  }

  v39 = [a1 smtTimestamp];
  if (v39)
  {
    v40 = v39;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = type metadata accessor for Date();
    (*(*(v41 - 8) + 56))(v7, 0, 1, v41);
  }

  else
  {
    v42 = type metadata accessor for Date();
    (*(*(v42 - 8) + 56))(v7, 1, 1, v42);
  }

  v43 = v2[7];
  v72 = v19;
  if (v43)
  {
    v68 = v8;
    v44 = v7;
    v45 = v33;
    v46 = v31;
    v47 = [v43 osVersion];
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = [v43 serialNumber];
    if (v51)
    {
      v52 = v51;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;
    }

    else
    {
      v43 = 0;
      v54 = 0;
    }

    v31 = v46;
    v33 = v45;
    v7 = v44;
    v8 = v68;
  }

  else
  {
    v54 = 0;
    v48 = 0;
    v50 = 0;
  }

  v55 = v73;
  *v11 = v74;
  *(v11 + 1) = v55;
  *(v11 + 2) = v31;
  *(v11 + 3) = v33;
  v56 = v70;
  *(v11 + 4) = v71;
  *(v11 + 5) = v56;
  *(v11 + 6) = v69;
  v11[56] = v38 == 0;
  sub_1000D1B4C(v7, &v11[v8[8]], &qword_100383FB0, &unk_1002D6690);
  v57 = &v11[v8[9]];
  *v57 = v48;
  v57[1] = v50;
  v58 = &v11[v8[10]];
  *v58 = v43;
  *(v58 + 1) = v54;
  v59 = type metadata accessor for JSONEncoder();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000D24F0(&qword_1003846F0, type metadata accessor for CloudOptInData);
  v62 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v63 = v72;
  v65 = v64;
  v66 = [(objc_class *)v72 encryptedValues];
  swift_getObjectType();
  v77 = &type metadata for Data;
  v78 = &protocol witness table for Data;
  v75 = v62;
  v76 = v65;
  sub_100002D78(v62, v65);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();

  sub_1000956CC(v62, v65);
  sub_1000BF87C(v11);
  return v63;
}

CKRecordID sub_1000CA9DC(void *a1)
{
  v3 = [a1 recordID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
    v8 = v1[5];
    v9._countAndFlagsBits = v5;
    v9._object = v7;
    return CKRecordID.init(recordName:zoneID:)(v9, v8);
  }

  else
  {
    v11 = [a1 uri];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = [a1 application];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = (*(*v1 + 30))(v12, v14, v16, v18);

    return v19;
  }
}

uint64_t sub_1000CAB18()
{
  v1 = (*(*v0 + 152))();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1000D16E0;
  *(v2 + 24) = v0;
  v5[4] = sub_1000A0E98;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009EB40;
  v5[3] = &unk_100320798;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait:v3];

  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CAC7C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();
  v3 = *(v0 + 64);
  swift_unknownObjectRelease();

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return v0;
}

uint64_t sub_1000CACDC()
{
  sub_1000CAC7C();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_1000CAD10()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1000CB090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000CB0CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&unk_100384AB0, &unk_1002DCEE0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000CB1D0(uint64_t a1, uint64_t a2)
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

  sub_100095820(&qword_100384A50, &qword_1002D7650);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1000CB258(uint64_t *a1)
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
  sub_1000CB2D4(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1000CB2D4(uint64_t *a1)
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
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_10009FDA0(0, &qword_100384AA0, KTOptInState_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000CB880(v8, v9, a1, v4);
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
    sub_1000CB3E8(0, v2, 1, a1);
  }
}

void sub_1000CB3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
    v58 = (v20 + 32);
    v22 = *a4;
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
          sub_1000057C4(v13, &qword_100383FB0, &unk_1002D6690);
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
          sub_1000057C4(v57, &qword_100383FB0, &unk_1002D6690);
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

void sub_1000CB880(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
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
    v31 = &_swiftEmptyArrayStorage;
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
        sub_1000CC604((*v157 + 8 * v141), (*v157 + 8 * *&v140[16 * a4 + 16]), (*v157 + 8 * v143), a3);
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
  v31 = &_swiftEmptyArrayStorage;
  v165 = (v26 + 8);
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
      LODWORD(v164) = sub_1000C0EA4(&v173, &v172);
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
            sub_1000057C4(v55, &qword_100383FB0, &unk_1002D6690);
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
            sub_1000057C4(v156, &qword_100383FB0, &unk_1002D6690);
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
        sub_1000CC604((*v157 + 8 * v111), (*v157 + 8 * *&v31[16 * a3 + 32]), (*v157 + 8 * v112), v72);
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
        sub_1000057C4(v126, &qword_100383FB0, &unk_1002D6690);
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
        sub_1000057C4(v166, &qword_100383FB0, &unk_1002D6690);
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

uint64_t sub_1000CC604(void **a1, void **a2, char *a3, void **a4)
{
  v8 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v99 = (&v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v97 = &v91 - v13;
  v14 = __chkstk_darwin(v12);
  v100 = &v91 - v15;
  __chkstk_darwin(v14);
  v98 = &v91 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v96 = (&v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v104 = &v91 - v22;
  v23 = __chkstk_darwin(v21);
  v95 = (&v91 - v24);
  v25 = __chkstk_darwin(v23);
  v105 = &v91 - v26;
  __chkstk_darwin(v25);
  v103 = &v91 - v28;
  v29 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v29 = a2 - a1;
  }

  v30 = v29 >> 3;
  v31 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v31 = a3 - a2;
  }

  v32 = v31 >> 3;
  if (v30 < v31 >> 3)
  {
    if (a4 != a1 || &a1[v30] <= a4)
    {
      v33 = v27;
      memmove(a4, a1, 8 * v30);
      v27 = v33;
    }

    v94 = &a4[v30];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v34 = a1;
      if (a2 < a3)
      {
        v99 = (v27 + 32);
        v104 = (v27 + 56);
        v96 = (v27 + 48);
        v97 = (v27 + 8);
        v35 = v94;
        while (1)
        {
          v102 = a2;
          v36 = *a2;
          v106 = a4;
          v37 = *a4;
          v38 = v36;
          v39 = v37;
          v101 = v38;
          v40 = [v38 smtTimestamp];
          if (v40)
          {
            v41 = v40;
            v42 = v105;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v43 = v98;
            v44 = *v99;
            (*v99)(v98, v42, v17);
            v45 = *v104;
            (*v104)(v43, 0, 1, v17);
            v44(v103, v43, v17);
          }

          else
          {
            v45 = *v104;
            v46 = v98;
            (*v104)(v98, 1, 1, v17);
            static Date.distantPast.getter();
            if ((*v96)(v46, 1, v17) != 1)
            {
              sub_1000057C4(v46, &qword_100383FB0, &unk_1002D6690);
            }
          }

          v47 = [v39 smtTimestamp];
          if (v47)
          {
            v48 = v34;
            v49 = v105;
            v50 = v47;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v51 = v100;
            v52 = *v99;
            v53 = v49;
            v34 = v48;
            v35 = v94;
            (*v99)(v100, v53, v17);
            v45(v51, 0, 1, v17);
            v54 = v95;
            v52(v95, v51, v17);
          }

          else
          {
            v55 = v100;
            v45(v100, 1, 1, v17);
            v54 = v95;
            static Date.distantPast.getter();
            if ((*v96)(v55, 1, v17) != 1)
            {
              sub_1000057C4(v100, &qword_100383FB0, &unk_1002D6690);
            }
          }

          v56 = v103;
          v57 = static Date.< infix(_:_:)();
          v58 = v54;
          v59 = *v97;
          (*v97)(v58, v17);
          v59(v56, v17);

          if ((v57 & 1) == 0)
          {
            break;
          }

          v60 = v102;
          a2 = v102 + 1;
          a4 = v106;
          if (v34 != v102)
          {
            goto LABEL_24;
          }

LABEL_25:
          ++v34;
          if (a4 >= v35 || a2 >= a3)
          {
            a2 = v34;
            goto LABEL_56;
          }
        }

        v60 = v106;
        a4 = v106 + 1;
        a2 = v102;
        if (v34 == v106)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v34 = *v60;
        goto LABEL_25;
      }

      a2 = a1;
    }

    v35 = v94;
    goto LABEL_56;
  }

  v92 = a1;
  if (a4 != a2 || &a2[v32] <= a4)
  {
    v61 = v27;
    memmove(a4, a2, 8 * v32);
    v27 = v61;
  }

  v35 = &a4[v32];
  if (a3 - a2 >= 8 && a2 > v92)
  {
    v98 = (v27 + 32);
    v103 = (v27 + 56);
    v93 = (v27 + 48);
    v94 = (v27 + 8);
    v106 = a4;
    do
    {
      v102 = a2;
      v62 = a2 - 1;
      a3 -= 8;
      v63 = v35;
      v95 = v62;
      while (1)
      {
        v64 = *--v63;
        v65 = *v62;
        v66 = v64;
        v67 = v65;
        v68 = [v66 smtTimestamp];
        v101 = v66;
        if (v68)
        {
          v69 = v68;
          v70 = v105;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v71 = v97;
          v72 = *v98;
          (*v98)(v97, v70, v17);
          v73 = *v103;
          (*v103)(v71, 0, 1, v17);
          v72(v104, v71, v17);
        }

        else
        {
          v73 = *v103;
          v74 = v97;
          (*v103)(v97, 1, 1, v17);
          static Date.distantPast.getter();
          if ((*v93)(v74, 1, v17) != 1)
          {
            sub_1000057C4(v74, &qword_100383FB0, &unk_1002D6690);
          }
        }

        v100 = v67;
        v75 = [v67 smtTimestamp];
        if (v75)
        {
          v76 = a3;
          v77 = v35;
          v78 = v105;
          v79 = v75;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v80 = v99;
          v81 = *v98;
          v82 = v78;
          v35 = v77;
          a3 = v76;
          (*v98)(v99, v82, v17);
          v73(v80, 0, 1, v17);
          v83 = v96;
          v81(v96, v80, v17);
        }

        else
        {
          v84 = v99;
          v73(v99, 1, 1, v17);
          v83 = v96;
          static Date.distantPast.getter();
          if ((*v93)(v84, 1, v17) != 1)
          {
            sub_1000057C4(v99, &qword_100383FB0, &unk_1002D6690);
          }
        }

        v85 = v104;
        v86 = static Date.< infix(_:_:)();
        v87 = *v94;
        (*v94)(v83, v17);
        v87(v85, v17);

        v88 = (a3 + 8);
        if (v86)
        {
          break;
        }

        a4 = v106;
        v62 = v95;
        if (v88 != v35)
        {
          *a3 = *v63;
        }

        a3 -= 8;
        v35 = v63;
        if (v63 <= a4)
        {
          v35 = v63;
          a2 = v102;
          goto LABEL_56;
        }
      }

      a4 = v106;
      v89 = v95;
      if (v88 != v102)
      {
        *a3 = *v95;
      }

      if (v35 <= a4)
      {
        break;
      }

      a2 = v89;
    }

    while (v89 > v92);
    a2 = v89;
  }

LABEL_56:
  if (a2 != a4 || a2 >= (a4 + ((v35 - a4 + (v35 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v35 - a4));
  }

  return 1;
}

uint64_t sub_1000CCF78(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000CD004(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000CD018(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100095820(&unk_100384A80, &qword_1002D73E0);
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

uint64_t sub_1000CD2C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000CD018(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000574C(a2, a3);
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
      sub_1000CD43C();
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

void *sub_1000CD43C()
{
  v1 = v0;
  sub_100095820(&unk_100384A80, &qword_1002D73E0);
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

void (*sub_1000CD5AC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000CD62C;
  }

  __break(1u);
  return result;
}

void *sub_1000CD634(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000CB1D0(v3, 0);
  sub_1000CD6C8(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000CD6C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000D29A4(&qword_100384AA8, &qword_1003846B8, &unk_1002DCED0);
          for (i = 0; i != v6; ++i)
          {
            sub_100095820(&qword_1003846B8, &unk_1002DCED0);
            v9 = sub_1000CD5AC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10009FDA0(0, &qword_100384AA0, KTOptInState_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000CD890(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D47A0;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_10009FD4C();
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 64) = v8;
  *(v7 + 72) = v5;
  *(v7 + 80) = v4;
  *(v7 + 136) = &type metadata for String;
  *(v7 + 144) = v8;
  *(v7 + 112) = 0x646574656C6564;
  *(v7 + 120) = 0xE700000000000000;

  v9 = NSPredicate.init(format:_:)();
  [v6 setPredicate:v9];

  v20 = 0;
  v10 = [v6 execute:&v20];
  v11 = v20;
  if (!v10)
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v17 = 0;
    goto LABEL_11;
  }

  v12 = v10;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    v17 = 0;
    goto LABEL_11;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_7:
    v16 = v15;

    v17 = sub_1000BFA10();

LABEL_11:
    *a1 = v17;
    return;
  }

  __break(1u);
}

uint64_t sub_1000CDB04@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v25 = v1[4];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D47B0;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10009FD4C();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  v7 = v5;

  v8 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v8];

  v28 = 0;
  v9 = [v5 execute:&v28];
  v10 = v28;
  if (v9)
  {
    v11 = v9;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v10;

    v28 = &_swiftEmptyArrayStorage;
    if (v12 >> 62)
    {
      goto LABEL_18;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v7;
    for (i = a1; v14; i = a1)
    {
      v7 = v12 & 0xC000000000000001;
      v24 = &_swiftEmptyArrayStorage;
      a1 = 4;
      while (1)
      {
        v15 = a1 - 4;
        if (v7)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v16 = *(v12 + 8 * a1);
        }

        v17 = v16;
        v18 = a1 - 3;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v27 = v16;
        sub_1000C1F0C(&v27, v25, "db optin: %s[%s] - %@ %s", &v26);

        if (v26)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v24 = v28;
        }

        ++a1;
        if (v18 == v14)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v7;
    }

    v24 = &_swiftEmptyArrayStorage;
LABEL_20:

    a1 = i;
    v21 = v24;
  }

  else
  {
    v19 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v21 = 0;
  }

  *a1 = v21;
  return result;
}

void sub_1000CDE08(void *a1@<X8>)
{
  v2 = [objc_opt_self() fetchRequest];
  v22 = 0;
  v3 = [v2 execute:&v22];
  v4 = v22;
  if (v3)
  {
    v5 = v3;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v4;

    v22 = &_swiftEmptyArrayStorage;
    if (v6 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v16 = v2;
      v17 = a1;
      if (!i)
      {
        break;
      }

      a1 = (v6 & 0xC000000000000001);
      v2 = (v6 & 0xFFFFFFFFFFFFFF8);
      v18 = &_swiftEmptyArrayStorage;
      v9 = 4;
      while (1)
      {
        v10 = v9 - 4;
        if (a1)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v6 + 8 * v9);
        }

        v12 = v11;
        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v21 = v11;
        sub_1000C1F0C(&v21, v19, "list db optin: %s[%s] - %@ %s", &v20);

        if (v20)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v18 = v22;
        }

        ++v9;
        if (v13 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v18 = &_swiftEmptyArrayStorage;
LABEL_18:

    a1 = v17;
    v15 = v18;
  }

  else
  {
    v14 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v15 = &_swiftEmptyArrayStorage;
  }

  *a1 = v15;
}

uint64_t sub_1000CE058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656D6954746D73 && a2 == 0xEC000000706D6174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6169726573 && a2 == 0xE600000000000000)
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

unint64_t sub_1000CE2A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100095820(&unk_100384A80, &qword_1002D73E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000574C(v5, v6);
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

void sub_1000CE3AC()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v27 = v0[6];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  if (v1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1002D4790;
    *(v6 + 56) = &type metadata for String;
    v7 = sub_10009FD4C();
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;
    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v7;
    *(v6 + 64) = v7;
    *(v6 + 72) = v4;
    *(v6 + 80) = v3;
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1002D47B0;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_10009FD4C();
    *(v8 + 32) = v4;
    *(v8 + 40) = v3;
  }

  v9 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v9];

  v28 = 0;
  v10 = [v5 execute:&v28];
  v11 = v28;
  if (!v10)
  {
    goto LABEL_20;
  }

  v12 = v10;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  if (v13 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v16 = 4;
    while (1)
    {
      v17 = v16 - 4;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v18 = *(v13 + 8 * v16);
      }

      v19 = v18;
      v20 = v16 - 3;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = String._bridgeToObjectiveC()();
      [v19 setCkstate:v21];

      ++v16;
      if (v20 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  v23 = (*(*v27 + 152))(v22);
  v28 = 0;
  v24 = [v23 save:&v28];

  v11 = v28;
  if (v24)
  {
    v25 = v28;
  }

  else
  {
LABEL_20:
    v26 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000CE718(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  integerLiteral = *(v1 + 40);
  v41 = *(v1 + 41);
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D4790;
  v8 = *(v2 + 88);
  v7 = *(v2 + 96);
  *(v6 + 56) = &type metadata for String;
  v9 = sub_10009FD4C();
  v44 = v8;
  *(v6 + 32) = v8;
  v10 = v7;
  v11 = v3;
  *(v6 + 40) = v10;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v9;
  *(v6 + 64) = v9;
  *(v6 + 72) = v3;
  *(v6 + 80) = v4;

  v12 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v12];

  v45 = 0;
  v42 = v5;
  v13 = [v5 execute:&v45];
  v14 = v45;
  if (v13)
  {
    v15 = v13;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v14;

    if (v16 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v2;
    v20 = v44;
    if (v18)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_8;
      }

      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v16 + 32);
LABEL_8:
        v22 = v21;

        v23 = v22;
LABEL_15:
        sub_10009FDA0(0, &qword_100384440, NSNumber_ptr);
        isa = NSNumber.init(integerLiteral:)(integerLiteral).super.super.isa;
        [v23 setState:isa];

        v33 = String._bridgeToObjectiveC()();
        [v23 setCkstate:v33];

        if (v41)
        {
          [v23 setCkrecord:0];
        }

        v34 = (*(*v19 + 440))(v23);

        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v24 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v19 = v2;
    v20 = v44;
  }

  v25 = (*(*v19 + 240))(v20, v10, v11, v4);
  if (v25)
  {
    v26 = v25;
    v27 = (*(*v19 + 152))();
    v28 = [objc_allocWithZone(CloudOptIn) initWithContext:v27];

    v23 = v28;
    v29 = String._bridgeToObjectiveC()();
    [v23 setApplication:v29];

    v30 = String._bridgeToObjectiveC()();
    [v23 setUri:v30];

    v31 = [v26 recordName];
    if (!v31)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = String._bridgeToObjectiveC()();
    }

    [v23 setRecordID:v31];

    goto LABEL_15;
  }

  if (qword_100390140 != -1)
  {
LABEL_26:
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10009597C(v35, qword_100390148);
  v36 = static os_log_type_t.error.getter();

  v37 = Logger.logObject.getter();

  if (os_log_type_enabled(v37, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_1000999E4(v20, v10, &v45);
    _os_log_impl(&_mh_execute_header, v37, v36, "failed to create recordID %s", v38, 0xCu);
    sub_10009A9E8(v39);
  }

  v34 = 0;
LABEL_22:
  *a1 = v34;
}

void sub_1000CECBC(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D4790;
  v8 = v3[11];
  v7 = v3[12];
  *(v6 + 56) = &type metadata for String;
  v9 = sub_10009FD4C();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v9;
  *(v6 + 64) = v9;
  *(v6 + 72) = v2;
  *(v6 + 80) = v4;

  v10 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v10];

  v29 = 0;
  v11 = [v5 execute:&v29];
  v12 = v29;
  if (!v11)
  {
    v27 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v26 = 0;
    goto LABEL_15;
  }

  v13 = v11;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10009597C(v16, qword_100390148);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315138;
    v21 = Array.description.getter();
    v23 = sub_1000999E4(v21, v22, &v29);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "found intent records: %s", v19, 0xCu);
    sub_10009A9E8(v20);
  }

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_14:

    v26 = 0;
    goto LABEL_15;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_14;
  }

LABEL_8:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v14 + 32);
LABEL_11:
    v25 = v24;

    v26 = (*(*v3 + 448))(v25);

LABEL_15:
    *a1 = v26;
    return;
  }

  __break(1u);
}

void sub_1000CF06C(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002D4790;
  v7 = *(v2 + 88);
  v8 = *(v2 + 96);
  *(v6 + 56) = &type metadata for String;
  v9 = sub_10009FD4C();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v9;
  *(v6 + 64) = v9;
  *(v6 + 72) = v3;
  *(v6 + 80) = v4;

  v10 = NSPredicate.init(format:_:)();
  [v5 setPredicate:v10];

  v29 = 0;
  v11 = [v5 execute:&v29];
  v12 = v29;
  if (!v11)
  {
    v26 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_11;
  }

  v13 = v11;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v12;

  if (!(v14 >> 62))
  {
    v16 = v2;
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

    v25 = 0;
    goto LABEL_14;
  }

  v16 = v2;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v14 + 32);
LABEL_7:
    v18 = v17;

    v19 = v18;
    v20 = String._bridgeToObjectiveC()();
    [v19 setCkstate:v20];

    v21 = (*(*v16 + 152))();
    v29 = 0;
    v22 = [v21 save:&v29];

    if (v22)
    {
      v23 = *(*v16 + 440);
      v24 = v29;
      v25 = v23(v19);

LABEL_14:
      *a1 = v25;
      return;
    }

    v27 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_11:

    v25 = 0;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1000CF3C0(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  v25 = *(v1 + 40);
  v24 = *(v1 + 56);
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10009597C(v7, qword_100390148);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "storeOptInIntent started CK", v10, 2u);
  }

  type metadata accessor for KTStoreOptInOperation();
  v11 = *(*v3 + 19);
  v12 = v3[6];
  v13 = v11();
  sub_100095820(&qword_100384A50, &qword_1002D7650);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1002D6360;
  *(v14 + 32) = v4;
  v15 = v4;
  v16 = KTStoreOptInOperation.__allocating_init(database:context:records:type:overwrite:)(v12, v13, v14, 0x746E65746E69, 0xE600000000000000, v5);
  v17 = swift_allocObject();
  *(v17 + 16) = v25;
  *(v17 + 24) = v6;
  *(v17 + 32) = v24;
  *(v17 + 40) = v16;
  *(v17 + 48) = v3;

  v18 = v16;

  v19 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000D2580;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2A70;
  aBlock[3] = &unk_100320918;
  v20 = _Block_copy(aBlock);
  v21 = [objc_opt_self() named:v19 withBlockTakingSelf:v20];

  _Block_release(v20);

  [v21 addSuccessDependency:v18];
  [a1 dependOnBeforeGroupFinished:v21];
  [a1 dependOnBeforeGroupFinished:v18];
  v22 = [a1 operationQueue];
  [v22 addOperation:v21];

  v23 = [a1 operationQueue];
  [v23 addOperation:v18];
}

void sub_1000CF724(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v24 = v1[4];
  v6 = v1[6];
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10009597C(v7, qword_100390148);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "deleteOptInIntent started CK", v10, 2u);
  }

  type metadata accessor for KTDeleteOptInOperation();
  v11 = *(*v3 + 19);
  v12 = v3[6];
  v13 = v11();
  v14 = v4;
  v15 = KTDeleteOptInOperation.__allocating_init(database:context:recordID:)(v12, v13, v14);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v24;
  v16[4] = v5;
  v16[5] = v14;
  v16[6] = v6;
  v17 = v14;
  v18 = v15;

  swift_unknownObjectRetain();
  v19 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000D2114;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2A70;
  aBlock[3] = &unk_1003208C8;
  v20 = _Block_copy(aBlock);
  v21 = [objc_opt_self() named:v19 withBlockTakingSelf:v20];

  _Block_release(v20);

  [v21 addSuccessDependency:v18];
  [a1 dependOnBeforeGroupFinished:v21];
  [a1 dependOnBeforeGroupFinished:v18];
  v22 = [a1 operationQueue];
  [v22 addOperation:v21];

  v23 = [a1 operationQueue];
  [v23 addOperation:v18];
}

void sub_1000CFA5C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v32 = *(v1 + 40);
  v7 = *(v1 + 48);
  v6 = *(v1 + 56);
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10009597C(v8, qword_100390148);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v11 = 136315394;
    type metadata accessor for Date();
    v12 = Dictionary.description.getter();
    v14 = v7;
    v15 = a1;
    v16 = v6;
    v17 = v4;
    v18 = sub_1000999E4(v12, v13, aBlock);

    *(v11 + 4) = v18;
    v4 = v17;
    v6 = v16;
    a1 = v15;
    v7 = v14;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v9, v10, "storeOptIn finished writing to CK %s:%{BOOL}d", v11, 0x12u);
    sub_10009A9E8(v31);
  }

  type metadata accessor for KTStoreOptInOperation();
  v19 = *(*v5 + 19);
  v20 = v5[6];
  v21 = v19();
  swift_beginAccess();
  v22 = *(v32 + 16);

  v23 = KTStoreOptInOperation.__allocating_init(database:context:records:type:overwrite:)(v20, v21, v22, 0x64726F636572, 0xE600000000000000, 1);
  v24 = swift_allocObject();
  *(v24 + 16) = v7;
  *(v24 + 24) = v6;
  *(v24 + 32) = v4;
  *(v24 + 40) = v23;
  *(v24 + 48) = v5;

  v25 = v23;

  v26 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000D1BB4;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2A70;
  aBlock[3] = &unk_100320878;
  v27 = _Block_copy(aBlock);
  v28 = [objc_opt_self() named:v26 withBlockTakingSelf:v27];

  _Block_release(v27);

  [v28 addDependency:v25];
  [a1 dependOnBeforeGroupFinished:v28];
  [a1 dependOnBeforeGroupFinished:v25];
  v29 = [a1 operationQueue];
  [v29 addOperation:v28];

  v30 = [a1 operationQueue];
  [v30 addOperation:v25];
}

void sub_1000CFEB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D47B0;
  v56 = v1;
  v5 = [v1 recordName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10009FD4C();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  v63 = 0;
  v10 = [v3 execute:&v63];
  v11 = v63;
  if (v10)
  {
    v12 = v10;
    sub_10009FDA0(0, &qword_1003846E0, off_100315888);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v11;

    if (v13 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v55 = v3;
      v16 = &unk_100390000;
      if (!i)
      {
        break;
      }

      v17 = v13 & 0xC000000000000001;
      v18 = v13 & 0xFFFFFFFFFFFFFF8;
      v3 = 4;
      v60 = v13;
      v61 = v2;
      v58 = v13 & 0xC000000000000001;
      v59 = i;
      v57 = v13 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v20 = v3 - 4;
        if (v17)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v18 + 16))
          {
            goto LABEL_30;
          }

          v21 = *(v13 + 8 * v3);
        }

        v22 = v21;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v62 = v3 - 3;
        if (v16[40] != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_10009597C(v23, qword_100390148);
        v24 = v22;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v63 = v29;
          *v27 = 138412546;
          *(v27 + 4) = v24;
          *v28 = v24;
          *(v27 + 12) = 2080;
          v30 = [v24 ckstate];
          if (v30)
          {
            v31 = v30;
            v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v33;
          }

          else
          {
            v34 = 0xE100000000000000;
            v32 = 45;
          }

          v35 = sub_1000999E4(v32, v34, &v63);

          *(v27 + 14) = v35;
          _os_log_impl(&_mh_execute_header, v25, v26, "deleting optIn record: %@ %s", v27, 0x16u);
          sub_1000057C4(v28, &unk_100383290, &unk_1002D5BA0);

          sub_10009A9E8(v29);

          v13 = v60;
          v2 = v61;
          v16 = &unk_100390000;
          v17 = v58;
          i = v59;
          v18 = v57;
        }

        else
        {
        }

        v19 = (*(*v2 + 152))();
        [v19 deleteObject:v24];

        ++v3;
        if (v62 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_20:

    v37 = (*(*v2 + 152))(v36);
    v63 = 0;
    v38 = [v37 save:&v63];

    if (v38)
    {
      v39 = v63;

      return;
    }

    v41 = v63;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (v16[40] != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10009597C(v42, qword_100390148);
    v43 = v56;
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v63 = v48;
      *v46 = 136315394;
      v49 = [v43 recordName];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_1000999E4(v50, v52, &v63);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2112;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v54;
      *v47 = v54;
      _os_log_impl(&_mh_execute_header, v44, v45, "delete of record %s failed %@", v46, 0x16u);
      sub_1000057C4(v47, &unk_100383290, &unk_1002D5BA0);

      sub_10009A9E8(v48);

      return;
    }
  }

  else
  {
    v40 = v63;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1000D05A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002D47B0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10009FD4C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v9 = NSPredicate.init(format:_:)();
  [v7 setPredicate:v9];

  v34 = 0;
  v10 = [v7 execute:&v34];
  v11 = v34;
  if (!v10)
  {
    v28 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v12 = v10;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v11;

  v34 = &_swiftEmptyArrayStorage;
  if (v13 >> 62)
  {
LABEL_21:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v7;
    if (v15)
    {
LABEL_4:
      v32 = v5;
      v7 = 0;
      v16 = &_swiftEmptyArrayStorage;
      v5 = v13 & 0xC000000000000001;
      do
      {
        v17 = v7;
        while (1)
        {
          if (v5)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v18 = *(v13 + 8 * v17 + 32);
          }

          v19 = v18;
          v7 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v20 = [v18 recordID];
          if (v20)
          {
            break;
          }

          ++v17;
          if (v7 == v15)
          {
            goto LABEL_23;
          }
        }

        v31 = v6;
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        sub_10009FDA0(0, &unk_100384010, CKRecordID_ptr);
        v25 = *(v32 + 40);
        v26._countAndFlagsBits = v22;
        v26._object = v24;
        CKRecordID.init(recordName:zoneID:)(v26, v25);

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v27 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v34;
        v6 = v31;
      }

      while (v7 != v15);
      goto LABEL_23;
    }
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v7;
    if (v15)
    {
      goto LABEL_4;
    }
  }

  v16 = &_swiftEmptyArrayStorage;
LABEL_23:

  v30 = *v6;
  *v6 = v16;
}

void sub_1000D08F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002D4790;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10009FD4C();
  *(v4 + 32) = 0x676E696F6774756FLL;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 64) = v5;
  *(v4 + 72) = 0x646574656C6564;
  *(v4 + 80) = 0xE700000000000000;
  v6 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v6];

  v8 = (*(*v1 + 152))();
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v7 = NSManagedObjectContext.count<A>(for:)();

  if (v7 >= 1)
  {
    *v2 = 1;
  }
}

id sub_1000D0ADC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v49 = v1;
  v50 = v0[5];
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v51 = i;
    while (1)
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v7 = *(v49 + 32 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        break;
      }

      v53 = v10;
      if (qword_100390140 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10009597C(v11, qword_100390148);
      v12 = static os_log_type_t.info.getter();
      v6 = v8;

      v13 = Logger.logObject.getter();

      if (os_log_type_enabled(v13, v12))
      {
        v14 = v6;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v54 = v17;
        *v15 = 138412546;
        *(v15 + 4) = v14;
        *v16 = v14;
        *(v15 + 12) = 2080;
        v18 = v14;
        *(v15 + 14) = sub_1000999E4(v2, v3, &v54);
        _os_log_impl(&_mh_execute_header, v13, v12, "updating state record.ID %@ newState %s", v15, 0x16u);
        sub_1000057C4(v16, &unk_100383290, &unk_1002D5BA0);

        sub_10009A9E8(v17);

        v6 = v14;
      }

      v19 = [objc_opt_self() fetchRequest];
      sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
      sub_100095820(&unk_100383140, &qword_1002D6BD0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1002D47B0;
      v21 = [v6 recordName];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_10009FD4C();
      *(v20 + 32) = v22;
      *(v20 + 40) = v24;
      v25 = NSPredicate.init(format:_:)();
      [v19 setPredicate:v25];

      v54 = 0;
      v26 = [v19 execute:&v54];
      v27 = v54;
      if (v26)
      {
        v28 = v26;
        sub_10009FDA0(0, &qword_1003846E0, off_100315888);
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v27;

        sub_100095820(&qword_100383F98, &qword_1002D6B40);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1002D47B0;
        v54 = 0x3A7364726F636572;
        v55 = 0xE900000000000020;
        if (v29 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v33);

        v34 = v54;
        v35 = v55;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 32) = v34;
        *(v31 + 40) = v35;
        print(_:separator:terminator:)();

        if (v29 >> 62)
        {
          v36 = _CocoaArrayWrapper.endIndex.getter();
          v52 = v6;
          if (v36)
          {
LABEL_22:
            v38 = 4;
            while (1)
            {
              v39 = v38 - 4;
              if ((v29 & 0xC000000000000001) != 0)
              {
                v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v39 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_33;
                }

                v40 = *(v29 + 8 * v38);
              }

              v41 = v40;
              v9 = __OFADD__(v39, 1);
              v42 = v38 - 3;
              if (v9)
              {
                break;
              }

              v43 = String._bridgeToObjectiveC()();
              [v41 setCkstate:v43];

              ++v38;
              if (v42 == v36)
              {
                goto LABEL_4;
              }
            }

            __break(1u);
LABEL_33:
            __break(1u);
            break;
          }
        }

        else
        {
          v36 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v52 = v6;
          if (v36)
          {
            goto LABEL_22;
          }
        }

LABEL_4:

        i = v51;
        v6 = v52;
      }

      else
      {
        v37 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v5 = v53;
      if (v53 == i)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_37:
  v44 = (*(*v50 + 152))();
  v54 = 0;
  v45 = [v44 save:&v54];

  v46 = v54;
  if (v45)
  {

    return v46;
  }

  else
  {
    v48 = v54;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_1000D1134()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = [objc_opt_self() fetchRequest];
  sub_10009FDA0(0, &unk_100384420, NSPredicate_ptr);
  sub_100095820(&unk_100383140, &qword_1002D6BD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002D47B0;
  v6 = [v1 recordName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10009FD4C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = NSPredicate.init(format:_:)();
  [v4 setPredicate:v10];

  v40 = 0;
  v11 = [v4 execute:&v40];
  v12 = v40;
  if (!v11)
  {
    v23 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_100390140 == -1)
    {
LABEL_12:
      v24 = type metadata accessor for Logger();
      sub_10009597C(v24, qword_100390148);
      v25 = static os_log_type_t.error.getter();
      v26 = v1;
      v27 = Logger.logObject.getter();

      if (!os_log_type_enabled(v27, v25))
      {
LABEL_21:

        return;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v26;
      *v29 = v26;
      v30 = v26;
      _os_log_impl(&_mh_execute_header, v27, v25, "record not found %@", v28, 0xCu);
      sub_1000057C4(v29, &unk_100383290, &unk_1002D5BA0);

LABEL_20:

      goto LABEL_21;
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  v13 = v11;
  sub_10009FDA0(0, &qword_1003846E0, off_100315888);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v12;

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10009597C(v32, qword_100390148);
    v33 = static os_log_type_t.error.getter();

    v27 = Logger.logObject.getter();

    if (!os_log_type_enabled(v27, v33))
    {

      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v34 = 136315138;
    v36 = Array.description.getter();
    v38 = v37;

    v39 = sub_1000999E4(v36, v38, &v40);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v27, v33, "no response %s", v34, 0xCu);
    sub_10009A9E8(v35);

    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v1 + 32);
LABEL_7:
  v16 = v15;

  v17 = (*(*v3 + 440))(v16);
  v18 = *v2;
  *v2 = v17;
  v19 = v17;

  LOBYTE(v17) = (*(*v3 + 456))(v16, v17);
  if ((v17 & 1) == 0)
  {
LABEL_10:

    return;
  }

  v20 = (*(*v3 + 152))();
  v40 = 0;
  v21 = [v20 save:&v40];

  if (v21)
  {
    v22 = v40;
    goto LABEL_10;
  }

  v31 = v40;
  _convertNSErrorToError(_:)();

  swift_willThrow();
}

void sub_1000D16E0()
{
  v1 = objc_allocWithZone(NSFetchRequest);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithEntityName:v2];

  v4 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v3];
  v5 = *(*v0 + 152);
  v6 = v5();
  v15 = 0;
  v7 = [v6 executeRequest:v4 error:&v15];

  if (v7)
  {
    v8 = v15;
  }

  else
  {
    v10 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = (v5)(v9);
  v15 = 0;
  v12 = [v11 save:&v15];

  if (v12)
  {
    v13 = v15;
  }

  else
  {
    v14 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v3 = v4;
  }
}

void sub_1000D18B0()
{
  sub_1000D2954(319, &unk_1003847C0, &type metadata for Int, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000B7104();
    if (v1 <= 0x3F)
    {
      sub_1000D2954(319, &unk_1003847D0, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000D19E4()
{
  result = qword_100390380[0];
  if (!qword_100390380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100390380);
  }

  return result;
}

unint64_t sub_1000D1A3C()
{
  result = qword_100390490;
  if (!qword_100390490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100390490);
  }

  return result;
}

unint64_t sub_1000D1A94()
{
  result = qword_100390498[0];
  if (!qword_100390498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100390498);
  }

  return result;
}

uint64_t sub_1000D1AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudOptInData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D1B4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095820(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1000D1BB4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v44 = *(v1 + 16);
  LODWORD(v4) = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  if (qword_100390140 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    v8 = sub_10009597C(v7, qword_100390148);
    v9 = v5;

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v39 = v8;
    if (os_log_type_enabled(v10, v11))
    {
      v42 = a1;
      v37 = v6;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v46 = v14;
      *v12 = 136315906;
      *(v12 + 4) = sub_1000999E4(v44, v3, &v46);
      *(v12 + 12) = 1024;
      *(v12 + 14) = v4;
      *(v12 + 18) = 2112;
      *(v12 + 20) = v9;
      *v13 = v9;
      *(v12 + 28) = 2048;
      v4 = *((swift_isaMask & *v9) + 0x80);
      v15 = v9;
      v16 = v4();
      if (v16 >> 62)
      {
        LODWORD(v4) = v16;
        v3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v3 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 30) = v3;
      _os_log_impl(&_mh_execute_header, v10, v11, "store optin for %s to %{BOOL}d - %@ records: %ld", v12, 0x26u);
      sub_1000057C4(v13, &unk_100383290, &unk_1002D5BA0);

      sub_10009A9E8(v14);

      v6 = v37;
      v8 = v39;
      a1 = v42;
    }

    else
    {
    }

    v17 = [v9 error];
    if (v17)
    {
      v45 = v17;
      v18 = _convertErrorToNSError(_:)();
      [a1 setError:v18];

      return;
    }

    v19 = (*((swift_isaMask & *v9) + 0x80))();
    v5 = v19;
    if (!(v19 >> 62))
    {
      v43 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        break;
      }

      goto LABEL_13;
    }

    v43 = _CocoaArrayWrapper.endIndex.getter();
    if (!v43)
    {
      break;
    }

LABEL_13:
    v40 = v5 & 0xFFFFFFFFFFFFFF8;
    v41 = v5 & 0xC000000000000001;
    a1 = 4;
    *&v20 = 136315138;
    v35 = v20;
    v36 = v5;
    v38 = v6;
    while (1)
    {
      v21 = a1 - 4;
      if (!v41)
      {
        break;
      }

      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3 = a1 - 3;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_23;
      }

LABEL_19:
      v23 = v22;
      v24 = v8;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.info.getter();

      LODWORD(v44) = v26;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        v46 = v4;
        *v27 = v35;
        v28 = [v23 recordID];
        v29 = [v28 recordName];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = v30;
        v6 = v38;
        v34 = sub_1000999E4(v33, v32, &v46);

        *(v27 + 4) = v34;
        v5 = v36;
        _os_log_impl(&_mh_execute_header, v25, v26, "updating optIn record: %s", v27, 0xCu);
        sub_10009A9E8(v4);

        v8 = v39;
      }

      else
      {

        v8 = v24;
      }

      (*(*v6 + 368))(v23);

      ++a1;
      if (v3 == v43)
      {
        goto LABEL_28;
      }
    }

    if (v21 >= *(v40 + 16))
    {
      goto LABEL_24;
    }

    v22 = *(v5 + 8 * a1);
    v3 = a1 - 3;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_28:
}

void sub_1000D2114(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = [*(v1 + 16) error];
  if (v7)
  {
    v8 = v7;
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10009597C(v9, qword_100390148);

    v28 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_1000999E4(v3, v4, &v29);
      *(v12 + 12) = 2112;
      v15 = v28;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v16;
      *v13 = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "delete of intent failed %s - %@", v12, 0x16u);
      sub_1000057C4(v13, &unk_100383290, &unk_1002D5BA0);

      sub_10009A9E8(v14);
    }

    v17 = _convertErrorToNSError(_:)();
    [a1 setError:v17];
  }

  else
  {
    if (qword_100390140 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10009597C(v18, qword_100390148);

    v19 = a1;
    v20 = v5;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v23 = 136315650;
      *(v23 + 4) = sub_1000999E4(v3, v4, &v29);
      *(v23 + 12) = 2112;
      *(v23 + 14) = v19;
      *(v23 + 22) = 2112;
      *(v23 + 24) = v20;
      *v24 = v19;
      v24[1] = v20;
      v26 = v19;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "delete optin intent for in local database %s - %@ - %@", v23, 0x20u);
      sub_100095820(&unk_100383290, &unk_1002D5BA0);
      swift_arrayDestroy();

      sub_10009A9E8(v25);
    }

    [v6 deleteRecordIDWithCkrecordID:v20];
  }
}

uint64_t sub_1000D24F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D2538()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1000D2580(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  if (qword_100390140 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10009597C(v8, qword_100390148);

  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v23 = v6;
    v12 = a1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_1000999E4(v4, v3, &v25);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v5;
    *(v13 + 18) = 2112;
    *(v13 + 20) = v9;
    *v14 = v9;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "store optin intent for %s to %{BOOL}d - %@", v13, 0x1Cu);
    sub_1000057C4(v14, &unk_100383290, &unk_1002D5BA0);

    sub_10009A9E8(v15);

    a1 = v12;
    v6 = v23;
  }

  v17 = [v9 error];
  if (v17)
  {
    v18 = v17;
    v24 = _convertErrorToNSError(_:)();
    [a1 setError:?];

    goto LABEL_15;
  }

  v19 = (*((swift_isaMask & *v9) + 0x80))();
  if (v19 >> 62)
  {
    v21 = v19;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v21;
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_14:

    type metadata accessor for KTError();
    sub_1000D24F0(&qword_100384A78, type metadata accessor for KTError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v24 = _convertErrorToNSError(_:)();

    [a1 setError:v24];
    goto LABEL_15;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v20 = *(v19 + 32);
  }

  v24 = v20;

  (*(*v6 + 368))(v24);
LABEL_15:
}

void sub_1000D2954(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000D29A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000967DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D2A74()
{
  v0 = type metadata accessor for Logger();
  sub_100098130(v0, qword_100390628);
  sub_10009597C(v0, qword_100390628);
  return Logger.init(transparencyCategory:)();
}

uint64_t sub_1000D2AE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application);
  v2 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application + 8);

  return v1;
}

uint64_t sub_1000D2D64(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1000D2E48(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id PeerValidationOperation.__allocating_init(deps:application:uris:logClient:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1000D59A4(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v12;
}

id PeerValidationOperation.init(deps:application:uris:logClient:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1000D59A4(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v6;
}

void *sub_1000D2FB8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000D4D9C(0, v2, 0);
    v30 = _swiftEmptyArrayStorage;
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v31 = *(v1 + 36);
    v26 = v1 + 72;
    v27 = v2;
    v28 = v1 + 64;
    v29 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v31 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v10 = (*(v1 + 48) + 16 * v6);
      v11 = *(*(v1 + 56) + 8 * v6);
      v32 = *v10;
      v33 = v10[1];
      swift_bridgeObjectRetain_n();
      v12 = v11;
      v13._countAndFlagsBits = 58;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      [v12 succeed];
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15 = v30;
      v17 = v30[2];
      v16 = v30[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_1000D4D9C((v16 > 1), v17 + 1, 1);
        v15 = v30;
      }

      v15[2] = v17 + 1;
      v18 = &v15[2 * v17];
      v18[4] = v32;
      v18[5] = v33;
      v1 = v29;
      v8 = 1 << *(v29 + 32);
      if (v6 >= v8)
      {
        goto LABEL_25;
      }

      v4 = v28;
      v19 = *(v28 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v30 = v15;
      if (v31 != *(v29 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (v26 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_10000B2E8(v6, v31, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_10000B2E8(v6, v31, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v27)
      {
        return v30;
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

Swift::Void __swiftcall PeerValidationOperation.groupStart()()
{
  [v0 dependOnBeforeGroupFinished:*&v0[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp]];
  if (qword_100390620 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10009597C(v1, qword_100390628);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    (*((swift_isaMask & *v2) + 0x98))();
    sub_100095820(&qword_100384B18, &unk_1002D7460);
    sub_1000D29A4(&unk_100384B20, &qword_100384B18, &unk_1002D7460);
    sub_100008D30();
    v7 = Sequence<>.joined(separator:)();
    v9 = v8;

    v10 = sub_1000999E4(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting fetch of uri data for: %s", v5, 0xCu);
    sub_10009A9E8(v6);
  }

  else
  {
  }

  (*((swift_isaMask & *v2) + 0xE8))(v11);
}

void sub_1000D35DC()
{
  v55 = *((swift_isaMask & *v0) + 0x98);
  v2 = v55();
  v3 = v2 + 56;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;
  v56 = v2;

  v8 = 0;
  v9 = &selRef_started;
  while (v6)
  {
LABEL_10:
    v11 = (*(v56 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];
    v14 = *&v58[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_deps];

    v15 = [v14 dataStore];
    v57 = v13;
    v16 = String._bridgeToObjectiveC()();
    v17 = *&v58[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application];
    v18 = *&v58[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application + 8];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v15 verifierResultForPeer:v16 application:v19];

    if (qword_100390620 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    v1 = sub_10009597C(v21, qword_100390628);
    v22 = v20;

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v1 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v60[0] = v25;
      *v1 = 134218242;
      *(v1 + 4) = [v22 succeed];

      *(v1 + 6) = 2080;
      *(v1 + 14) = sub_1000999E4(v57, v12, v60);
      _os_log_impl(&_mh_execute_header, v23, v24, "Cached response %lu for uri %s", v1, 0x16u);
      sub_10009A9E8(v25);
      v9 = &selRef_started;
    }

    else
    {
    }

    if ([v22 v9[75]] != 2)
    {
      v26 = *((swift_isaMask & *v58) + 0xD8);
      v1 = v22;

      v27 = v26(v60);
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *v29;
      *v29 = 0x8000000000000000;
      sub_1000D516C(v1, v57, v12, isUniquelyReferenced_nonNull_native);

      *v29 = v59;
      v27(v60, 0);
      v9 = &selRef_started;
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  v33 = (*((swift_isaMask & *v58) + 0xC8))(v32);
  v34 = v33;
  v35 = v33 + 64;
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v33 + 64);
  v39 = (v36 + 63) >> 6;

  v40 = 0;
  while (v38)
  {
    v41 = v40;
LABEL_25:
    v42 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v43 = (*(v34 + 48) + ((v41 << 10) | (16 * v42)));
    v44 = *v43;
    v1 = v43[1];
    v45 = *((swift_isaMask & *v58) + 0xA8);

    v46 = v45(v60);
    sub_1000D5450(v44, v1);

    v46(v60, 0);
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {

      v1 = v58;
      v48 = *((v55)(v47) + 16);

      if (v48)
      {
        (*((swift_isaMask & *v58) + 0xF0))(v49);
        return;
      }

      if (qword_100390620 != -1)
      {
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    v38 = *(v35 + 8 * v41);
    ++v40;
    if (v38)
    {
      v40 = v41;
      goto LABEL_25;
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_30:
  v50 = type metadata accessor for Logger();
  sub_10009597C(v50, qword_100390628);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "got all entries from cache", v53, 2u);
  }

  v54 = [v1 operationQueue];
  [v54 addOperation:*&v1[OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp]];
}

void sub_1000D3C64()
{
  v1 = (*((swift_isaMask & *v0) + 0x98))();
  v2 = v0;
  sub_1000D5EC8(v1, v2);

  v3 = [*(v2 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_deps) idsOperations];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = *(v2 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application);
  v6 = *(v2 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application + 8);
  v7 = String._bridgeToObjectiveC()();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  aBlock[4] = sub_1000D619C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D45D4;
  aBlock[3] = &unk_1003209B0;
  v9 = _Block_copy(aBlock);
  v10 = v2;

  [v3 fetchPeerVerificationInfos:isa application:v7 completionBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

void sub_1000D3E10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_100390620 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10009597C(v17, qword_100390628);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "IDS failed with %@", v20, 0xCu);
      sub_1000A4AD8(v21);
    }

    v23 = _convertErrorToNSError(_:)();
    [a3 setError:v23];

    v24 = [a3 operationQueue];
    [v24 addOperation:*(a3 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp)];
  }

  else
  {
    if (a1)
    {
      v50 = v14;
      v25 = *((swift_isaMask & *a3) + 0xB8);

      v27 = v25(v26);
      v28 = *((*((swift_isaMask & *a3) + 0xB0))(v27) + 16);

      v30 = *((*((swift_isaMask & *a3) + 0x98))(v29) + 16);

      if (v28 == v30)
      {
        v49[1] = *(a3 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_peerValidateQueue);
        v31 = swift_allocObject();
        *(v31 + 16) = a3;
        aBlock[4] = sub_1000D68A4;
        aBlock[5] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000A31E0;
        aBlock[3] = &unk_100320AA0;
        v32 = _Block_copy(aBlock);
        v33 = a3;
        static DispatchQoS.unspecified.getter();
        v51 = _swiftEmptyArrayStorage;
        sub_1000D68F8(&qword_100384BD0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100095820(&qword_100384BD8, &qword_1002D74B8);
        sub_1000D29A4(&unk_100384BE0, &qword_100384BD8, &qword_1002D74B8);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v32);
        (*(v7 + 8))(v10, v6);
        (*(v12 + 8))(v16, v50);

        return;
      }

      if (qword_100390620 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10009597C(v39, qword_100390628);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "IDS didn't return all answers in peer query", v42, 2u);
      }

      v43 = objc_opt_self();
      v44 = kTransparencyErrorInternal;
      v45 = String._bridgeToObjectiveC()();
      v46 = [v43 errorWithDomain:v44 code:-353 underlyingError:0 userinfo:0 description:v45];

      v47 = _convertErrorToNSError(_:)();
      [a3 setError:v47];

      v38 = [a3 operationQueue];
    }

    else
    {
      if (qword_100390620 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10009597C(v34, qword_100390628);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "No results from IDS", v37, 2u);
      }

      v38 = [a3 operationQueue];
    }

    v50 = v38;
    [v50 addOperation:*(a3 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_completeOp)];
    v48 = v50;
  }
}

uint64_t sub_1000D45D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_10009FDA0(0, &qword_100384B30, KTVerificationInfo_ptr);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1000D4688()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_deps) contextStore];
  v2 = (*((swift_isaMask & *v0) + 0x98))();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1000D4D18(*(v2 + 16), 0);
  v6 = sub_1000D5750(v15, v5 + 4, v4, v3);
  sub_1000D61BC();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application);
  v9 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application + 8);
  v10 = String._bridgeToObjectiveC()();
  v11 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_logClient);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v15[4] = sub_1000D61C4;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100099654;
  v15[3] = &unk_100320A00;
  v13 = _Block_copy(v15);
  v14 = v0;

  [v1 queryForUris:isa application:v10 logClient:v11 userInitiated:1 cachedYoungerThan:0 completionHandler:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t sub_1000D4888()
{
  v1 = (*((swift_isaMask & *v0) + 0xC8))();
  sub_1000D2FB8(v1);

  sub_100095820(&unk_100383FD0, &qword_1002D6BC0);
  sub_1000D29A4(&qword_1003851A0, &unk_100383FD0, &qword_1002D6BC0);
  v2 = BidirectionalCollection<>.joined(separator:)();

  return v2;
}

void sub_1000D497C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_deps) contextStore];
  (*((swift_isaMask & *v0) + 0xB0))();
  sub_10009FDA0(0, &qword_100384B30, KTVerificationInfo_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application);
  v4 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_application + 8);
  v5 = String._bridgeToObjectiveC()();
  v6 = *(v0 + OBJC_IVAR____TtC13transparencyd23PeerValidationOperation_logClient);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  v10[4] = sub_1000D63D0;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000D4B40;
  v10[3] = &unk_100320A50;
  v8 = _Block_copy(v10);
  v9 = v0;

  [v1 validatePeers:isa application:v5 fetchNow:1 logClient:v6 completionBlock:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t sub_1000D4B40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10009FDA0(0, &qword_100384BC0, KTVerifierResult_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

id PeerValidationOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeerValidationOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000D4D18(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100095820(&qword_1003844C0, &qword_1002D6E08);
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

char *sub_1000D4D9C(char *a1, int64_t a2, char a3)
{
  result = sub_1000D4DBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D4DBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095820(&qword_1003844C0, &qword_1002D6E08);
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