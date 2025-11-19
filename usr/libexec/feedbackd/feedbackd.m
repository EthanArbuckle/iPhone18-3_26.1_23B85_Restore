uint64_t sub_100001950()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100082588);
  sub_100002D00(v0, qword_100082588);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t CFBBiomeReader.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_100001A64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100004F70(&qword_100082808, &qword_100068380);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29[-1] - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_100006F70();
    swift_allocError();
    v24 = 0;
    goto LABEL_16;
  }

  v14 = v11;
  v29[0] = 0x6D6165727473;
  v29[1] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v15 = sub_10005BC6C(v30), (v16 & 1) == 0))
  {
    sub_100006FC4(v30);
    goto LABEL_14;
  }

  sub_100007018(*(a1 + 56) + 32 * v15, v31);
  sub_100006FC4(v30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    sub_100006F70();
    swift_allocError();
    v24 = 2;
LABEL_16:
    *v23 = v24;
    return swift_willThrow();
  }

  v17 = v29[1];
  v32 = v29[0];
  strcpy(v29, "commonMetadata");
  HIBYTE(v29[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v18 = sub_10005BC6C(v30), (v19 & 1) == 0))
  {

    sub_100006FC4(v30);
LABEL_18:
    sub_100006F70();
    swift_allocError();
    v24 = 8;
    goto LABEL_16;
  }

  sub_100007018(*(a1 + 56) + 32 * v18, v31);
  sub_100006FC4(v30);
  sub_100004F70(&qword_100082818, &qword_100068388);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v20 = v29[0];
  strcpy(v29, "evaluationUuid");
  HIBYTE(v29[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v21 = sub_10005BC6C(v30), (v22 & 1) == 0))
  {

    sub_100006FC4(v30);
    goto LABEL_21;
  }

  sub_100007018(*(v20 + 56) + 32 * v21, v31);
  sub_100006FC4(v30);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  UUID.init(uuidString:)();

  if ((*(v9 + 48))(v7, 1, v14) == 1)
  {

    sub_1000071C8(v7, &qword_100082808, &qword_100068380);
LABEL_21:
    sub_100006F70();
    swift_allocError();
    v24 = 4;
    goto LABEL_16;
  }

  v26 = *(v9 + 32);
  v26(v13, v7, v14);
  v27 = type metadata accessor for CFBBiomeReader.Metadata();
  result = (v26)(a2 + *(v27 + 20), v13, v14);
  *a2 = v32;
  a2[1] = v17;
  *(a2 + *(v27 + 24)) = v20;
  return result;
}

uint64_t sub_100001EF4(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v51 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v51 - v13;
  __chkstk_darwin(v12);
  v57 = &v51 - v15;
  v16 = type metadata accessor for CFBBiomeReader.Metadata();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {

    sub_100001A64(v20, v19);
    if (!v1)
    {
      v22 = *(v16 + 20);
      v54 = v4;
      v23 = *(v4 + 16);
      v56 = v3;
      v52 = v23;
      v53 = v4 + 16;
      (v23)(v57, v19 + v22);
      v55 = v19;
      v24 = *v19;
      v25 = v19[1];
      v26 = v24 == 0x7478655474786574 && v25 == 0xE800000000000000;
      if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        objc_allocWithZone(BMFeedbackTextToTextEvaluationData);
        v27 = sub_100003C54();
        type metadata accessor for FBKSDonation();
        v28 = v57;
        v52(v14, v57, v56);
        v29 = sub_10002E92C(v27, v14);
        v30 = v55;
      }

      else
      {
        v31 = v24 == 0x67616D4974786574 && v25 == 0xE900000000000065;
        if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v30 = v55;
          v32 = *(v55 + *(v16 + 24));
          objc_allocWithZone(BMEvaluationCommonMetadata);

          v33 = sub_100003C54();
          v34 = v56;
          v35 = v33;
          if (!sub_100005430(a1))
          {
            sub_1000159A0(_swiftEmptyArrayStorage);
          }

          objc_allocWithZone(BMTextContent);
          v40 = sub_100003C54();
          v43 = sub_1000055E0(a1);

          if (!v43)
          {
            sub_1000159A0(_swiftEmptyArrayStorage);
          }

          v28 = v57;
          objc_allocWithZone(BMImageContent);
          v44 = sub_100003C54();
          v45 = [objc_allocWithZone(BMFeedbackTextToImageEvaluationData) initWithCommonMetadata:v35 originalContent:v40 generatedContent:v44];

          type metadata accessor for FBKSDonation();
          v52(v11, v28, v34);
          v29 = sub_10002E96C(v45, v11);
        }

        else
        {
          v37 = v24 == 0x67616D4974786574 && v25 == 0xEE006567616D4965;
          v38 = v56;
          if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

            sub_100006F70();
            swift_allocError();
            *v42 = 3;
            swift_willThrow();
            (*(v54 + 8))(v57, v38);
            sub_10000716C(v55);
            return v16;
          }

          v30 = v55;
          v39 = *(v55 + *(v16 + 24));
          objc_allocWithZone(BMEvaluationCommonMetadata);

          v41 = sub_100003C54();
          if (!sub_1000055E0(a1))
          {
            sub_1000159A0(_swiftEmptyArrayStorage);
          }

          objc_allocWithZone(BMTextImageContent);
          v46 = sub_100003C54();
          v47 = sub_1000055E0(a1);

          if (!v47)
          {
            sub_1000159A0(_swiftEmptyArrayStorage);
          }

          v28 = v57;
          objc_allocWithZone(BMImageContent);
          v48 = sub_100003C54();
          v49 = v38;
          v50 = [objc_allocWithZone(BMFeedbackTextImageToImageEvaluationData) initWithCommonMetadata:v41 originalContent:v46 generatedContent:v48];

          type metadata accessor for FBKSDonation();
          v52(v8, v28, v49);
          v29 = sub_10002F178(v50, v8);
        }
      }

      v16 = v29;
      (*(v54 + 8))(v28, v56);
      sub_10000716C(v30);
      return v16;
    }
  }

  else
  {
    sub_100006F70();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  return v16;
}

uint64_t CFBBiomeReader.fetchDonation(donationID:database:)(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v2 = UUID.uuidString.getter();
  v4 = v3;
  if (qword_100082580 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002D00(v5, qword_100082588);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000049B8(v2, v4, v44);
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching donation with donationID: %s", v8, 0xCu);
    sub_100005ED8(v9);
  }

  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(877);
  v10._countAndFlagsBits = 0xD000000000000024;
  v10._object = 0x8000000100069FC0;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x7478655474786574;
  v11._object = 0xE800000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD0000000000000D6;
  v12._object = 0x8000000100069FF0;
  String.append(_:)(v12);
  v13._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v13);

  v14._object = 0x800000010006A0D0;
  v14._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v2;
  v15._object = v4;
  String.append(_:)(v15);
  v16._object = 0x800000010006A100;
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x67616D4974786574;
  v17._object = 0xE900000000000065;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD0000000000000D6;
  v18._object = 0x8000000100069FF0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v19);

  v20._object = 0x800000010006A0D0;
  v20._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v2;
  v21._object = v4;
  String.append(_:)(v21);
  v22._object = 0x800000010006A100;
  v22._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v22);
  v23._object = 0xEE006567616D4965;
  v23._countAndFlagsBits = 0x67616D4974786574;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0xD0000000000000D6;
  v24._object = 0x8000000100069FF0;
  String.append(_:)(v24);
  v25._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v25);

  v26._object = 0x800000010006A0D0;
  v26._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v2;
  v27._object = v4;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x494D494C20290A22;
  v28._object = 0xEB00000000312054;
  String.append(_:)(v28);
  v29 = v45;
  v30 = BMSQLDatabase.execute(query:)();

  if ([v30 error])
  {
    goto LABEL_6;
  }

  if (![v30 next])
  {

    return 0;
  }

  v31 = [v30 row];
  if (v31)
  {
    v32 = v31;
    v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_100001EF4(v33);
  if (v43)
  {

    swift_errorRetain();
    v35 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v29))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v35, v29, "Error decoding donation: %@", v36, 0xCu);
      sub_1000071C8(v37, &qword_100082708, &qword_100068320);
    }

LABEL_6:
    swift_willThrow();

    return v29;
  }

  v29 = v34;

  v39 = [objc_allocWithZone(BMSQLDatabase) init];
  sub_100005A2C();
  v41 = v40;

  if (v41)
  {

    dispatch thunk of FBKSInteraction.firstEvaluation.setter();
  }

  return v29;
}

uint64_t sub_100002D00(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t CFBBiomeReader.fetchDonations(count:fromLatest:excludingEvaluationIDs:database:)(int a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 24) = a3;
  *(v5 + 80) = a2;
  *(v5 + 76) = a1;
  v6 = type metadata accessor for FBKSInteraction.FeatureDomain();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100002E04, v4, 0);
}

uint64_t sub_100002E04()
{
  v93 = v0;
  v1 = *(v0 + 24);
  if (*(v0 + 80))
  {
    v2 = 1129530692;
  }

  else
  {
    v2 = 4412225;
  }

  v3 = 0xE300000000000000;
  if (*(v0 + 80))
  {
    v3 = 0xE400000000000000;
  }

  v90 = v3;
  if (v1)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      sub_100004FD8(0, v4, 0);
      v5 = (v1 + 40);
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;
        v91 = 34;
        v92 = 0xE100000000000000;

        v8._countAndFlagsBits = v6;
        v8._object = v7;
        String.append(_:)(v8);
        v9._countAndFlagsBits = 34;
        v9._object = 0xE100000000000000;
        String.append(_:)(v9);

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_100004FD8((v10 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = (v11 + 1);
        v12 = &_swiftEmptyArrayStorage[2 * v11];
        v12[4] = 34;
        v12[5] = 0xE100000000000000;
        v5 += 2;
        --v4;
      }

      while (v4);
      v0 = v86;
      v2 = v88;
    }

    *(v0 + 16) = _swiftEmptyArrayStorage;
    sub_100004F70(&qword_100082710, &qword_100068330);
    sub_100005F24();
    v1 = BidirectionalCollection<>.joined(separator:)();
    v14 = v13;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  if (qword_100082580 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100002D00(v15, qword_100082588);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1000049B8(0xD000000000000041, 0x800000010006A7F0, &v91);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1000049B8(v1, v14, &v91);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s - Will filter out ids: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v89 = *(v0 + 32);
  v85 = *(v0 + 76);
  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(2283);
  v19._countAndFlagsBits = 0xD00000000000015CLL;
  v19._object = 0x800000010006A120;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v2;
  v20._object = v90;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD000000000000220;
  v21._object = 0x800000010006A280;
  String.append(_:)(v21);
  v22._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v22);

  v23 = v0;
  v24._countAndFlagsBits = 0xD000000000000081;
  v24._object = 0x800000010006A4B0;
  String.append(_:)(v24);
  v25._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0xD000000000000081;
  v26._object = 0x800000010006A4B0;
  String.append(_:)(v26);
  v27._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0xD00000000000004ALL;
  v28._object = 0x800000010006A540;
  String.append(_:)(v28);
  v29._countAndFlagsBits = v1;
  v29._object = v14;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000083;
  v30._object = 0x800000010006A590;
  String.append(_:)(v30);
  v31._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0xD00000000000004CLL;
  v32._object = 0x800000010006A620;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v2;
  v33._object = v90;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x4D494C202020200ALL;
  v34._object = 0xEB00000000205449;
  String.append(_:)(v34);
  *(v0 + 72) = v85;
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0xD000000000000036;
  v36._object = 0x800000010006A670;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x7478655474786574;
  v37._object = 0xE800000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD0000000000000BELL;
  v38._object = 0x800000010006A6B0;
  String.append(_:)(v38);
  v39._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v39);

  v40._countAndFlagsBits = 0xD00000000000004BLL;
  v40._object = 0x800000010006A770;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0x67616D4974786574;
  v41._object = 0xE900000000000065;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD0000000000000BELL;
  v42._object = 0x800000010006A6B0;
  String.append(_:)(v42);
  v43._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0xD00000000000004BLL;
  v44._object = 0x800000010006A770;
  String.append(_:)(v44);
  v45._object = 0xEE006567616D4965;
  v45._countAndFlagsBits = 0x67616D4974786574;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD0000000000000BELL;
  v46._object = 0x800000010006A6B0;
  String.append(_:)(v46);
  v47._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0xD000000000000027;
  v48._object = 0x800000010006A7C0;
  String.append(_:)(v48);
  v49 = BMSQLDatabase.execute(query:)();

  if ([v49 error])
  {
    v50 = *(v0 + 64);
    swift_willThrow();

    v51 = *(v0 + 8);

    return v51();
  }

  v87 = v0;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v91 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_1000049B8(0xD000000000000041, 0x800000010006A7F0, &v91);
    _os_log_impl(&_mh_execute_header, v53, v54, "%s - No error occurred", v55, 0xCu);
    sub_100005ED8(v56);
  }

  v57 = &off_100081000;
  if ([v49 next])
  {
    v84 = (*(v23 + 56) + 8);
    v58 = &off_100081000;
    do
    {
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v91 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_1000049B8(0xD000000000000041, 0x800000010006A7F0, &v91);
        _os_log_impl(&_mh_execute_header, v59, v60, "%s - Will parse row", v61, 0xCu);
        sub_100005ED8(v62);
      }

      v63 = [v49 v58[253]];
      if (v63)
      {
        v64 = v63;
        v65 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v65 = 0;
      }

      v66 = sub_100001EF4(v65);
      v67 = v57;
      v68 = v87[8];
      v69 = v87[6];
      v70 = v66;

      v71 = v70;
      dispatch thunk of FBKSInteraction.featureDomain.getter();

      (*v84)(v68, v69);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v91 = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_1000049B8(0xD000000000000041, 0x800000010006A7F0, &v91);
        _os_log_impl(&_mh_execute_header, v72, v73, "%s - FD is allowed, appending", v74, 0xCu);
        sub_100005ED8(v75);
      }

      v57 = v67;
      v76 = v71;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v77 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v57 = v67;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v58 = &off_100081000;
    }

    while (([v49 v57[252]] & 1) != 0);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_39;
    }

LABEL_41:

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v91 = v81;
      *v80 = 136315138;
      *(v80 + 4) = sub_1000049B8(0xD000000000000041, 0x800000010006A7F0, &v91);

      _os_log_impl(&_mh_execute_header, v78, v79, "%s - query returned no results", v80, 0xCu);
      sub_100005ED8(v81);
    }

    else
    {
    }

    goto LABEL_44;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

LABEL_39:

LABEL_44:
  v82 = v87[8];

  v83 = v87[1];

  return v83(_swiftEmptyArrayStorage);
}

Swift::Int sub_100003B54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100003B9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t CFBBiomeReader.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100003C54()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithJSONDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

BOOL sub_100003D50(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100003DB0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100003DFC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100003E54()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100003EC8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003F44(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003FC8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100004020(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_10000409C(uint64_t a1)
{
  v2 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004108(uint64_t a1)
{
  v2 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100004174(void *a1, uint64_t a2)
{
  v4 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000042A4()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100004304@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004320(uint64_t a1)
{
  v2 = sub_100007970(&qword_1000829D8, type metadata accessor for FileAttributeKey);
  v3 = sub_100007970(&qword_1000829E0, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000043E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100004428@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100004454(uint64_t a1)
{
  v2 = sub_100007970(&qword_1000829E8, type metadata accessor for URLResourceKey);
  v3 = sub_100007970(&unk_1000829F0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004510(uint64_t a1)
{
  v2 = sub_100007970(&qword_1000829A8, type metadata accessor for BGSystemTaskSchedulerError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000457C(uint64_t a1)
{
  v2 = sub_100007970(&qword_1000829A8, type metadata accessor for BGSystemTaskSchedulerError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000045E8(uint64_t a1)
{
  v2 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007970(&qword_100083BE0, type metadata accessor for BGSystemTaskSchedulerError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000046F0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100004730()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004788()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100004800(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100004888(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000048D4(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10000495C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000049B8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000049B8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004A84(v11, 0, 0, 1, a1, a2);
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
    sub_100007018(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005ED8(v11);
  return v7;
}

unint64_t sub_100004A84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004B90(a5, a6);
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

char *sub_100004B90(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004BDC(a1, a2);
  sub_100004D0C(&off_10007DC08);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004BDC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100010920(v5, 0);
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
        v7 = sub_100010920(v10, 0);
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

uint64_t sub_100004D0C(uint64_t result)
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

  result = sub_100004DF8(result, v12, 1, v3);
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

char *sub_100004DF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004F70(&qword_100082840, &qword_1000683B0);
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

_BYTE **sub_100004EEC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100004EFC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100004F70(uint64_t *a1, uint64_t *a2)
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

size_t sub_100004FB8(size_t a1, int64_t a2, char a3)
{
  result = sub_100005018(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004FD8(char *a1, int64_t a2, char a3)
{
  result = sub_1000051F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100004FF8(id *a1, int64_t a2, char a3)
{
  result = sub_1000052FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100005018(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004F70(&qword_100082858, &qword_1000683B8);
  v10 = *(type metadata accessor for FBKSInteraction.AnnotatedContent() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(type metadata accessor for FBKSInteraction.AnnotatedContent() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1000051F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004F70(&qword_100082838, &qword_1000683A8);
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

id *sub_1000052FC(id *result, int64_t a2, char a3, id *a4)
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
    sub_100004F70(&qword_100082820, &unk_100068390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
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
    sub_100004F70(&qword_100082828, &qword_100068ED0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100005430(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v2 = sub_10005BC6C(v9), (v3 & 1) == 0))
  {
    sub_100006FC4(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_100007018(*(a1 + 56) + 32 * v2, &v10);
  sub_100006FC4(v9);
  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_1000071C8(&v10, &qword_100082860, &unk_1000683C0);
    goto LABEL_10;
  }

  sub_100004F70(&qword_100082818, &qword_100068388);
  if (swift_dynamicCast())
  {
    return v9[0];
  }

LABEL_10:
  if (qword_100082580 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002D00(v5, qword_100082588);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "dictionary is nil or not the right type, will skip", v8, 2u);
  }

  return 0;
}

uint64_t sub_1000055E0(uint64_t a1)
{
  result = sub_100005430(a1);
  if (result)
  {
    v2 = result;
    v14 = result;
    *&v10[0] = 0x7461446567616D69;
    *(&v10[0] + 1) = 0xE900000000000061;
    AnyHashable.init<A>(_:)();
    if (*(v2 + 16) && (v3 = sub_10005BC6C(v11), (v4 & 1) != 0))
    {
      sub_100007018(*(v2 + 56) + 32 * v3, &v12);
      sub_100006FC4(v11);
      if (swift_dynamicCast())
      {
        *&v12 = 0x7461446567616D69;
        *(&v12 + 1) = 0xE900000000000061;
        AnyHashable.init<A>(_:)();
        v5 = objc_allocWithZone(NSData);
        v6 = String._bridgeToObjectiveC()();

        v7 = [v5 initWithBase64EncodedString:v6 options:0];

        if (v7)
        {
          v13 = sub_100007228();
          *&v12 = v7;
          sub_100007274(&v12, v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_10005E0B0(v10, v11, isUniquelyReferenced_nonNull_native);
          sub_100006FC4(v11);
          return v2;
        }

        else
        {
          sub_10005C570(v11, v10);
          sub_1000071C8(v10, &qword_100082860, &unk_1000683C0);
          sub_100006FC4(v11);
          return v14;
        }
      }
    }

    else
    {
      sub_100006FC4(v11);
    }

    sub_100006F70();
    swift_allocError();
    *v9 = 7;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1000057EC(uint64_t a1)
{
  if (!a1)
  {
    sub_100007118();
    swift_allocError();
    *v10 = 0;
    return swift_willThrow();
  }

  strcpy(v12, "evaluationUuid");
  HIBYTE(v12[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v2 = sub_10005BC6C(v13), (v3 & 1) == 0))
  {
    sub_100006FC4(v13);
    goto LABEL_10;
  }

  sub_100007018(*(a1 + 56) + 32 * v2, v14);
  sub_100006FC4(v13);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_100007118();
    swift_allocError();
    *v9 = 1;
    return swift_willThrow();
  }

  v5 = v12[0];
  v4 = v12[1];
  strcpy(v12, "userResponse");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v6 = sub_10005BC6C(v13), (v7 & 1) != 0))
  {
    sub_100007018(*(a1 + 56) + 32 * v6, v14);
    sub_100006FC4(v13);
    if (swift_dynamicCast())
    {
      type metadata accessor for FBKSEvaluation();
      return sub_10001BA5C(v5, v4, v12[0]);
    }
  }

  else
  {

    sub_100006FC4(v13);
  }

  sub_100007118();
  swift_allocError();
  *v11 = 2;
  return swift_willThrow();
}

void sub_100005A2C()
{
  _StringGuts.grow(_:)(57);
  v1._countAndFlagsBits = 0x2A205443454C4553;
  v1._object = 0xEF22204D4F524620;
  String.append(_:)(v1);
  v2._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v2);

  v3._object = 0x800000010006ADA0;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v3);
  v31 = UUID.uuidString.getter();
  v32 = v4;
  v30 = sub_1000070C4();
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x2054494D494C2022;
  v9._object = 0xE900000000000031;
  String.append(_:)(v9);
  v10 = BMSQLDatabase.execute(query:)();

  v11 = [v10 error];
  if (v11)
  {
    v12 = v11;
    if (qword_100082580 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100002D00(v13, qword_100082588);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v14;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error fetching evaluation: %@", v17, 0xCu);
      sub_1000071C8(v18, &qword_100082708, &qword_100068320);

      return;
    }

    goto LABEL_10;
  }

  if (![v10 next])
  {
LABEL_10:

    return;
  }

  v21 = [v10 row];
  if (v21)
  {
    v22 = v21;
    v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v23 = 0;
  }

  sub_1000057EC(v23);
  if (v0)
  {

    if (qword_100082580 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100002D00(v24, qword_100082588);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error decoding evaluation: %@", v27, 0xCu);
      sub_1000071C8(v28, &qword_100082708, &qword_100068320);
    }

    swift_willThrow();
  }

  else
  {
  }
}

uint64_t sub_100005ED8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100005F24()
{
  result = qword_100082718;
  if (!qword_100082718)
  {
    sub_100005F88(&qword_100082710, &qword_100068330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082718);
  }

  return result;
}

uint64_t sub_100005F88(uint64_t *a1, uint64_t *a2)
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

void *sub_100005FD0(int a1, char a2, uint64_t a3, void *a4)
{
  v5 = v4;
  LODWORD(v123) = a1;
  v9 = (*(*(sub_100004F70(&qword_100082808, &qword_100068380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v118 = &v110 - v10;
  v119 = type metadata accessor for UUID();
  v117 = *(v119 - 8);
  v11 = *(v117 + 64);
  v12 = (__chkstk_darwin)();
  v116 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = &v110 - v14;
  if (a2)
  {
    v15 = 1129530692;
  }

  else
  {
    v15 = 4412225;
  }

  v16 = 0xE300000000000000;
  if (a2)
  {
    v16 = 0xE400000000000000;
  }

  v121 = v15;
  *&v122 = v16;
  v124 = a4;
  if (a3)
  {
    v17 = *(a3 + 16);
    v18 = &_swiftEmptyArrayStorage;
    if (v17)
    {
      v130 = v4;
      v129[0] = &_swiftEmptyArrayStorage;
      sub_100004FD8(0, v17, 0);
      v18 = v129[0];
      v19 = (a3 + 40);
      do
      {
        v21 = *(v19 - 1);
        v20 = *v19;
        v127 = 34;
        v128 = 0xE100000000000000;

        v22._countAndFlagsBits = v21;
        v22._object = v20;
        String.append(_:)(v22);
        v23._countAndFlagsBits = 34;
        v23._object = 0xE100000000000000;
        String.append(_:)(v23);

        v24 = v127;
        v25 = v128;
        v129[0] = v18;
        v27 = v18[2];
        v26 = v18[3];
        if (v27 >= v26 >> 1)
        {
          sub_100004FD8((v26 > 1), v27 + 1, 1);
          v18 = v129[0];
        }

        v18[2] = v27 + 1;
        v28 = &v18[2 * v27];
        *(v28 + 4) = v24;
        *(v28 + 5) = v25;
        v19 += 2;
        --v17;
      }

      while (v17);
      v5 = v130;
    }

    v127 = v18;
    sub_100004F70(&qword_100082710, &qword_100068330);
    sub_100005F24();
    a3 = BidirectionalCollection<>.joined(separator:)();
    v30 = v29;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  if (qword_100082580 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_100002D00(v31, qword_100082588);

  v125 = v32;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *v35 = 136315394;
    *(v35 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006AD50, &v127);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_1000049B8(a3, v30, &v127);
    _os_log_impl(&_mh_execute_header, v33, v34, "%s - Will filter out ids: %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  v127 = 0;
  v128 = 0xE000000000000000;
  _StringGuts.grow(_:)(1341);
  v36._countAndFlagsBits = 0xD00000000000011ALL;
  v36._object = 0x800000010006A860;
  String.append(_:)(v36);
  v38 = v121;
  v37 = v122;
  v39._countAndFlagsBits = v121;
  v39._object = v122;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0xD0000000000001ECLL;
  v40._object = 0x800000010006A980;
  String.append(_:)(v40);
  v41._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0xD000000000000071;
  v42._object = 0x800000010006AB70;
  String.append(_:)(v42);
  v43._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v43);

  v44._countAndFlagsBits = 0xD000000000000071;
  v44._object = 0x800000010006AB70;
  String.append(_:)(v44);
  v45._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0xD000000000000055;
  v46._object = 0x800000010006ABF0;
  String.append(_:)(v46);
  v129[0] = 27;
  v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0xD000000000000038;
  v48._object = 0x800000010006AC50;
  String.append(_:)(v48);
  v49._countAndFlagsBits = a3;
  v49._object = v30;
  String.append(_:)(v49);

  v50._countAndFlagsBits = 0xD000000000000073;
  v50._object = 0x800000010006AC90;
  String.append(_:)(v50);
  v51._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v51);

  v52._countAndFlagsBits = 0xD00000000000003CLL;
  v52._object = 0x800000010006AD10;
  String.append(_:)(v52);
  v53._countAndFlagsBits = v38;
  v53._object = v37;
  String.append(_:)(v53);

  v54._countAndFlagsBits = 0x2054494D494C0ALL;
  v54._object = 0xE700000000000000;
  String.append(_:)(v54);
  LODWORD(v129[0]) = v123;
  v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v55);

  v56 = BMSQLDatabase.execute(query:)();

  if ([v56 error])
  {
    swift_willThrow();

    return v30;
  }

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v127 = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006AD50, &v127);
    _os_log_impl(&_mh_execute_header, v57, v58, "%s - No error occurred", v59, 0xCu);
    sub_100005ED8(v60);
  }

  if (![v56 next])
  {
    v30 = &_swiftEmptyArrayStorage;
    goto LABEL_54;
  }

  v123 = "ORDER BY rn, eventTimestamp ";
  v114 = (v117 + 48);
  v112 = (v117 + 32);
  v111 = (v117 + 16);
  v30 = &_swiftEmptyArrayStorage;
  v110 = v117 + 8;
  *&v61 = 136315394;
  v122 = v61;
  *&v61 = 138412290;
  v120 = v61;
  v124 = v56;
  while (2)
  {
    v113 = v30;
    while (1)
    {
      v62 = v56;
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();

      v65 = os_log_type_enabled(v63, v64);
      v130 = v5;
      if (v65)
      {
        v66 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        *v66 = v122;
        *(v66 + 4) = sub_1000049B8(0xD000000000000043, v123 | 0x8000000000000000, &v127);
        *(v66 + 12) = 2080;
        v67 = v62;
        v68 = [v67 description];
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = sub_1000049B8(v69, v71, &v127);
        v56 = v124;

        *(v66 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v63, v64, "%s - Will parse results %s", v66, 0x16u);
        swift_arrayDestroy();
      }

      v73 = [v62 row];
      if (v73)
      {
        break;
      }

      v83 = 0;
LABEL_45:
      sub_100006F70();
      swift_allocError();
      *v90 = v83;
      swift_willThrow();
      swift_errorRetain();
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *v93 = v120;
        swift_errorRetain();
        v95 = _swift_stdlib_bridgeErrorToNSError();
        *(v93 + 4) = v95;
        *v94 = v95;
        _os_log_impl(&_mh_execute_header, v91, v92, "Error parsing donation from row: %@", v93, 0xCu);
        sub_1000071C8(v94, &qword_100082708, &qword_100068320);
      }

      else
      {
      }

      v5 = 0;
      if (([v62 next] & 1) == 0)
      {
        v30 = v113;
        if (v113[2])
        {
          goto LABEL_61;
        }

        goto LABEL_57;
      }
    }

    v74 = v73;
    v75 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v76 = v62;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v79 = v122;
      *(v79 + 4) = sub_1000049B8(0xD000000000000043, v123 | 0x8000000000000000, &v127);
      *(v79 + 12) = 2080;
      v121 = v76;
      v80 = [v76 row];
      if (v80)
      {
        v81 = v80;
        v82 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v82 = 0;
      }

      v129[0] = v82;
      sub_100004F70(&qword_100082830, &qword_1000683A0);
      v84 = String.init<A>(describing:)();
      v86 = sub_1000049B8(v84, v85, &v127);

      *(v79 + 14) = v86;
      _os_log_impl(&_mh_execute_header, v77, v78, "%s - Will parse row %s", v79, 0x16u);
      swift_arrayDestroy();

      v56 = v124;
      v76 = v121;
    }

    else
    {
    }

    strcpy(v126, "evaluationUuid");
    v126[15] = -18;
    AnyHashable.init<A>(_:)();
    if (!*(v75 + 16) || (v87 = sub_10005BC6C(&v127), (v88 & 1) == 0))
    {

      sub_100006FC4(&v127);
LABEL_44:
      v83 = 4;
      goto LABEL_45;
    }

    sub_100007018(*(v75 + 56) + 32 * v87, v129);
    sub_100006FC4(&v127);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_44;
    }

    v89 = v118;
    UUID.init(uuidString:)();

    if ((*v114)(v89, 1, v119) == 1)
    {
      sub_1000071C8(v89, &qword_100082808, &qword_100068380);
      v83 = 5;
      goto LABEL_45;
    }

    v96 = *v112;
    v97 = v115;
    v98 = v89;
    v99 = v119;
    (*v112)(v115, v98, v119);
    (*v111)(v116, v97, v99);
    v30 = v113;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1000659C8(0, v30[2] + 1, 1, v30);
    }

    v101 = v30[2];
    v100 = v30[3];
    if (v101 >= v100 >> 1)
    {
      v30 = sub_1000659C8(v100 > 1, v101 + 1, 1, v30);
    }

    v102 = v117;
    v103 = v119;
    (*(v117 + 8))(v115, v119);
    v30[2] = v101 + 1;
    v96(v30 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v101, v116, v103);
    v104 = [v76 next];
    v5 = v130;
    if (v104)
    {
      continue;
    }

    break;
  }

LABEL_54:
  if (!v30[2])
  {
LABEL_57:

    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v127 = v108;
      *v107 = 136315138;
      *(v107 + 4) = sub_1000049B8(0xD000000000000043, 0x800000010006AD50, &v127);

      _os_log_impl(&_mh_execute_header, v105, v106, "%s - query returned no results", v107, 0xCu);
      sub_100005ED8(v108);
    }

    else
    {
    }
  }

LABEL_61:

  return v30;
}

unint64_t sub_100006F70()
{
  result = qword_100082810;
  if (!qword_100082810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082810);
  }

  return result;
}

uint64_t sub_100007018(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for CFBBiomeReader.Metadata()
{
  result = qword_1000828C8;
  if (!qword_1000828C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000070C4()
{
  result = qword_100082848;
  if (!qword_100082848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082848);
  }

  return result;
}

unint64_t sub_100007118()
{
  result = qword_100082850;
  if (!qword_100082850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082850);
  }

  return result;
}

uint64_t sub_10000716C(uint64_t a1)
{
  v2 = type metadata accessor for CFBBiomeReader.Metadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000071C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004F70(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100007228()
{
  result = qword_100082868;
  if (!qword_100082868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100082868);
  }

  return result;
}

_OWORD *sub_100007274(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_100007284(uint64_t a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for CFBBiomeReader.FetchEvaluationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CFBBiomeReader.FetchEvaluationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100007460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100007520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000075C4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100007658();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100007658()
{
  if (!qword_1000828D8)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000828D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for CFBBiomeReader.FetchDonationsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CFBBiomeReader.FetchDonationsError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100007894(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100007970(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100007BB4()
{
  result = qword_100082980;
  if (!qword_100082980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082980);
  }

  return result;
}

unint64_t sub_100007C0C()
{
  result = qword_100082988;
  if (!qword_100082988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082988);
  }

  return result;
}

unint64_t sub_100007EA4()
{
  result = qword_1000829D0;
  if (!qword_1000829D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000829D0);
  }

  return result;
}

void sub_100007F6C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_formIdentifier);
  v5 = *(v1 + OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_formIdentifier + 8);
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v6 forKey:v7];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = String._bridgeToObjectiveC()();
  [a1 encodeObject:isa forKey:v9];

  sub_100008714(0, &qword_100082AA0, NSNumber_ptr);
  v10 = NSNumber.init(integerLiteral:)(*(v2 + OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_feedbackId)).super.super.isa;
  v11 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v10 forKey:v11];

  v12 = *(v2 + OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_build);
  v13 = *(v2 + OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_build + 8);
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v14 forKey:v15];
}

id sub_10000817C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  sub_100008714(0, &qword_100082AA8, NSString_ptr);
  v12 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v12)
  {

    goto LABEL_9;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_100008714(0, &unk_100082AB0, NSDate_ptr);
  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v17)
  {
LABEL_8:

    goto LABEL_9;
  }

  v18 = v17;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v11, v9, v4);
  sub_100008714(0, &qword_100082AA0, NSNumber_ptr);
  v19 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v19)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_8;
  }

  v20 = v19;
  v21 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v24;

    v25 = (v2 + OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_formIdentifier);
    *v25 = v14;
    v25[1] = v16;
    (*(v5 + 16))(v2 + OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_date, v11, v4);
    v26 = [v20 integerValue];

    (*(v5 + 8))(v11, v4);
    *(v2 + OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_feedbackId) = v26;
    v27 = (v2 + OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_build);
    v28 = v35;
    *v27 = v23;
    v27[1] = v28;
    v29 = type metadata accessor for FeedbackSubmission();
    v36.receiver = v2;
    v36.super_class = v29;
    v30 = objc_msgSendSuper2(&v36, "init");

    return v30;
  }

  (*(v5 + 8))(v11, v4);
LABEL_9:
  type metadata accessor for FeedbackSubmission();
  v32 = *((swift_isaMask & *v2) + 0x30);
  v33 = *((swift_isaMask & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100008548()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackSubmission();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FeedbackSubmission()
{
  result = qword_100082A90;
  if (!qword_100082A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100008668()
{
  result = type metadata accessor for Date();
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

uint64_t sub_100008714(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000875C()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100082B20);
  sub_100002D00(v0, qword_100082B20);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_1000087D0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000883C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000887C()
{
  static Strings.Daemon.bundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  byte_100082B38 = has_internal_diagnostics;
  return result;
}

uint64_t sub_1000088CC()
{
  if (qword_1000825A8 != -1)
  {
    swift_once();
  }

  if (byte_100082B38 == 1)
  {
    result = static Strings.feedbackInternalBundleIdentifier.getter();
  }

  else
  {
    result = static Strings.fbaBundleIdentifier.getter();
  }

  qword_100082B40 = result;
  *algn_100082B48 = v1;
  return result;
}

uint64_t sub_100008938()
{
  if (qword_1000825A8 != -1)
  {
    result = swift_once();
  }

  v0 = 168;
  if (byte_100082B38)
  {
    v0 = 24;
  }

  qword_100082B50 = v0;
  return result;
}

id sub_1000089A0()
{
  v0 = type metadata accessor for CFBNotificationController();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10000B89C();
  qword_100085DD8 = result;
  return result;
}

id sub_1000089E0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_10000B89C();
}

uint64_t sub_100008A14()
{
  v1[27] = v0;
  v2 = type metadata accessor for Date();
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();
  v5 = sub_100004F70(&qword_100082BA8, &qword_100068D58);
  v1[31] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v7 = *(*(sub_100004F70(&unk_100083410, &qword_100068D50) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v8 = *(*(sub_100004F70(&qword_1000833B0, &qword_100068D60) - 8) + 64) + 15;
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_100008B98, v0, 0);
}

uint64_t sub_100008B98()
{
  v10 = v0;
  if (qword_1000825A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[37] = sub_100002D00(v1, qword_100082B20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000012, 0x800000010006B030, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_100008D48;
  v7 = v0[27];

  return sub_10000A8F0();
}

uint64_t sub_100008D48(char a1)
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 384) = a1;

  return _swift_task_switch(sub_100008E60, v3, 0);
}

uint64_t sub_100008E60()
{
  if ((*(v0 + 384) & 1) == 0)
  {
    sub_10000BD34();
    swift_allocError();
    swift_willThrow();
    v9 = *(v0 + 280);
    v8 = *(v0 + 288);
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);

    v7 = *(v0 + 8);
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {
    v2 = *(v0 + 280);
    v1 = *(v0 + 288);
    v4 = *(v0 + 264);
    v3 = *(v0 + 272);
    v5 = *(v0 + 256);
    v6 = *(v0 + 240);

    v7 = *(v0 + 8);
LABEL_5:

    return v7();
  }

  v15 = *(v0 + 288);
  v16 = *(v0 + 296);
  v17 = *(v0 + 216);
  *(v0 + 312) = *(v17 + OBJC_IVAR____TtC9feedbackd25CFBNotificationController_notificationCenter);
  v18 = swift_allocObject();
  *(v0 + 320) = v18;
  *(v18 + 16) = 0;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = sub_10000C058(&qword_100082BB8, type metadata accessor for CFBNotificationController);
  v21 = swift_allocObject();
  v21[2] = v17;
  v21[3] = v20;
  v21[4] = v17;
  v21[5] = v18;
  swift_retain_n();

  sub_10000A644(0, 0, v15, &unk_100068D70, v21);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Will wait on notification permission check", v24, 2u);
  }

  v25 = *(v0 + 320);
  swift_beginAccess();
  if (*(v25 + 16))
  {
    v26 = *(v0 + 296);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Did finish waiting on notification permission check", v29, 2u);
    }

    v30 = [objc_allocWithZone(UNMutableNotificationContent) init];
    *(v0 + 344) = v30;
    v31._countAndFlagsBits = 0xD000000000000016;
    v31._object = 0x800000010006AF90;
    FBKSLocalizedString(key:)(v31);
    v32 = String._bridgeToObjectiveC()();

    [v30 setTitle:v32];

    v33._countAndFlagsBits = 0xD000000000000018;
    v33._object = 0x800000010006AFB0;
    FBKSLocalizedString(key:)(v33);
    v34 = String._bridgeToObjectiveC()();

    [v30 setBody:v34];

    sub_1000159A0(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v30 setUserInfo:isa];

    [v30 setInterruptionLevel:1];
    static Strings.Notification.cfbCategoryIdentifier.getter();
    v36 = String._bridgeToObjectiveC()();

    [v30 setCategoryIdentifier:v36];

    v37 = v30;
    v38 = String._bridgeToObjectiveC()();
    *(v0 + 352) = [objc_opt_self() requestWithIdentifier:v38 content:v37 trigger:0];

    v39 = swift_task_alloc();
    *(v0 + 360) = v39;
    *v39 = v0;
    v39[1] = sub_1000099E8;
    v40 = *(v0 + 216);

    return sub_10000A8F0();
  }

  else
  {
    v41 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    *v42 = v0;
    v42[1] = sub_100009434;

    return static Task<>.sleep(nanoseconds:)(1000000000);
  }
}

uint64_t sub_100009434()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_100009938;
  }

  else
  {
    v6 = sub_100009560;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100009560()
{
  if (static Task<>.isCancelled.getter())
  {
    v1 = v0[40];

    v3 = v0[35];
    v2 = v0[36];
    v5 = v0[33];
    v4 = v0[34];
    v6 = v0[32];
    v7 = v0[30];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[40];
    swift_beginAccess();
    if (*(v10 + 16))
    {
      v11 = v0[37];
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Did finish waiting on notification permission check", v14, 2u);
      }

      v15 = [objc_allocWithZone(UNMutableNotificationContent) init];
      v0[43] = v15;
      v16._countAndFlagsBits = 0xD000000000000016;
      v16._object = 0x800000010006AF90;
      FBKSLocalizedString(key:)(v16);
      v17 = String._bridgeToObjectiveC()();

      [v15 setTitle:v17];

      v18._countAndFlagsBits = 0xD000000000000018;
      v18._object = 0x800000010006AFB0;
      FBKSLocalizedString(key:)(v18);
      v19 = String._bridgeToObjectiveC()();

      [v15 setBody:v19];

      sub_1000159A0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v15 setUserInfo:isa];

      [v15 setInterruptionLevel:1];
      static Strings.Notification.cfbCategoryIdentifier.getter();
      v21 = String._bridgeToObjectiveC()();

      [v15 setCategoryIdentifier:v21];

      v22 = v15;
      v23 = String._bridgeToObjectiveC()();
      v0[44] = [objc_opt_self() requestWithIdentifier:v23 content:v22 trigger:0];

      v24 = swift_task_alloc();
      v0[45] = v24;
      *v24 = v0;
      v24[1] = sub_1000099E8;
      v25 = v0[27];

      return sub_10000A8F0();
    }

    else
    {
      v26 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v27 = swift_task_alloc();
      v0[41] = v27;
      *v27 = v0;
      v27[1] = sub_100009434;

      return static Task<>.sleep(nanoseconds:)(1000000000);
    }
  }
}

uint64_t sub_100009938()
{
  v1 = v0[40];

  v2 = v0[42];
  v4 = v0[35];
  v3 = v0[36];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v8 = v0[30];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000099E8(char a1)
{
  v2 = *(*v1 + 360);
  v3 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 385) = a1;

  return _swift_task_switch(sub_100009B00, v3, 0);
}

uint64_t sub_100009B00()
{
  if ((*(v0 + 385) & 1) == 0)
  {
    v11 = *(v0 + 344);
    v10 = *(v0 + 352);
    v12 = *(v0 + 320);
    sub_10000BF94();
    swift_allocError();
    swift_willThrow();

    v14 = *(v0 + 280);
    v13 = *(v0 + 288);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 256);
    v18 = *(v0 + 240);

    v9 = *(v0 + 8);
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 344);
    v2 = *(v0 + 320);

    v4 = *(v0 + 280);
    v3 = *(v0 + 288);
    v6 = *(v0 + 264);
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v8 = *(v0 + 240);

    v9 = *(v0 + 8);
LABEL_5:

    return v9();
  }

  v20 = *(v0 + 352);
  v21 = *(v0 + 312);
  v22 = *(v0 + 280);
  v23 = *(v0 + 216);
  v24 = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate;
  *(v0 + 368) = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate;
  swift_beginAccess();
  sub_10000C0A0(v23 + v24, v22, &unk_100083410, &qword_100068D50);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100009D9C;
  v25 = swift_continuation_init();
  *(v0 + 136) = sub_100004F70(&qword_100082BC8, &qword_100068D78);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100021DB8;
  *(v0 + 104) = &unk_10007DF40;
  *(v0 + 112) = v25;
  [v21 addNotificationRequest:v20 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100009D9C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 376) = v3;
  v4 = *(v1 + 216);
  if (v3)
  {
    v5 = sub_10000A304;
  }

  else
  {
    v5 = sub_100009EBC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100009EBC()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v5 = *(v0[31] + 48);
  sub_10000C0A0(v0[27] + v0[46], v2, &unk_100083410, &qword_100068D50);
  sub_10000C0A0(v1, v2 + v5, &unk_100083410, &qword_100068D50);
  v6 = *(v4 + 48);
  if (v6(v2, 1, v3) == 1)
  {
    if (v6(v2 + v5, 1, v0[28]) == 1)
    {
      sub_1000071C8(v0[32], &unk_100083410, &qword_100068D50);
      goto LABEL_10;
    }
  }

  else
  {
    v7 = v0[28];
    sub_10000C0A0(v0[32], v0[34], &unk_100083410, &qword_100068D50);
    v8 = v6(v2 + v5, 1, v7);
    v9 = v0[34];
    if (v8 != 1)
    {
      v33 = v0[32];
      v35 = v0[29];
      v34 = v0[30];
      v36 = v0[28];
      (*(v35 + 32))(v34, v2 + v5, v36);
      sub_10000C058(&qword_100082BD0, &type metadata accessor for Date);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v35 + 8);
      v38(v34, v36);
      v38(v9, v36);
      sub_1000071C8(v33, &unk_100083410, &qword_100068D50);
      if (v37)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    (*(v0[29] + 8))(v0[34], v0[28]);
  }

  sub_1000071C8(v0[32], &qword_100082BA8, &qword_100068D58);
LABEL_7:
  v10 = v0[37];
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Race condition detected in notification posts count", v13, 2u);
  }

LABEL_10:
  v14 = v0[46];
  v15 = v0[44];
  v41 = v0[40];
  v39 = v0[43];
  v40 = v0[35];
  v16 = v0[33];
  v17 = v0[29];
  v18 = v0[30];
  v20 = v0[27];
  v19 = v0[28];
  static Date.now.getter();
  v21 = [objc_opt_self() standardUserDefaults];
  Date.timeIntervalSince1970.getter();
  v23 = v22;
  v24 = String._bridgeToObjectiveC()();
  [v21 setDouble:v24 forKey:v23];

  sub_1000071C8(v40, &unk_100083410, &qword_100068D50);
  (*(v17 + 32))(v16, v18, v19);
  (*(v17 + 56))(v16, 0, 1, v19);
  swift_beginAccess();
  sub_10000BFE8(v16, v20 + v14);
  swift_endAccess();

  v26 = v0[35];
  v25 = v0[36];
  v28 = v0[33];
  v27 = v0[34];
  v29 = v0[32];
  v30 = v0[30];

  v31 = v0[1];

  return v31();
}

uint64_t sub_10000A304()
{
  v1 = v0[47];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[40];
  v5 = v0[35];
  swift_willThrow();

  sub_1000071C8(v5, &unk_100083410, &qword_100068D50);

  v6 = v0[47];
  v8 = v0[35];
  v7 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v12 = v0[30];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10000A3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_10000A484;

  return sub_10000AFDC();
}

uint64_t sub_10000A484()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 40);

    return _swift_task_switch(sub_10000A5C8, v7, 0);
  }
}

uint64_t sub_10000A5C8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  *(v1 + 16) = 1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000C0A0(a3, v24 - v10, &qword_1000833B0, &qword_100068D60);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000071C8(v11, &qword_1000833B0, &qword_100068D60);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000071C8(a3, &qword_1000833B0, &qword_100068D60);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10000A8F0()
{
  v1[5] = v0;
  v2 = type metadata accessor for Calendar.Component();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for Calendar();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = *(*(sub_100004F70(&unk_100083410, &qword_100068D50) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v1[14] = v9;
  v10 = *(v9 - 8);
  v1[15] = v10;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_10000AAC4, v0, 0);
}

uint64_t sub_10000AAC4()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  static Calendar.current.getter();
  (*(v3 + 104))(v2, enum case for Calendar.Component.hour(_:), v4);
  if (qword_1000825B8 != -1)
  {
    swift_once();
  }

  if (__OFSUB__(0, qword_100082B50))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[8];
  v12 = v0[7];
  v47 = v0[6];
  v48 = v0[9];
  static Date.now.getter();
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v46 = *(v7 + 8);
  v46(v5, v6);
  (*(v12 + 8))(v11, v47);
  (*(v10 + 8))(v9, v48);
  v13 = *(v7 + 48);
  if (v13(v8, 1, v6) == 1)
  {
    sub_1000071C8(v0[13], &unk_100083410, &qword_100068D50);
    if (qword_1000825A0 == -1)
    {
LABEL_6:
      v14 = type metadata accessor for Logger();
      sub_100002D00(v14, qword_100082B20);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to get interval start for notification limits.", v17, 2u);
      }

LABEL_9:
      v18 = 0;
      goto LABEL_15;
    }

LABEL_24:
    swift_once();
    goto LABEL_6;
  }

  v19 = v0[14];
  v20 = v0[12];
  v21 = v0[5];
  v22 = *(v0[15] + 32);
  v22(v0[18], v0[13], v19);
  v23 = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate;
  swift_beginAccess();
  sub_10000C0A0(v21 + v23, v20, &unk_100083410, &qword_100068D50);
  v24 = v13(v20, 1, v19);
  v25 = v0[18];
  if (v24 == 1)
  {
    v26 = v0[12];
    v46(v0[18], v0[14]);
    sub_1000071C8(v26, &unk_100083410, &qword_100068D50);
  }

  else
  {
    v22(v0[16], v0[12], v0[14]);
    sub_10000C058(&qword_100083470, &type metadata accessor for Date);
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      if (qword_1000825A0 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_100002D00(v38, qword_100082B20);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      v41 = os_log_type_enabled(v39, v40);
      v42 = v0[18];
      v43 = v0[16];
      v44 = v0[14];
      if (v41)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Reached maximum number of notifications for this interval.", v45, 2u);
      }

      v46(v43, v44);
      v46(v42, v44);
      goto LABEL_9;
    }

    v27 = v0[18];
    v28 = v0[14];
    v46(v0[16], v28);
    v46(v27, v28);
  }

  v18 = 1;
LABEL_15:
  v30 = v0[17];
  v29 = v0[18];
  v31 = v0[16];
  v33 = v0[12];
  v32 = v0[13];
  v34 = v0[11];
  v35 = v0[8];

  v36 = v0[1];

  return v36(v18);
}

uint64_t sub_10000AFFC()
{
  v1 = *(v0[27] + OBJC_IVAR____TtC9feedbackd25CFBNotificationController_notificationCenter);
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_10000B128;
  v2 = swift_continuation_init();
  v0[25] = sub_100004F70(&unk_1000833D0, &qword_100068D38);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100021E64;
  v0[21] = &unk_10007DEA0;
  v0[22] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000B128()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(sub_10000B21C, v1, 0);
}

uint64_t sub_10000B21C()
{
  v1 = v0[28];
  v0[29] = v0[26];
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_10000B344;
  v2 = swift_continuation_init();
  v0[25] = sub_100004F70(&qword_100082BA0, &unk_100068D40);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100021EC8;
  v0[21] = &unk_10007DEC8;
  v0[22] = v2;
  [v1 requestAuthorizationWithOptions:7 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_10000B344()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 240) = v3;
  v4 = *(v1 + 216);
  if (v3)
  {
    v5 = sub_10000B82C;
  }

  else
  {
    v5 = sub_10000B464;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10000B464()
{
  v26 = v0;
  v1 = *(v0 + 208);
  if (qword_1000825A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 232);
  v3 = type metadata accessor for Logger();
  sub_100002D00(v3, qword_100082B20);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v10 = v1;
    v11 = v25;
    *v8 = 136446722;
    *(v0 + 144) = [v7 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000049B8(v12, v13, &v25);

    *(v8 + 4) = v14;
    *(v8 + 12) = 1026;
    *(v8 + 14) = v10;
    *(v8 + 18) = 2112;
    *(v8 + 20) = v7;
    *v9 = v7;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Previous status [%{public}s], authorized? %{BOOL,public}d\nSettings: %@", v8, 0x1Cu);
    sub_1000071C8(v9, &qword_100082708, &qword_100068320);

    sub_100005ED8(v11);
  }

  v16 = [*(v0 + 232) authorizationStatus];
  if (v16 <= 1)
  {
    if (!v16)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Not Determined";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v16 == 1)
    {
      v20 = *(v0 + 232);
      sub_10000BCE0();
      swift_allocError();
      *v21 = 5;
      swift_willThrow();

      v22 = *(v0 + 8);
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v16 != 2)
  {
    if (v16 == 3)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Provisional";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    if (v16 == 4)
    {
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = "Notification status is Ephemeral";
LABEL_22:
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, v19, v23, 2u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }

LABEL_20:
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = "Notification status is Unknown Default";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = "Notification status is Authorized";
    goto LABEL_22;
  }

LABEL_23:

  v22 = *(v0 + 8);
LABEL_24:

  return v22();
}

uint64_t sub_10000B82C()
{
  v1 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  v3 = v0[30];
  v4 = v0[1];

  return v4();
}

id sub_10000B89C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_notificationCenter;
  if (qword_1000825B0 != -1)
  {
    swift_once();
  }

  sub_10000BC7C();
  (*(v3 + 104))(v6, enum case for DispatchQoS.QoSClass.userInitiated(_:), v2);
  v10 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v6, v2);
  v11 = objc_allocWithZone(UNUserNotificationCenter);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithBundleIdentifier:v12 queue:v10];

  *&v1[v9] = v13;
  v14 = type metadata accessor for CFBNotificationController();
  v16.receiver = v1;
  v16.super_class = v14;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_10000BAC8()
{
  sub_1000071C8(v0 + OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate, &unk_100083410, &qword_100068D50);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for CFBNotificationController()
{
  result = qword_100082B88;
  if (!qword_100082B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000BB7C()
{
  sub_10000BC24();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000BC24()
{
  if (!qword_100082B98)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100082B98);
    }
  }
}

unint64_t sub_10000BC7C()
{
  result = qword_100083480;
  if (!qword_100083480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100083480);
  }

  return result;
}

unint64_t sub_10000BCE0()
{
  result = qword_1000833E0;
  if (!qword_1000833E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000833E0);
  }

  return result;
}

unint64_t sub_10000BD34()
{
  result = qword_100082BB0;
  if (!qword_100082BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082BB0);
  }

  return result;
}

uint64_t sub_10000BD98()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000BDE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BEA0;

  return sub_10000A3F0(a1, v4, v5, v7, v6);
}

uint64_t sub_10000BEA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10000BF94()
{
  result = qword_100082BC0;
  if (!qword_100082BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082BC0);
  }

  return result;
}

uint64_t sub_10000BFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&unk_100083410, &qword_100068D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C0A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004F70(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for CFBNotificationController.NotificationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CFBNotificationController.NotificationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000C1F4()
{
  result = qword_100082BD8;
  if (!qword_100082BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082BD8);
  }

  return result;
}

uint64_t sub_10000C258()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100082BE0);
  v1 = sub_100002D00(v0, qword_100082BE0);
  if (qword_100082608 != -1)
  {
    swift_once();
  }

  v2 = sub_100002D00(v0, qword_100085DF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000C320()
{
  type metadata accessor for NotificationScheduler();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100085DE8 = v0;
  return result;
}

uint64_t sub_10000C35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v8 = type metadata accessor for FormLaunchConfiguration();
  v7[21] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v10 = *(*(sub_100004F70(&unk_100083410, &qword_100068D50) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_10000C434, v6, 0);
}

uint64_t sub_10000C434()
{
  v11 = v0;
  if (qword_1000825C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 192) = sub_100002D00(v1, qword_100082BE0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006B0A0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  if (qword_100082610 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 152);
  *(v0 + 200) = qword_100085E10;
  v7 = *(v6 + 80);
  *(v0 + 97) = v7;
  v8 = swift_task_alloc();
  *(v0 + 208) = v8;
  *v8 = v0;
  v8[1] = sub_10000C62C;

  return sub_1000220CC(v7);
}

uint64_t sub_10000C62C(char a1)
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 98) = a1;

  return _swift_task_switch(sub_10000C744, v3, 0);
}

uint64_t sub_10000C744()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v1 = qword_100085DF0;
  *(v0 + 216) = qword_100085DF0;

  return _swift_task_switch(sub_10000C7DC, v1, 0);
}

uint64_t sub_10000C7DC()
{
  v1 = *(v0 + 160);
  *(v0 + 224) = sub_10001F450();

  return _swift_task_switch(sub_10000C848, v1, 0);
}

uint64_t sub_10000C848()
{
  v1 = *(v0 + 98);
  v2 = *(*(v0 + 224) + 16);

  v3 = *(v0 + 97);
  if (v1 != 1 || v2 != 0)
  {
    if ((*(v0 + 97) & 1) == 0)
    {
      v5 = *(v0 + 216);

      return _swift_task_switch(sub_10000CD44, v5, 0);
    }

    goto LABEL_10;
  }

  if (*(v0 + 97))
  {
LABEL_10:
    v6 = *(v0 + 192);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Used configuration to notify immediately", v9, 2u);
    }
  }

  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_10000C9C8;
  v11 = *(v0 + 200);
  v12 = *(v0 + 184);
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 112);
  v18 = *(v0 + 120);

  return sub_100025744(v12, v17, v18, v15, v16, v13, v14);
}

uint64_t sub_10000C9C8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_10000CDC8;
  }

  else
  {
    v6 = sub_10000CAF4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10000CAF4()
{
  v17 = v0[27];
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v3[8];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  sub_10000F9EC(v1, v2 + v3[9]);
  v11 = v2 + v3[6];
  Date.init()();
  *v2 = v8;
  *(v2 + 8) = v7;
  *(v2 + 16) = v6;
  *(v2 + 24) = v5;
  v12 = *(v4 + 16);
  *(v2 + 32) = *v4;
  *(v2 + 48) = v12;
  v13 = *(v4 + 32);
  v14 = *(v4 + 48);
  v15 = *(v4 + 64);
  *(v2 + 112) = *(v4 + 80);
  *(v2 + 80) = v14;
  *(v2 + 96) = v15;
  *(v2 + 64) = v13;
  *(v2 + v3[7]) = 0;
  *(v2 + v3[10]) = 0;

  sub_10000FA5C(v4, (v0 + 2));

  return _swift_task_switch(sub_10000CC44, v17, 0);
}

uint64_t sub_10000CC44()
{
  v1 = *(v0 + 160);
  sub_10001FB30(*(v0 + 176));

  return _swift_task_switch(sub_10000CCB8, v1, 0);
}

uint64_t sub_10000CCB8()
{
  v1 = v0[23];
  sub_10000F990(v0[22]);
  sub_1000071C8(v1, &unk_100083410, &qword_100068D50);
  v3 = v0[22];
  v2 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000CD44()
{
  sub_10001FC88(*(v0 + 152), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000CDC8()
{
  v19 = v0;
  v0[13] = v0[30];
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {
    v1 = v0[24];
    v2 = v0[17];
    v3 = v0[15];
    v4 = v0[30];

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = v0[14];
      v7 = v0[15];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1000049B8(v8, v7, &v18);
      _os_log_impl(&_mh_execute_header, v5, v6, "Posting notification for [%{public}s] was halted because we have already posted the max amount allowed for this interval. Will enqueue notification for later", v9, 0xCu);
      sub_100005ED8(v10);
    }

    v11 = v0[27];

    return _swift_task_switch(sub_10000CFD0, v11, 0);
  }

  else
  {
    v12 = v0[22];
    v13 = v0[23];
    v14 = v0[13];

    swift_willThrow();

    v15 = v0[1];
    v16 = v0[30];

    return v15();
  }
}

uint64_t sub_10000CFD0()
{
  v1 = *(v0 + 160);
  sub_10001FC88(*(v0 + 152), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return _swift_task_switch(sub_10000D048, v1, 0);
}

uint64_t sub_10000D048()
{
  v1 = v0[13];

  v3 = v0[22];
  v2 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000D0BC()
{
  v1[36] = v0;
  v2 = *(*(sub_100004F70(&unk_100083410, &qword_100068D50) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v3 = *(*(sub_100004F70(&qword_100082CA8, &unk_100069A60) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v4 = type metadata accessor for FormItem();
  v1[39] = v4;
  v5 = *(v4 - 8);
  v1[40] = v5;
  v6 = *(v5 + 64) + 15;
  v1[41] = swift_task_alloc();
  v7 = *(*(sub_100004F70(&qword_100082CB0, &qword_100068EB0) - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  v8 = type metadata accessor for FormLaunchConfiguration();
  v1[43] = v8;
  v9 = *(v8 - 8);
  v1[44] = v9;
  v10 = *(v9 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();

  return _swift_task_switch(sub_10000D2A4, v0, 0);
}

uint64_t sub_10000D2A4()
{
  v9 = v0;
  if (qword_1000825C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[49] = sub_100002D00(v1, qword_100082BE0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD00000000000001ALL, 0x800000010006B080, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100005ED8(v5);
  }

  if (qword_100082610 != -1)
  {
    swift_once();
  }

  v0[50] = qword_100085E10;
  v6 = swift_task_alloc();
  v0[51] = v6;
  *v6 = v0;
  v6[1] = sub_10000D490;

  return sub_1000220CC(0);
}

uint64_t sub_10000D490(char a1)
{
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 97) = a1;

  return _swift_task_switch(sub_10000D5A8, v3, 0);
}

uint64_t sub_10000D5A8()
{
  if (*(v0 + 97) == 1)
  {
    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v1 = qword_100085DF0;
    *(v0 + 416) = qword_100085DF0;

    return _swift_task_switch(sub_10000D75C, v1, 0);
  }

  else
  {
    v2 = *(v0 + 392);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Too soon to post another notification. Will not inspect pending queue", v5, 2u);
    }

    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    v13 = *(v0 + 296);
    v12 = *(v0 + 304);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10000D75C()
{
  v1 = *(v0 + 288);
  *(v0 + 424) = sub_1000200EC();

  return _swift_task_switch(sub_10000D7C8, v1, 0);
}

uint64_t sub_10000D7C8()
{
  result = *(v0 + 424);
  v2 = *(result + 16);
  *(v0 + 432) = v2;
  if (v2)
  {
    *(v0 + 440) = 0;
    if (*(result + 16))
    {
      *(v0 + 448) = *(result + 32);
      *(v0 + 456) = *(result + 40);
      *(v0 + 98) = *(result + 48);

      v3 = swift_task_alloc();
      *(v0 + 464) = v3;
      *v3 = v0;
      v3[1] = sub_10000D944;
      v4 = *(v0 + 400);

      return sub_1000220CC(0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v8 = *(v0 + 360);
    v7 = *(v0 + 368);
    v10 = *(v0 + 328);
    v9 = *(v0 + 336);
    v12 = *(v0 + 296);
    v11 = *(v0 + 304);

    v13 = *(v0 + 8);

    return v13();
  }

  return result;
}

uint64_t sub_10000D944(char a1)
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 99) = a1;

  return _swift_task_switch(sub_10000DA5C, v3, 0);
}

uint64_t sub_10000DA5C()
{
  if (*(v0 + 99) == 1)
  {
    v1 = *(v0 + 416);

    return _swift_task_switch(sub_10000DB7C, v1, 0);
  }

  else
  {
    v2 = *(v0 + 456);
    v3 = *(v0 + 424);

    v5 = *(v0 + 376);
    v4 = *(v0 + 384);
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v9 = *(v0 + 328);
    v8 = *(v0 + 336);
    v11 = *(v0 + 296);
    v10 = *(v0 + 304);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10000DB7C()
{
  v1 = *(v0 + 98);
  v2 = *(v0 + 416);
  v3 = *(v0 + 288);
  sub_10001D9C4(*(v0 + 448), *(v0 + 456), *(v0 + 336));

  return _swift_task_switch(sub_10000DBF4, v3, 0);
}

uint64_t sub_10000DBF4()
{
  v38 = v0;
  v1 = *(v0 + 336);
  if ((*(*(v0 + 352) + 48))(v1, 1, *(v0 + 344)) == 1)
  {
    v2 = *(v0 + 456);

    result = sub_1000071C8(v1, &qword_100082CB0, &qword_100068EB0);
    v4 = *(v0 + 440) + 1;
    if (v4 == *(v0 + 432))
    {
      v5 = *(v0 + 424);

      v7 = *(v0 + 376);
      v6 = *(v0 + 384);
      v9 = *(v0 + 360);
      v8 = *(v0 + 368);
      v11 = *(v0 + 328);
      v10 = *(v0 + 336);
      v13 = *(v0 + 296);
      v12 = *(v0 + 304);

      v14 = *(v0 + 8);

      return v14();
    }

    else
    {
      *(v0 + 440) = v4;
      v26 = *(v0 + 424);
      if (v4 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = v26 + 24 * v4;
        *(v0 + 448) = *(v27 + 32);
        *(v0 + 456) = *(v27 + 40);
        *(v0 + 98) = *(v27 + 48);

        v28 = swift_task_alloc();
        *(v0 + 464) = v28;
        *v28 = v0;
        v28[1] = sub_10000D944;
        v29 = *(v0 + 400);

        return sub_1000220CC(0);
      }
    }
  }

  else
  {
    v15 = *(v0 + 384);
    v16 = *(v0 + 376);
    sub_10000F8C8(v1, v15);
    sub_10000F92C(v15, v16);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 376);
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315138;
      v23 = *v20;
      v24 = v20[1];

      sub_10000F990(v20);
      v25 = sub_1000049B8(v23, v24, &v37);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Found pending notification %s", v21, 0xCu);
      sub_100005ED8(v22);
    }

    else
    {

      sub_10000F990(v20);
    }

    v30 = *(v0 + 384);
    type metadata accessor for SeedPortal();
    *(v0 + 472) = static SeedPortal.shared.getter();
    v31 = *v30;
    *(v0 + 480) = *v30;
    v32 = v30[1];
    *(v0 + 488) = v32;
    v33 = v30[2];
    *(v0 + 496) = v33;
    v34 = v30[3];
    *(v0 + 504) = v34;
    v35 = swift_task_alloc();
    *(v0 + 512) = v35;
    *v35 = v0;
    v35[1] = sub_10000DF98;
    v36 = *(v0 + 304);

    return sub_10001A628(v36, v31, v32, v33, v34, 0);
  }

  return result;
}

uint64_t sub_10000DF98()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 520) = v0;

  v6 = *(v2 + 288);
  if (v0)
  {
    v7 = sub_10000E3E0;
  }

  else
  {
    v7 = sub_10000E0E0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10000E0E0()
{
  v39 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 384);
    v5 = *(v0 + 392);
    v6 = *(v0 + 360);
    sub_1000071C8(v3, &qword_100082CA8, &unk_100069A60);
    sub_10000F92C(v4, v6);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 360);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v38 = v12;
      *v11 = 136446210;
      v13 = *v10;
      v14 = v10[1];

      sub_10000F990(v10);
      v15 = sub_1000049B8(v13, v14, &v38);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Could not authenticate for Form %{public}s", v11, 0xCu);
      sub_100005ED8(v12);
    }

    else
    {

      sub_10000F990(v10);
    }

    sub_10000BCE0();
    *(v0 + 544) = swift_allocError();
    *v30 = 1;
    v31 = _convertErrorToNSError(_:)();
    *(v0 + 552) = v31;
    v32 = swift_task_alloc();
    *(v0 + 560) = v32;
    *v32 = v0;
    v32[1] = sub_10000EDFC;
    v33 = *(v0 + 98);
    v34 = *(v0 + 448);
    v35 = *(v0 + 456);
    v36 = *(v0 + 416);
    v37 = *(v0 + 384);

    return sub_10001DC88(v37, v33, v34, v35, v31);
  }

  else
  {
    v16 = *(v0 + 384);
    (*(v2 + 32))(*(v0 + 328), v3, v1);
    v17 = *(v16 + 48);
    *(v0 + 16) = *(v16 + 32);
    *(v0 + 32) = v17;
    v19 = *(v16 + 80);
    v18 = *(v16 + 96);
    v20 = *(v16 + 64);
    *(v0 + 96) = *(v16 + 112);
    *(v0 + 64) = v19;
    *(v0 + 80) = v18;
    *(v0 + 48) = v20;
    v21 = swift_task_alloc();
    *(v0 + 528) = v21;
    *v21 = v0;
    v21[1] = sub_10000E888;
    v22 = *(v0 + 496);
    v23 = *(v0 + 504);
    v24 = *(v0 + 480);
    v25 = *(v0 + 488);
    v26 = *(v0 + 400);
    v27 = *(v0 + 328);
    v28 = *(v0 + 296);

    return sub_100025744(v28, v24, v25, v22, v23, v27, v0 + 16);
  }
}

uint64_t sub_10000E3E0()
{
  v45 = v0;
  v1 = *(v0 + 520);
  *(v0 + 568) = v1;
  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 456);
    v3 = *(v0 + 392);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 456);
    if (v6)
    {
      v8 = *(v0 + 448);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v44 = v10;
      *v9 = 136446210;
      v11 = sub_1000049B8(v8, v7, &v44);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Posting pending notification [%{public}s] halted because we have already posted the max amount allowed for this interval", v9, 0xCu);
      sub_100005ED8(v10);
    }

    else
    {
    }

    sub_10000F990(*(v0 + 384));
    v28 = *(v0 + 280);

    v29 = *(v0 + 440) + 1;
    if (v29 == *(v0 + 432))
    {
      v30 = *(v0 + 424);

      v32 = *(v0 + 376);
      v31 = *(v0 + 384);
      v34 = *(v0 + 360);
      v33 = *(v0 + 368);
      v36 = *(v0 + 328);
      v35 = *(v0 + 336);
      v38 = *(v0 + 296);
      v37 = *(v0 + 304);

      v39 = *(v0 + 8);

      return v39();
    }

    else
    {
      *(v0 + 440) = v29;
      v40 = *(v0 + 424);
      if (v29 >= *(v40 + 16))
      {
        __break(1u);
      }

      else
      {
        v41 = v40 + 24 * v29;
        *(v0 + 448) = *(v41 + 32);
        *(v0 + 456) = *(v41 + 40);
        *(v0 + 98) = *(v41 + 48);

        v42 = swift_task_alloc();
        *(v0 + 464) = v42;
        *v42 = v0;
        v42[1] = sub_10000D944;
        v43 = *(v0 + 400);

        return sub_1000220CC(0);
      }
    }
  }

  else
  {
    v12 = *(v0 + 392);
    v13 = *(v0 + 280);

    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44 = v18;
      *v16 = 136446466;
      *(v16 + 4) = sub_1000049B8(0xD00000000000001ALL, 0x800000010006B080, &v44);
      *(v16 + 12) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v19;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s error: %{public}@", v16, 0x16u);
      sub_1000071C8(v17, &qword_100082708, &qword_100068320);

      sub_100005ED8(v18);
    }

    v20 = _convertErrorToNSError(_:)();
    *(v0 + 576) = v20;
    v21 = swift_task_alloc();
    *(v0 + 584) = v21;
    *v21 = v0;
    v21[1] = sub_10000F0F8;
    v22 = *(v0 + 98);
    v23 = *(v0 + 448);
    v24 = *(v0 + 456);
    v25 = *(v0 + 416);
    v26 = *(v0 + 384);

    return sub_10001DC88(v26, v22, v23, v24, v20);
  }

  return result;
}

uint64_t sub_10000E888()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v7 = *v1;
  *(*v1 + 536) = v0;

  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_10000F3E4;
  }

  else
  {
    v5 = sub_10000E9A0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10000E9A0()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  v22 = *(v0 + 496);
  v23 = *(v0 + 416);
  v4 = *(v0 + 384);
  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 296);
  v8 = *(v4 + 48);
  *(v0 + 104) = *(v4 + 32);
  *(v0 + 120) = v8;
  v10 = *(v4 + 80);
  v9 = *(v4 + 96);
  v11 = *(v4 + 112);
  *(v0 + 136) = *(v4 + 64);
  *(v0 + 184) = v11;
  *(v0 + 168) = v9;
  *(v0 + 152) = v10;
  v12 = v6[8];
  v13 = *(v4 + v6[7]);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v5 + v12, 1, 1, v14);
  v15 = *(v4 + v6[10]);
  sub_10000F9EC(v7, v5 + v6[9]);
  v16 = v6[6];

  sub_10000FA5C(v0 + 104, v0 + 192);
  Date.init()();
  *v5 = v3;
  *(v5 + 8) = v2;
  *(v5 + 16) = v22;
  *(v5 + 24) = v1;
  v17 = *(v0 + 120);
  *(v5 + 32) = *(v0 + 104);
  *(v5 + 48) = v17;
  v18 = *(v0 + 136);
  v19 = *(v0 + 152);
  v20 = *(v0 + 168);
  *(v5 + 112) = *(v0 + 184);
  *(v5 + 80) = v19;
  *(v5 + 96) = v20;
  *(v5 + 64) = v18;
  *(v5 + v6[7]) = v13;
  *(v5 + v6[10]) = v15;

  return _swift_task_switch(sub_10000EB30, v23, 0);
}

uint64_t sub_10000EB30()
{
  v1 = *(v0 + 416);
  sub_10001FB30(*(v0 + 368));

  return _swift_task_switch(sub_10000EBA4, v1, 0);
}

uint64_t sub_10000EBA4()
{
  v1 = *(v0 + 98);
  v2 = *(v0 + 288);
  sub_100020464(*(v0 + 448), *(v0 + 456));

  return _swift_task_switch(sub_10000EC20, v2, 0);
}

uint64_t sub_10000EC20()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 312);
  v5 = *(v0 + 296);
  sub_10000F990(*(v0 + 368));
  sub_1000071C8(v5, &unk_100083410, &qword_100068D50);
  (*(v3 + 8))(v2, v4);
  result = sub_10000F990(v1);
  v7 = *(v0 + 440) + 1;
  if (v7 == *(v0 + 432))
  {
    v8 = *(v0 + 424);

    v10 = *(v0 + 376);
    v9 = *(v0 + 384);
    v12 = *(v0 + 360);
    v11 = *(v0 + 368);
    v14 = *(v0 + 328);
    v13 = *(v0 + 336);
    v16 = *(v0 + 296);
    v15 = *(v0 + 304);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    *(v0 + 440) = v7;
    v18 = *(v0 + 424);
    if (v7 >= *(v18 + 16))
    {
      __break(1u);
    }

    else
    {
      v19 = v18 + 24 * v7;
      *(v0 + 448) = *(v19 + 32);
      *(v0 + 456) = *(v19 + 40);
      *(v0 + 98) = *(v19 + 48);

      v20 = swift_task_alloc();
      *(v0 + 464) = v20;
      *v20 = v0;
      v20[1] = sub_10000D944;
      v21 = *(v0 + 400);

      return sub_1000220CC(0);
    }
  }

  return result;
}

uint64_t sub_10000EDFC()
{
  v1 = *(*v0 + 560);
  v2 = *(*v0 + 552);
  v3 = *(*v0 + 544);
  v4 = *(*v0 + 456);
  v5 = *(*v0 + 288);
  v7 = *v0;

  return _swift_task_switch(sub_10000EF64, v5, 0);
}

uint64_t sub_10000EF64()
{
  result = sub_10000F990(*(v0 + 384));
  v2 = *(v0 + 440) + 1;
  if (v2 == *(v0 + 432))
  {
    v3 = *(v0 + 424);

    v5 = *(v0 + 376);
    v4 = *(v0 + 384);
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v9 = *(v0 + 328);
    v8 = *(v0 + 336);
    v11 = *(v0 + 296);
    v10 = *(v0 + 304);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    *(v0 + 440) = v2;
    v13 = *(v0 + 424);
    if (v2 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v14 = v13 + 24 * v2;
      *(v0 + 448) = *(v14 + 32);
      *(v0 + 456) = *(v14 + 40);
      *(v0 + 98) = *(v14 + 48);

      v15 = swift_task_alloc();
      *(v0 + 464) = v15;
      *v15 = v0;
      v15[1] = sub_10000D944;
      v16 = *(v0 + 400);

      return sub_1000220CC(0);
    }
  }

  return result;
}

uint64_t sub_10000F0F8()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 456);
  v4 = *(*v0 + 288);
  v6 = *v0;

  return _swift_task_switch(sub_10000F244, v4, 0);
}

uint64_t sub_10000F244()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 384);

  result = sub_10000F990(v2);
  v4 = *(v0 + 440) + 1;
  if (v4 == *(v0 + 432))
  {
    v5 = *(v0 + 424);

    v7 = *(v0 + 376);
    v6 = *(v0 + 384);
    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    v13 = *(v0 + 296);
    v12 = *(v0 + 304);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    *(v0 + 440) = v4;
    v15 = *(v0 + 424);
    if (v4 >= *(v15 + 16))
    {
      __break(1u);
    }

    else
    {
      v16 = v15 + 24 * v4;
      *(v0 + 448) = *(v16 + 32);
      *(v0 + 456) = *(v16 + 40);
      *(v0 + 98) = *(v16 + 48);

      v17 = swift_task_alloc();
      *(v0 + 464) = v17;
      *v17 = v0;
      v17[1] = sub_10000D944;
      v18 = *(v0 + 400);

      return sub_1000220CC(0);
    }
  }

  return result;
}

uint64_t sub_10000F3E4()
{
  v45 = v0;
  (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
  v1 = *(v0 + 536);
  *(v0 + 568) = v1;
  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 456);
    v3 = *(v0 + 392);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 456);
    if (v6)
    {
      v8 = *(v0 + 448);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v44 = v10;
      *v9 = 136446210;
      v11 = sub_1000049B8(v8, v7, &v44);

      *(v9 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Posting pending notification [%{public}s] halted because we have already posted the max amount allowed for this interval", v9, 0xCu);
      sub_100005ED8(v10);
    }

    else
    {
    }

    sub_10000F990(*(v0 + 384));
    v28 = *(v0 + 280);

    v29 = *(v0 + 440) + 1;
    if (v29 == *(v0 + 432))
    {
      v30 = *(v0 + 424);

      v32 = *(v0 + 376);
      v31 = *(v0 + 384);
      v34 = *(v0 + 360);
      v33 = *(v0 + 368);
      v36 = *(v0 + 328);
      v35 = *(v0 + 336);
      v38 = *(v0 + 296);
      v37 = *(v0 + 304);

      v39 = *(v0 + 8);

      return v39();
    }

    else
    {
      *(v0 + 440) = v29;
      v40 = *(v0 + 424);
      if (v29 >= *(v40 + 16))
      {
        __break(1u);
      }

      else
      {
        v41 = v40 + 24 * v29;
        *(v0 + 448) = *(v41 + 32);
        *(v0 + 456) = *(v41 + 40);
        *(v0 + 98) = *(v41 + 48);

        v42 = swift_task_alloc();
        *(v0 + 464) = v42;
        *v42 = v0;
        v42[1] = sub_10000D944;
        v43 = *(v0 + 400);

        return sub_1000220CC(0);
      }
    }
  }

  else
  {
    v12 = *(v0 + 392);
    v13 = *(v0 + 280);

    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44 = v18;
      *v16 = 136446466;
      *(v16 + 4) = sub_1000049B8(0xD00000000000001ALL, 0x800000010006B080, &v44);
      *(v16 + 12) = 2114;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v19;
      *v17 = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s error: %{public}@", v16, 0x16u);
      sub_1000071C8(v17, &qword_100082708, &qword_100068320);

      sub_100005ED8(v18);
    }

    v20 = _convertErrorToNSError(_:)();
    *(v0 + 576) = v20;
    v21 = swift_task_alloc();
    *(v0 + 584) = v21;
    *v21 = v0;
    v21[1] = sub_10000F0F8;
    v22 = *(v0 + 98);
    v23 = *(v0 + 448);
    v24 = *(v0 + 456);
    v25 = *(v0 + 416);
    v26 = *(v0 + 384);

    return sub_10001DC88(v26, v22, v23, v24, v20);
  }

  return result;
}

uint64_t sub_10000F8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormLaunchConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormLaunchConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F990(uint64_t a1)
{
  v2 = type metadata accessor for FormLaunchConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F9EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&unk_100083410, &qword_100068D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FAB8()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100082CB8);
  sub_100002D00(v0, qword_100082CB8);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000FB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = sub_100004F70(&qword_100082D18, &qword_100068F10);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v48 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = v47 - v9;
  v10 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v47 - v12;
  v14 = type metadata accessor for FBKSInteraction.Content();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v47 - v20;
  sub_10000C0A0(a2, v13, &qword_100082CD8, &qword_100068EC8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000071C8(v13, &qword_100082CD8, &qword_100068EC8);
    if (qword_1000825D8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100002D00(v22, qword_100082CB8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No content. Cannot create annotated content", v25, 2u);
    }

    v26 = 1;
    v27 = v50;
LABEL_7:
    v28 = type metadata accessor for FBKSInteraction.AnnotatedContent();
    return (*(*(v28 - 8) + 56))(v27, v26, 1, v28);
  }

  (*(v15 + 32))(v21, v13, v14);
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v30 = sub_10005BCB0(0x4E79616C70736964, 0xEB00000000656D61);
  if ((v31 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_100007018(*(a1 + 56) + 32 * v30, v53);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!*(a1 + 16) || (v32 = v51, v33 = sub_10005BCB0(0x7470697263736564, 0xEB000000006E6F69), (v34 & 1) == 0) || (sub_100007018(*(a1 + 56) + 32 * v33, v53), (swift_dynamicCast() & 1) == 0))
  {
LABEL_20:

LABEL_21:
    sub_100013CEC();
    swift_allocError();
    *v39 = 0xD000000000000037;
    v39[1] = 0x800000010006B220;
    swift_willThrow();
    return (*(v15 + 8))(v21, v14);
  }

  v35 = v52;
  if (!*(a1 + 16) || (v47[4] = v51, v36 = sub_10005BCB0(0x656D614E656C6966, 0xE800000000000000), (v37 & 1) == 0) || (sub_100007018(*(a1 + 56) + 32 * v36, v53), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_20;
  }

  v47[1] = v51;
  v47[2] = v52;
  v47[3] = v35;
  v38 = v54;
  sub_1000101D4(a1, v49);
  if (!v38)
  {
    (*(v15 + 16))(v19, v21, v14);
    v40 = *(a1 + 16);
    v47[0] = v32;
    if (v40 && (v41 = sub_10005BCB0(0x70756F7267, 0xE500000000000000), (v42 & 1) != 0))
    {
      sub_100007018(*(a1 + 56) + 32 * v41, v53);
      v43 = swift_dynamicCast();
      v44 = v51;
      if (!v43)
      {
        v44 = 0;
      }

      v54 = v44;
    }

    else
    {
      v54 = 0;
    }

    sub_10000C0A0(v49, v48, &qword_100082D18, &qword_100068F10);
    if (*(a1 + 16))
    {
      v45 = sub_10005BCB0(0x6E6F697469646461, 0xEE006F666E496C61);
      if (v46)
      {
        sub_100007018(*(a1 + 56) + 32 * v45, v53);
        sub_100004F70(&qword_100082D20, &qword_100068F18);
        swift_dynamicCast();
      }
    }

    v27 = v50;
    FBKSInteraction.AnnotatedContent.init(payload:displayName:description:fileName:group:iconType:additionalInfo:)();
    sub_1000071C8(v49, &qword_100082D18, &qword_100068F10);
    (*(v15 + 8))(v21, v14);
    v26 = 0;
    goto LABEL_7;
  }

  (*(v15 + 8))(v21, v14);
}

uint64_t sub_1000101D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10005BCB0(0x657079546E6F6369, 0xE800000000000000), (v5 & 1) != 0))
  {
    sub_100007018(*(a1 + 56) + 32 * v4, v11);
    sub_100007274(v11, v12);
    sub_100007018(v12, v11);
    sub_100004F70(&qword_100082828, &qword_100068ED0);
    if (swift_dynamicCast())
    {
      v6 = sub_100014ED4(v10);

      sub_100010364(v6, a2);
      sub_100005ED8(v12);
    }

    else
    {
      sub_100013CEC();
      swift_allocError();
      *v9 = 0xD000000000000024;
      v9[1] = 0x800000010006B260;
      swift_willThrow();
      return sub_100005ED8(v12);
    }
  }

  else
  {
    v8 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_100010364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FBKSInteraction.AnnotatedContent.IconType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v41 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000825D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002D00(v8, qword_100082CB8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v4;
    v40 = v5;
    *&v44[0] = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1000049B8(0x293A5F2868746977, 0xE800000000000000, v44);
    *(v11 + 12) = 2080;
    sub_100004F70(&qword_100082860, &unk_1000683C0);
    v13 = Dictionary.description.getter();
    v15 = sub_1000049B8(v13, v14, v44);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s dictionary: %s", v11, 0x16u);
    swift_arrayDestroy();
    v4 = v39;
    v5 = v40;
  }

  v16 = sub_1000108A4(a1);
  if (!v17)
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v18 = v16;
  v19 = v17;
  if ((v16 != 0x7261726F706D6574 || v17 != 0xE900000000000079) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v34 = v41;
    static FBKSInteraction.AnnotatedContent.IconType.withString(value:)();

    (*(v5 + 32))(a2, v34, v4);
    v31 = *(v5 + 56);
    v32 = a2;
    return v31(v32, 0, 1, v4);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v20 = a2;
  v21 = sub_10005BCB0(v18, v19);
  v23 = v22;

  if (v23)
  {
    sub_10000C0A0(*(a1 + 56) + 32 * v21, &v42, &qword_100082860, &unk_1000683C0);
    v44[0] = v42;
    v44[1] = v43;
    if (!*(&v43 + 1))
    {
      sub_1000071C8(v44, &qword_100082860, &unk_1000683C0);
      goto LABEL_21;
    }

    sub_100004F70(&qword_100082D20, &qword_100068F18);
    if (swift_dynamicCast())
    {
      v24 = v45;
      if (*(v45 + 16))
      {
        v25 = sub_10005BCB0(0xD000000000000011, 0x800000010006B2C0);
        if (v26)
        {
          v27 = (*(v24 + 56) + 16 * v25);
          v29 = *v27;
          v28 = v27[1];

          v30 = v41;
          *v41 = v29;
          v30[1] = v28;
          (*(v5 + 104))(v30, enum case for FBKSInteraction.AnnotatedContent.IconType.temporary(_:), v4);
          (*(v5 + 32))(v20, v30, v4);
          v31 = *(v5 + 56);
          v32 = v20;
          return v31(v32, 0, 1, v4);
        }
      }

LABEL_17:
    }
  }

LABEL_21:
  *&v44[0] = 0;
  *(&v44[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  *&v44[0] = 0xD000000000000024;
  *(&v44[0] + 1) = 0x800000010006B290;
  sub_100004F70(&qword_100082860, &unk_1000683C0);
  v35._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v35);

  v36 = v44[0];
  sub_100013CEC();
  swift_allocError();
  *v37 = v36;
  return swift_willThrow();
}

uint64_t sub_1000108A4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_100010D64(v3, *(a1 + 36), 0, a1);

  return v5;
}

void *sub_100010920(uint64_t a1, uint64_t a2)
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

  sub_100004F70(&qword_100082840, &qword_1000683B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100010994(uint64_t a1, unint64_t a2)
{
  sub_100013D40(a1, a2);
  v4 = sub_100010A3C(a1, a2)[2];
  v5 = static String._fromUTF8Repairing(_:)();

  return v5;
}

uint64_t sub_100010A00@<X0>(uint64_t *a1@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id *sub_100010A3C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_100013C98(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_100010920(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_100013C98(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_100010BB8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_100010D64(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100010DB8(uint64_t a1)
{
  v2 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v200 = *(v2 - 8);
  v201 = v2;
  v3 = *(v200 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v198 = &v176 - v7;
  v8 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v197 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v193 = &v176 - v13;
  __chkstk_darwin(v12);
  v196 = &v176 - v14;
  v15 = sub_100004F70(&qword_100082CD0, &qword_100068EC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v192 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v195 = &v176 - v20;
  v21 = __chkstk_darwin(v19);
  v191 = &v176 - v22;
  __chkstk_darwin(v21);
  v194 = &v176 - v23;
  v24 = type metadata accessor for String.Encoding();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000825D8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_100002D00(v29, qword_100082CB8);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  v33 = os_log_type_enabled(v31, v32);
  v199 = v6;
  if (v33)
  {
    v34 = a1;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v206 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_1000049B8(0xD00000000000001CLL, 0x800000010006B200, &v206);
    _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s", v35, 0xCu);
    sub_100005ED8(v36);

    a1 = v34;
  }

  v37 = dispatch thunk of FBKSInteraction.diagnostics.getter();
  if (!v38)
  {
    goto LABEL_12;
  }

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (!v39)
  {

LABEL_12:
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Donation doesn't have diagnostics text", v47, 2u);
    }

    return;
  }

  static String.Encoding.utf8.getter();
  v40 = String.data(using:allowLossyConversion:)();
  v42 = v41;

  (*(v25 + 8))(v28, v24);
  v190 = v42;
  if (v42 >> 60 == 15)
  {
    sub_100013CEC();
    v43 = swift_allocError();
    *v44 = 0xD000000000000024;
    v44[1] = 0x800000010006B130;
    v202 = v43;
    swift_willThrow();
    return;
  }

  v48 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v205[0] = 0;
  v50 = [v48 JSONObjectWithData:isa options:0 error:v205];

  v51 = *&v205[0];
  if (!v50)
  {
    v65 = v51;
    v66 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v202 = 0;
    goto LABEL_19;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100007018(&v206, v205);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  v54 = &type metadata for Any;
  if (os_log_type_enabled(v52, v53))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v189 = a1;
    v57 = v56;
    v204 = v56;
    *v55 = 136315138;
    sub_100007018(v205, &v203);
    v58 = String.init<A>(describing:)();
    v188 = v30;
    v59 = v40;
    v60 = v58;
    v61 = v48;
    v63 = v62;
    sub_100005ED8(v205);
    v64 = sub_1000049B8(v60, v63, &v204);
    v48 = v61;

    *(v55 + 4) = v64;
    v40 = v59;
    v54 = &type metadata for Any;
    _os_log_impl(&_mh_execute_header, v52, v53, "Annotations %s", v55, 0xCu);
    sub_100005ED8(v57);
    a1 = v189;
  }

  else
  {

    sub_100005ED8(v205);
  }

  sub_100007018(&v206, v205);
  v71 = sub_100004F70(&qword_100082828, &qword_100068ED0);
  if (!swift_dynamicCast())
  {
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v77, v78))
    {
      goto LABEL_36;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "Diagnostics JSON structure is not annotated content. Likely not an error";
    goto LABEL_35;
  }

  v187 = v48;
  v72 = v203;
  if (!v203[2] || (v73 = sub_10005BCB0(0x6E6F6973726576, 0xE700000000000000), (v74 & 1) == 0) || (sub_100007018(v72[7] + 32 * v73, v205), (swift_dynamicCast() & 1) == 0) || v203 != 1)
  {

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v77, v78))
    {
      goto LABEL_36;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "Diagnostics JSON is invalid version, likely not an error";
LABEL_35:
    _os_log_impl(&_mh_execute_header, v77, v78, v80, v79, 2u);

LABEL_36:
    sub_100013E3C(v40, v190);

LABEL_37:
    sub_100005ED8(&v206);
    return;
  }

  v177 = v40;
  v76 = 0;
  v183 = (v200 + 32);
  v180 = "encodeAnnotations(donation:)";
  v178 = (v200 + 48);
  v179 = "generatedContentAnnotation";
  *&v75 = 136315138;
  v184 = v75;
  v185 = v71;
  v189 = a1;
  while (1)
  {
    v81 = *(&off_10007DC30 + v76 + 32);
    if (v81 <= 1)
    {
      if (*(&off_10007DC30 + v76 + 32))
      {
        if (v72[2])
        {
          v126 = sub_10005BCB0(0xD00000000000001ALL, v180 | 0x8000000000000000);
          if (v127)
          {
            sub_100007018(v72[7] + 32 * v126, v205);
            if (!swift_dynamicCast())
            {

              v173 = 0x800000010006B1A0;
              sub_100013CEC();
              v66 = swift_allocError();
              v175 = 0xD00000000000002DLL;
              goto LABEL_115;
            }

            v188 = v76;
            v128 = v203;

            v129 = Logger.logObject.getter();
            v130 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              *&v205[0] = v132;
              *v131 = v184;
              v133 = Dictionary.description.getter();
              v135 = v129;
              v136 = sub_1000049B8(v133, v134, v205);

              *(v131 + 4) = v136;
              _os_log_impl(&_mh_execute_header, v135, v130, "generatedAnnotatedContent %s", v131, 0xCu);
              sub_100005ED8(v132);

              a1 = v189;
            }

            else
            {
            }

            dispatch thunk of FBKSInteraction.generatedContent.getter();
            v152 = v197;
            v160 = v202;
            sub_10000FB1C(v128, v197, v195);
            v202 = v160;
            if (v160)
            {
LABEL_110:

              sub_1000071C8(v152, &qword_100082CD8, &qword_100068EC8);
              sub_100005ED8(&v206);
              v66 = v202;
LABEL_116:
              v202 = 0;
              goto LABEL_117;
            }

            sub_1000071C8(v152, &qword_100082CD8, &qword_100068EC8);

            dispatch thunk of FBKSInteraction.generatedAnnotatedContent.setter();
            v161 = v192;
            dispatch thunk of FBKSInteraction.generatedAnnotatedContent.getter();
            v162 = (*v178)(v161, 1, v201);
            sub_1000071C8(v161, &qword_100082CD0, &qword_100068EC0);
            if (v162 != 1)
            {
              v163 = Logger.logObject.getter();
              v164 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v163, v164))
              {
                v165 = swift_slowAlloc();
                *v165 = 0;
                _os_log_impl(&_mh_execute_header, v163, v164, "Clearing non-annotated generated content", v165, 2u);
              }

              v166 = type metadata accessor for FBKSInteraction.Content();
              (*(*(v166 - 8) + 56))(v193, 1, 1, v166);
              dispatch thunk of FBKSInteraction.generatedContent.setter();
            }

LABEL_98:
            v54 = &type metadata for Any;
LABEL_99:
            v76 = v188;
            goto LABEL_40;
          }
        }

        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v137, v138))
        {
          goto LABEL_39;
        }

        v139 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v188 = v76;
        v141 = v54;
        v142 = a1;
        v143 = v148;
        *&v205[0] = v148;
        *v139 = v184;
        v144 = 0xD00000000000001ALL;
        v145 = v180 | 0x8000000000000000;
      }

      else
      {
        if (v72[2])
        {
          v84 = sub_10005BCB0(0xD000000000000019, v179 | 0x8000000000000000);
          if (v85)
          {
            sub_100007018(v72[7] + 32 * v84, v205);
            if (swift_dynamicCast())
            {
              v188 = v76;
              v86 = v203;

              v87 = Logger.logObject.getter();
              v88 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v87, v88))
              {
                v89 = swift_slowAlloc();
                v90 = swift_slowAlloc();
                *&v205[0] = v90;
                *v89 = v184;
                v91 = Dictionary.description.getter();
                v93 = v87;
                v94 = sub_1000049B8(v91, v92, v205);

                *(v89 + 4) = v94;
                _os_log_impl(&_mh_execute_header, v93, v88, "originalAnnotatedContent %s", v89, 0xCu);
                sub_100005ED8(v90);

                a1 = v189;
              }

              else
              {
              }

              dispatch thunk of FBKSInteraction.originalContent.getter();
              v152 = v196;
              v153 = v202;
              sub_10000FB1C(v86, v196, v194);
              v202 = v153;
              if (v153)
              {
                goto LABEL_110;
              }

              sub_1000071C8(v152, &qword_100082CD8, &qword_100068EC8);

              dispatch thunk of FBKSInteraction.originalAnnotatedContent.setter();
              v154 = v191;
              dispatch thunk of FBKSInteraction.originalAnnotatedContent.getter();
              v155 = (*v178)(v154, 1, v201);
              sub_1000071C8(v154, &qword_100082CD0, &qword_100068EC0);
              if (v155 != 1)
              {
                v156 = Logger.logObject.getter();
                v157 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v156, v157))
                {
                  v158 = swift_slowAlloc();
                  *v158 = 0;
                  _os_log_impl(&_mh_execute_header, v156, v157, "Clearing non-annotated original content", v158, 2u);
                }

                v159 = type metadata accessor for FBKSInteraction.Content();
                (*(*(v159 - 8) + 56))(v193, 1, 1, v159);
                dispatch thunk of FBKSInteraction.originalContent.setter();
              }

              goto LABEL_98;
            }

            v173 = 0x800000010006B1D0;
            sub_100013CEC();
            v66 = swift_allocError();
            v175 = 0xD00000000000002CLL;
LABEL_115:
            *v174 = v175;
            v174[1] = v173;
            swift_willThrow();
            sub_100005ED8(&v206);
            goto LABEL_116;
          }
        }

        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v137, v138))
        {
          goto LABEL_39;
        }

        v139 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v188 = v76;
        v141 = v54;
        v142 = a1;
        v143 = v147;
        *&v205[0] = v147;
        *v139 = v184;
        v145 = v179 | 0x8000000000000000;
        v144 = 0xD000000000000019;
      }

LABEL_38:
      *(v139 + 4) = sub_1000049B8(v144, v145, v205);
      _os_log_impl(&_mh_execute_header, v137, v138, "%s, is nil will skip", v139, 0xCu);
      sub_100005ED8(v143);
      a1 = v142;
      v54 = v141;
      v76 = v188;

LABEL_39:

      goto LABEL_40;
    }

    if (v81 == 2)
    {
      break;
    }

    if (v81 == 3)
    {
      if (!v72[2] || (v82 = sub_10005BCB0(0x74736F6E67616964, 0xEB00000000736369), (v83 & 1) == 0))
      {
        v137 = Logger.logObject.getter();
        v138 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v188 = v76;
          v141 = v54;
          v142 = a1;
          v143 = v146;
          *&v205[0] = v146;
          *v139 = v184;
          v144 = 0x74736F6E67616964;
          v145 = 0xEB00000000736369;
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      sub_100007018(v72[7] + 32 * v82, v205);
      if (!swift_dynamicCast())
      {

        v173 = 0x800000010006B160;
        sub_100013CEC();
        v66 = swift_allocError();
        v175 = 0xD00000000000001ELL;
        goto LABEL_115;
      }

      dispatch thunk of FBKSInteraction.diagnostics.setter();
    }

    else
    {

      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v119, v120))
      {
        LODWORD(v186) = v120;
        v188 = v76;
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v203 = v122;
        *v121 = v184;
        if (v72[2] && (v123 = sub_10005BCB0(0x6E6F6973726576, 0xE700000000000000), (v124 & 1) != 0))
        {
          v125 = a1;
          sub_100007018(v72[7] + 32 * v123, v205);
        }

        else
        {
          v125 = a1;
          memset(v205, 0, sizeof(v205));
        }

        sub_100004F70(&qword_100082860, &unk_1000683C0);
        v149 = String.init<A>(describing:)();
        v151 = sub_1000049B8(v149, v150, &v203);

        *(v121 + 4) = v151;
        _os_log_impl(&_mh_execute_header, v119, v186, "Version %s", v121, 0xCu);
        sub_100005ED8(v122);

        a1 = v125;
        v54 = &type metadata for Any;
        goto LABEL_99;
      }
    }

LABEL_40:
    if (++v76 == 5)
    {
      sub_100013E3C(v177, v190);

      goto LABEL_37;
    }
  }

  if (!v72[2] || (v95 = sub_10005BCB0(0x6E6F436172747865, 0xEC000000746E6574), (v96 & 1) == 0))
  {
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v188 = v76;
      v141 = v54;
      v142 = a1;
      v143 = v140;
      *&v205[0] = v140;
      *v139 = v184;
      v144 = 0x6E6F436172747865;
      v145 = 0xEC000000746E6574;
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  sub_100007018(v72[7] + 32 * v95, v205);
  sub_100004F70(&qword_100082CF0, &unk_100068ED8);
  if (!swift_dynamicCast())
  {

    v173 = 0x800000010006B180;
    sub_100013CEC();
    v66 = swift_allocError();
    v175 = 0xD00000000000001FLL;
    goto LABEL_115;
  }

  v97 = v203;
  v98 = v203[2];
  if (!v98)
  {

LABEL_101:
    dispatch thunk of FBKSInteraction.extraContent.setter();
    goto LABEL_40;
  }

  v176 = v72;
  *&v205[0] = _swiftEmptyArrayStorage;
  sub_100004FB8(0, v98, 0);
  v99 = 0;
  v186 = *&v205[0];
  v188 = v76;
  v182 = v97;
  v181 = v98;
  while (1)
  {
    if (v99 >= v97[2])
    {
      __break(1u);
    }

    v100 = v97[v99 + 4];

    v101 = Dictionary._bridgeToObjectiveC()().super.isa;
    v203 = 0;
    v102 = [v187 dataWithJSONObject:v101 options:0 error:&v203];

    v103 = v203;
    if (!v102)
    {
      v172 = v103;
      v66 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v202 = 0;
      goto LABEL_109;
    }

    v104 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v105;

    v107 = type metadata accessor for JSONDecoder();
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100013E50(&qword_100082D10);
    v110 = v199;
    v111 = v201;
    v112 = v202;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v202 = v112;
    if (v112)
    {
      break;
    }

    sub_100013C98(v104, v106);

    v113 = *v183;
    v114 = v198;
    (*v183)(v198, v110, v111);

    v115 = v186;
    *&v205[0] = v186;
    v117 = *(v186 + 16);
    v116 = *(v186 + 24);
    if (v117 >= v116 >> 1)
    {
      sub_100004FB8(v116 > 1, v117 + 1, 1);
      v114 = v198;
      v111 = v201;
      v115 = *&v205[0];
    }

    ++v99;
    *(v115 + 16) = v117 + 1;
    v118 = (*(v200 + 80) + 32) & ~*(v200 + 80);
    v186 = v115;
    v113((v115 + v118 + *(v200 + 72) * v117), v114, v111);
    v54 = &type metadata for Any;
    v76 = v188;
    v97 = v182;
    if (v181 == v99)
    {

      a1 = v189;
      v72 = v176;
      goto LABEL_101;
    }
  }

  sub_100013C98(v104, v106);

  v66 = v202;
  v202 = 0;
LABEL_109:
  sub_100005ED8(&v206);

LABEL_117:
  v40 = v177;
LABEL_19:
  v206 = v66;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  sub_100013DF0();
  if (swift_dynamicCast())
  {
    v67 = *&v205[0];
    if ([*&v205[0] code] == 3840)
    {

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Diagnostics string does not contain JSON. Likely not an error", v70, 2u);
      }

      sub_100013E3C(v40, v190);

      return;
    }
  }

  swift_errorRetain();
  v167 = Logger.logObject.getter();
  v168 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v167, v168))
  {
    v169 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    *v169 = 138412290;
    swift_errorRetain();
    v171 = _swift_stdlib_bridgeErrorToNSError();
    *(v169 + 4) = v171;
    *v170 = v171;
    _os_log_impl(&_mh_execute_header, v167, v168, "Error decoding annotate content: %@", v169, 0xCu);
    sub_1000071C8(v170, &qword_100082708, &qword_100068320);
  }

  swift_willThrow();
  sub_100013E3C(v40, v190);
  v202 = v66;
}

id sub_10001288C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = JSONEncoder.init()();
  type metadata accessor for FBKSInteraction.AnnotatedContent();
  sub_100013E50(&qword_100082CE0);
  v8 = v7;
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {
    goto LABEL_9;
  }

  v11 = v9;
  v12 = v10;
  v13 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v19[0] = 0;
  v8 = [v13 JSONObjectWithData:isa options:0 error:v19];

  if (!v8)
  {
    v8 = *&v19[0];
    _convertNSErrorToError(_:)();

LABEL_8:
    swift_willThrow();
    sub_100013C98(v11, v12);
LABEL_9:

    return v8;
  }

  v15 = *&v19[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004F70(&qword_100082828, &qword_100068ED0);
  if (!swift_dynamicCast())
  {
    sub_100013CEC();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    goto LABEL_8;
  }

  v8 = v18;
  if (a2)
  {
    sub_10005C614(0x64616F6C796170, 0xE700000000000000, v19);
    sub_100013C98(v11, v12);

    sub_1000071C8(v19, &qword_100082860, &unk_1000683C0);
    return v18;
  }

  else
  {
    sub_100013C98(v11, v12);
  }

  return v8;
}

void *sub_100012AFC(void *a1, uint64_t a2)
{
  v3 = v2;
  v72 = a2;
  v5 = sub_100004F70(&qword_100082CD0, &qword_100068EC0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v71 - v10;
  v12 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v81 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v80 = (&v71 - v18);
  __chkstk_darwin(v17);
  v20 = &v71 - v19;
  v73 = sub_100015ADC(_swiftEmptyArrayStorage);
  v82 = v73;
  v74 = a1;
  dispatch thunk of FBKSInteraction.originalAnnotatedContent.getter();
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_1000071C8(v11, &qword_100082CD0, &qword_100068EC0);
  }

  else
  {
    (*(v13 + 32))(v20, v11, v12);
    v22 = sub_10001288C(v20, 1);
    if (v2)
    {
      (*(v13 + 8))(v20, v12);
LABEL_10:

      return a1;
    }

    v23 = v22;
    v3 = 0;
    v88 = sub_100004F70(&qword_100082828, &qword_100068ED0);
    *&v87 = v23;
    sub_100007274(&v87, v83);
    v24 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = v24;
    sub_10005E1FC(v83, 0xD000000000000019, 0x800000010006B110, isUniquelyReferenced_nonNull_native);
    (*(v13 + 8))(v20, v12);
    v73 = v85;
    v82 = v85;
  }

  a1 = v74;
  dispatch thunk of FBKSInteraction.generatedAnnotatedContent.getter();
  v26 = v3;
  if (v21(v9, 1, v12) == 1)
  {
    sub_1000071C8(v9, &qword_100082CD0, &qword_100068EC0);
    goto LABEL_12;
  }

  v27 = v80;
  (*(v13 + 32))(v80, v9, v12);
  v28 = sub_10001288C(v27, 1);
  if (v26)
  {
    (*(v13 + 8))(v27, v12);
    goto LABEL_10;
  }

  v29 = v28;
  v88 = sub_100004F70(&qword_100082828, &qword_100068ED0);
  *&v87 = v29;
  sub_100007274(&v87, v83);
  v30 = v82;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v30;
  sub_10005E1FC(v83, 0xD00000000000001ALL, 0x800000010006B0F0, v31);
  (*(v13 + 8))(v27, v12);
  v73 = v85;
  v82 = v85;
LABEL_12:
  v32 = dispatch thunk of FBKSInteraction.extraContent.getter();
  v33 = *(v32 + 16);
  if (v33)
  {
    *&v83[0] = _swiftEmptyArrayStorage;
    sub_100004FF8(0, v33, 0);
    v34 = 0;
    v77 = v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v35 = *&v83[0];
    v75 = v33;
    v76 = v13 + 16;
    v78 = (v13 + 8);
    v79 = v12;
    while (1)
    {
      if (v34 >= *(v32 + 16))
      {
        __break(1u);
      }

      v80 = v35;
      (*(v13 + 16))(v81, v77 + *(v13 + 72) * v34, v12);
      v36 = type metadata accessor for JSONEncoder();
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      a1 = JSONEncoder.init()();
      sub_100013E50(&qword_100082CE0);
      v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v26)
      {

        goto LABEL_27;
      }

      v41 = v39;
      v42 = v40;
      v43 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&v87 = 0;
      v45 = [v43 JSONObjectWithData:isa options:0 error:&v87];

      if (!v45)
      {
        v50 = v87;

        _convertNSErrorToError(_:)();

        goto LABEL_26;
      }

      v46 = v87;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100004F70(&qword_100082828, &qword_100068ED0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_100013C98(v41, v42);
      v47 = v85;
      (*v78)(v81, v79);
      v35 = v80;
      *&v83[0] = v80;
      v49 = v80[2];
      v48 = v80[3];
      if (v49 >= v48 >> 1)
      {
        sub_100004FF8((v48 > 1), v49 + 1, 1);
        v35 = *&v83[0];
      }

      ++v34;
      v35[2] = (v49 + 1);
      v35[v49 + 4] = v47;
      v26 = 0;
      v12 = v79;
      if (v75 == v34)
      {

        v52 = v82;
        goto LABEL_28;
      }
    }

    sub_100013CEC();
    swift_allocError();
    *v51 = 0;
    v51[1] = 0;
LABEL_26:
    swift_willThrow();

    sub_100013C98(v41, v42);
    v12 = v79;
LABEL_27:
    (*v78)(v81, v12);
  }

  else
  {

    v35 = _swiftEmptyArrayStorage;
    v52 = v73;
LABEL_28:
    v88 = sub_100004F70(&qword_100082CF0, &unk_100068ED8);
    *&v87 = v35;
    sub_100007274(&v87, v83);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v52;
    sub_10005E1FC(v83, 0x6E6F436172747865, 0xEC000000746E6574, v53);
    v54 = v85;
    v82 = v85;
    v55 = dispatch thunk of FBKSInteraction.diagnostics.getter();
    if (v56)
    {
      v88 = &type metadata for String;
      *&v87 = v55;
      *(&v87 + 1) = v56;
      sub_100007274(&v87, v83);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v54;
      sub_10005E1FC(v83, 0x74736F6E67616964, 0xEB00000000736369, v57);
      v58 = v85;
    }

    else
    {
      sub_10005C614(0x74736F6E67616964, 0xEB00000000736369, &v87);
      sub_1000071C8(&v87, &qword_100082860, &unk_1000683C0);
      v58 = v82;
    }

    v88 = &type metadata for Int;
    *&v87 = 1;
    sub_100007274(&v87, v83);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v85 = v58;
    sub_10005E1FC(v83, 0x6E6F6973726576, 0xE700000000000000, v59);
    v60 = objc_opt_self();
    v61 = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v87 = 0;
    v62 = [v60 dataWithJSONObject:v61 options:v72 error:&v87];

    v63 = v87;
    if (v62)
    {
      v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      sub_100013D40(v64, v66);
      v67 = sub_100010BB8(v64, v66);
      if (v68)
      {
        a1 = v67;
        sub_100013C98(v64, v66);
      }

      else
      {
        v85 = v64;
        v86 = v66;
        sub_100013D40(v64, v66);
        sub_100004F70(&qword_100082CF8, &qword_100068EE8);
        if (swift_dynamicCast())
        {
          sub_100013D94(v83, &v87);
          sub_100013DAC(&v87, v88);
          HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
          sub_100013C98(v64, v66);
          if (HasContiguous)
          {
            sub_100013DAC(&v87, v88);
            dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
            sub_100013C98(v64, v66);
            a1 = *&v83[0];
            sub_100005ED8(&v87);
            return a1;
          }

          sub_100005ED8(&v87);
        }

        else
        {
          sub_100013C98(v64, v66);
          v84 = 0;
          memset(v83, 0, sizeof(v83));
          sub_1000071C8(v83, &qword_100082D00, &unk_100068EF0);
        }

        a1 = sub_100010994(v64, v66);
      }

      sub_100013C98(v64, v66);
      return a1;
    }

    a1 = v63;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return a1;
}

void sub_100013608(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004F70(&qword_100082CD0, &qword_100068EC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v14 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v50 = &v47 - v19;
  if (qword_1000825D8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_100002D00(v20, qword_100082CB8);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  v24 = os_log_type_enabled(v22, v23);
  v52 = v18;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v21;
    v27 = v4;
    v28 = v26;
    v53 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_1000049B8(0xD00000000000001CLL, 0x800000010006B0D0, &v53);
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s", v25, 0xCu);
    sub_100005ED8(v28);
    v4 = v27;
    v2 = v1;
  }

  v29 = dispatch thunk of FBKSDonation.usesAnnotatedContent.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v32 = os_log_type_enabled(v30, v31);
  if (v29)
  {
    if (v32)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Writing AnnotatedContent flow to write Donation", v33, 2u);
    }

    sub_100012AFC(a1, 0);
    if (!v2)
    {
      dispatch thunk of FBKSInteraction.diagnostics.setter();
      dispatch thunk of FBKSInteraction.diagnostics.getter();
      if (v34)
      {
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 134217984;
          *(v37 + 4) = String.count.getter();

          _os_log_impl(&_mh_execute_header, v35, v36, "diagnostics JSON string size: %ld", v37, 0xCu);
        }

        else
        {
        }
      }

      dispatch thunk of FBKSInteraction.originalAnnotatedContent.getter();
      v48 = *(v5 + 48);
      if (v48(v13, 1, v4))
      {
        sub_1000071C8(v13, &qword_100082CD0, &qword_100068EC0);
        v39 = 1;
        v40 = v50;
      }

      else
      {
        v41 = v49;
        (*(v5 + 16))(v49, v13, v4);
        sub_1000071C8(v13, &qword_100082CD0, &qword_100068EC0);
        v40 = v50;
        FBKSInteraction.AnnotatedContent.payload.getter();
        (*(v5 + 8))(v41, v4);
        v39 = 0;
      }

      v42 = type metadata accessor for FBKSInteraction.Content();
      v50 = *(*(v42 - 8) + 56);
      (v50)(v40, v39, 1, v42);
      dispatch thunk of FBKSInteraction.originalContent.setter();
      v43 = v51;
      dispatch thunk of FBKSInteraction.generatedAnnotatedContent.getter();
      if (v48(v43, 1, v4))
      {
        sub_1000071C8(v43, &qword_100082CD0, &qword_100068EC0);
        v44 = 1;
        v45 = v52;
      }

      else
      {
        v46 = v49;
        (*(v5 + 16))(v49, v43, v4);
        sub_1000071C8(v43, &qword_100082CD0, &qword_100068EC0);
        v45 = v52;
        FBKSInteraction.AnnotatedContent.payload.getter();
        (*(v5 + 8))(v46, v4);
        v44 = 0;
      }

      (v50)(v45, v44, 1, v42);
      dispatch thunk of FBKSInteraction.generatedContent.setter();
    }
  }

  else
  {
    if (v32)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Donation doesn't have annotated content", v38, 2u);
    }
  }
}

uint64_t sub_100013C98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100013CEC()
{
  result = qword_100082CE8;
  if (!qword_100082CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082CE8);
  }

  return result;
}

uint64_t sub_100013D40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100013D94(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100013DAC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100013DF0()
{
  result = qword_100082D08;
  if (!qword_100082D08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100082D08);
  }

  return result;
}

uint64_t sub_100013E3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100013C98(a1, a2);
  }

  return a1;
}

uint64_t sub_100013E50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FBKSInteraction.AnnotatedContent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013E94(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100013EAC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100013EB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_100013F68(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_100013F98()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for FBKSLaunchConfiguration()) init];
  v3 = *v1;
  v4 = v1[1];

  dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.setter();
  v5 = v1[2];
  v6 = v1[3];

  dispatch thunk of FBKSLaunchConfiguration.localizedPromptMessage.setter();
  v7 = v1[4];
  v8 = v1[5];

  dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewProceedButtonTitle.setter();
  v9 = v1[6];
  v10 = v1[7];

  dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewDeclineButtonTitle.setter();
  v11 = *(v1 + 64);
  dispatch thunk of FBKSLaunchConfiguration.skipsPrompt.setter();
  v12 = *(v1 + 65);
  dispatch thunk of FBKSLaunchConfiguration.alwaysLaunchInRemoteAlert.setter();
  v13 = v1[9];
  FBKSPromptStyle.rawValue.getter();
  result = FBKSPromptStyle.init(rawValue:)();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    dispatch thunk of FBKSLaunchConfiguration.promptStyle.setter();
    v16 = *(v1 + 80);
    dispatch thunk of FBKSLaunchConfiguration.notifyImmediately.setter();
    return v2;
  }

  return result;
}

uint64_t sub_1000142C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&unk_100083D50, &qword_100068FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_100014334(uint64_t a1, uint64_t a2)
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

uint64_t sub_100014358(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000143B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100014430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v5 = type metadata accessor for FBKSForm.Question();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v46 - v11;
  v12 = sub_100004F70(&qword_100082D28, &qword_100069050);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v56 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v46 - v16;
  objc_allocWithZone(type metadata accessor for FBKSForm());

  v18 = FBKSForm.init(identifier:)();
  v19 = a4 + 64;
  v20 = 1 << *(a4 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a4 + 64);
  v47 = (v20 + 63) >> 6;
  v48 = v6 + 16;
  v57 = (v6 + 32);
  v51 = v6;
  v52 = a4;
  v53 = (v6 + 8);

  v24 = 0;
  v49 = v17;
  v54 = a4 + 64;
  v55 = v5;
  while (v22)
  {
    v25 = v24;
LABEL_15:
    v29 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v30 = v29 | (v25 << 6);
    v32 = v51;
    v31 = v52;
    v33 = v50;
    (*(v51 + 16))(v50, *(v52 + 48) + *(v51 + 72) * v30, v5);
    v34 = *(*(v31 + 56) + 8 * v30);
    v35 = sub_100004F70(&qword_100082D30, &qword_100069058);
    v36 = *(v35 + 48);
    v37 = *(v32 + 32);
    v38 = v56;
    v37(v56, v33, v5);
    *&v38[v36] = v34;
    v28 = v38;
    (*(*(v35 - 8) + 56))(v38, 0, 1, v35);

    v17 = v49;
LABEL_16:
    sub_1000148B0(v28, v17);
    v39 = sub_100004F70(&qword_100082D30, &qword_100069058);
    if ((*(*(v39 - 8) + 48))(v17, 1, v39) == 1)
    {

      dispatch thunk of FBKSForm.authenticationMethod.setter();
      return v18;
    }

    v40 = *&v17[*(v39 + 48)];
    (*v57)(v10, v17, v5);
    v41 = *(v40 + 16);
    if (v41)
    {
      v42 = (v40 + 40);
      do
      {
        v43 = *(v42 - 1);
        v44 = *v42;

        dispatch thunk of FBKSForm.prefill(question:answer:)();

        v42 += 2;
        --v41;
      }

      while (v41);
    }

    v5 = v55;
    result = (*v53)(v10, v55);
    v19 = v54;
  }

  if (v47 <= v24 + 1)
  {
    v26 = v24 + 1;
  }

  else
  {
    v26 = v47;
  }

  v27 = v26 - 1;
  v28 = v56;
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v47)
    {
      v45 = sub_100004F70(&qword_100082D30, &qword_100069058);
      (*(*(v45 - 8) + 56))(v28, 1, 1, v45);
      v22 = 0;
      v24 = v27;
      goto LABEL_16;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000148B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082D28, &qword_100069050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100014920(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001492C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100014974(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t CFBBiomeDonator.__allocating_init()()
{
  v0 = swift_allocObject();
  CFBBiomeDonator.init()();
  return v0;
}

void *CFBBiomeDonator.init()()
{
  swift_defaultActor_initialize();
  v1 = [BiomeLibrary() Feedback];
  swift_unknownObjectRelease();
  v2 = [v1 EvaluationResponse];
  swift_unknownObjectRelease();
  v3 = [v2 source];

  v0[14] = v3;
  v4 = [BiomeLibrary() Feedback];
  swift_unknownObjectRelease();
  v5 = [v4 TextToTextEvaluationData];
  swift_unknownObjectRelease();
  v6 = [v5 source];

  v0[15] = v6;
  v7 = [BiomeLibrary() Feedback];
  swift_unknownObjectRelease();
  v8 = [v7 TextToImageEvaluationData];
  swift_unknownObjectRelease();
  v9 = [v8 source];

  v0[16] = v9;
  v10 = [BiomeLibrary() Feedback];
  swift_unknownObjectRelease();
  v11 = [v10 TextImageToImageEvaluationData];
  swift_unknownObjectRelease();
  v12 = [v11 source];

  v0[17] = v12;
  return v0;
}

void CFBBiomeDonator.write(donation:)(void *a1)
{
  sub_100013608(a1);
  if (!v2)
  {
    v4 = sub_10002F1B8();
    if (v4)
    {
      if (v4 == 1)
      {
        sub_100008714(0, &qword_100082D40, BMFeedbackTextToImageEvaluationData_ptr);
        v5 = sub_10002FED8(a1);
        v6 = v1[16];
      }

      else
      {
        sub_100008714(0, &qword_100082D38, BMFeedbackTextImageToImageEvaluationData_ptr);
        v5 = sub_1000303F0(a1);
        v6 = v1[17];
      }
    }

    else
    {
      sub_100008714(0, &qword_100082D48, BMFeedbackTextToTextEvaluationData_ptr);
      v5 = sub_10002FE9C(a1);
      v6 = v1[15];
    }

    [v6 sendEvent:v5];
  }
}

void CFBBiomeDonator.write(evaluation:)(void *a1)
{
  v3 = v1;
  sub_100008714(0, &qword_100082D50, BMFeedbackEvaluationResponse_ptr);
  v5 = sub_1000308C0(a1);
  if (!v2)
  {
    v6 = v5;
    [*(v3 + 112) sendEvent:v5];
  }
}

void CFBBiomeDonator.invalidate(evaluationID:)()
{
  v1 = v0;
  v2 = objc_allocWithZone(BMFeedbackEvaluationResponse);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithEvaluationUuid:isa userResponse:6];

  [*(v1 + 112) sendEvent:v4];
}

uint64_t CFBBiomeDonator.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100014ED4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004F70(&qword_100082E60, &unk_100069158);
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_100007018(*(a1 + 56) + 32 * v14, v34);
        *&v33 = v16;
        *(&v33 + 1) = v17;
        v31 = v33;
        v32[0] = v34[0];
        v32[1] = v34[1];
        v18 = v33;
        sub_100007274(v32, &v25);

        sub_100004F70(&qword_100082860, &unk_1000683C0);
        swift_dynamicCast();
        v29 = v27;
        v30 = v28;
        v26 = v27;
        v27 = v28;
        result = sub_10005BCB0(v18, *(&v18 + 1));
        if (v19)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v18;
          v11 = result;

          result = sub_1000160C4(&v26, v2[7] + 32 * v11);
          v8 = v12;
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
          *(v2[6] + 16 * result) = v18;
          v20 = (v2[7] + 32 * result);
          v21 = v27;
          *v20 = v26;
          v20[1] = v21;
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
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

uint64_t sub_100015148(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004F70(&unk_100083D30, &qword_100069138);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100007274(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100007274(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_100007274(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100015410(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004F70(&qword_100082E38, &qword_100069128);
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
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_100007274(&v27, v29);
        sub_100007274(v29, v30);
        sub_100007274(v30, &v28);
        result = sub_10005BCB0(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100005ED8(v12);
          result = sub_100007274(&v28, v12);
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
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_100007274(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
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

unint64_t sub_100015668(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v3 = 0xD000000000000016;
    if (a1 != 2)
    {
      v3 = 0xD000000000000048;
    }

    v4 = 0xD000000000000012;
    if (!a1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      _StringGuts.grow(_:)(29);

      v5._countAndFlagsBits = static Strings.fbaBundleIdentifier.getter();
      String.append(_:)(v5);

      return 0xD00000000000001BLL;
    }
  }

  else
  {
    v1 = 0xD00000000000002DLL;
    if (a1 != 7)
    {
      v1 = 0xD00000000000001FLL;
    }

    if (a1 == 6)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1000157FC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100015E48(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100015834(uint64_t a1)
{
  v2 = sub_1000161A0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100015870(uint64_t a1)
{
  v2 = sub_1000161A0();
  v3 = sub_1000161F4();
  v4 = sub_100007EA4();

  return Error<>._code.getter(a1, v2, v3, v4);
}

unint64_t sub_1000158E0()
{
  v1 = *v0;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = sub_100015668(v1);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_100015ADC(inited);
  swift_setDeallocating();
  sub_1000071C8(inited + 32, &qword_100082E58, &qword_100069150);
  return v6;
}

unint64_t sub_1000159A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004F70(&unk_100083D30, &qword_100069138);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C0A0(v4, v13, &unk_100083920, qword_1000693D0);
      result = sub_10005BC6C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100007274(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100015ADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004F70(&qword_100082E38, &qword_100069128);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C0A0(v4, &v13, &qword_100082E58, &qword_100069150);
      v5 = v13;
      v6 = v14;
      result = sub_10005BCB0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007274(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100015C0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004F70(&qword_100082E40, &qword_100069130);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10005BCB0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100015D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004F70(&qword_100082E48, &qword_100069140);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C0A0(v4, &v11, &qword_100082E50, &qword_100069148);
      v5 = v11;
      result = sub_10005BD28(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100007274(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100015E48(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

id sub_100015E58(uint64_t a1, unint64_t a2)
{
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, SharedLog);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000049B8(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_100005ED8(v8);
  }

  sub_100004F70(&qword_100082E30, &qword_100069120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v11 = sub_100015C0C(inited);
  swift_setDeallocating();
  sub_1000071C8(inited + 32, &qword_100083430, &qword_1000696F0);
  static Strings.Daemon.errorDomain.getter();
  sub_100015410(v11);

  v12 = objc_allocWithZone(NSError);
  v13 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v12 initWithDomain:v13 code:0 userInfo:isa];

  return v15;
}

uint64_t sub_1000160C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082860, &unk_1000683C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001614C()
{
  result = qword_100082E68;
  if (!qword_100082E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082E68);
  }

  return result;
}

unint64_t sub_1000161A0()
{
  result = qword_100082E70;
  if (!qword_100082E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082E70);
  }

  return result;
}

unint64_t sub_1000161F4()
{
  result = qword_100082E78;
  if (!qword_100082E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100082E78);
  }

  return result;
}

uint64_t sub_100016248(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_100018BB8(&qword_100082EB8, &type metadata accessor for FBKSInteraction.FeatureDomain), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_100018BB8(&qword_100082EC0, &type metadata accessor for FBKSInteraction.FeatureDomain);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_100016460()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100082E88);
  sub_100002D00(v0, qword_100082E88);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000164D4()
{
  sub_100004F70(&qword_100082EC8, &qword_1000692F8);
  v0 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000692D0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for FBKSInteraction.FeatureDomain.mailSummarization(_:), v0);
  v6(v5 + v2, enum case for FBKSInteraction.FeatureDomain.messagesSummarization(_:), v0);
  v7 = sub_10001796C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100082EA0 = v7;
  return result;
}

uint64_t sub_100016618()
{
  v1 = v0;
  v2 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000192A8(v1, v10, type metadata accessor for CFBDonationCheck.Result.Invalid);
  v11 = sub_100004F70(&qword_100082EA8, &qword_1000692E0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    return 0x676E696C706D6173;
  }

  v13 = &v10[*(v11 + 48)];
  v14 = *v13;
  v15 = v13[1];
  (*(v3 + 32))(v6, v10, v2);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  v16 = FBKSInteraction.FeatureDomain.description.getter();
  v18 = v17;

  v22 = v16;
  v23 = v18;
  v19._object = 0x800000010006B5E0;
  v19._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v14;
  v20._object = v15;
  String.append(_:)(v20);

  v12 = v22;
  (*(v3 + 8))(v6, v2);
  return v12;
}

uint64_t sub_10001687C(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a1 - 8) + 64);
  __chkstk_darwin(v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000192A8(v3, v12, type metadata accessor for CFBDonationCheck.Result);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return 0x64696C6176;
  }

  sub_100019310(v12, v9);
  v14 = sub_100016618();
  sub_100019374(v9);
  return v14;
}

uint64_t sub_1000169E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FBKSInteraction.AnnotatedContent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004F70(&qword_100082CD0, &qword_100068EC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  dispatch thunk of FBKSInteraction.originalAnnotatedContent.getter();
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_1000071C8(v10, &qword_100082CD0, &qword_100068EC0);
    v15 = type metadata accessor for FBKSInteraction.Content();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v14, 1, 1, v15);
    dispatch thunk of FBKSInteraction.originalContent.getter();
    result = (*(v16 + 48))(v14, 1, v15);
    if (result != 1)
    {
      return sub_1000071C8(v14, &qword_100082CD8, &qword_100068EC8);
    }
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_1000071C8(v10, &qword_100082CD0, &qword_100068EC0);
    FBKSInteraction.AnnotatedContent.payload.getter();
    (*(v3 + 8))(v6, v2);
    v18 = type metadata accessor for FBKSInteraction.Content();
    v19 = *(v18 - 8);
    v20 = *(v19 + 56);
    v20(v14, 0, 1, v18);
    (*(v19 + 32))(a1, v14, v18);
    return (v20)(a1, 0, 1, v18);
  }

  return result;
}

uint64_t sub_100016D08(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100016DC8, 0, 0);
}

uint64_t sub_100016DC8()
{
  v37 = v0;
  v1 = sub_1000175C0(0x20000000000001uLL);
  if (v1 != 0x20000000000000 && vcvtd_n_f64_u64(v1, 0x35uLL) > 1.0)
  {
    if (qword_1000825E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100002D00(v2, qword_100082E88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Dropping donation due to sampling rate", v5, 2u);
    }

    v6 = v0[2];

    v7 = sub_100004F70(&qword_100082EA8, &qword_1000692E0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = 0;
    goto LABEL_19;
  }

  if (qword_1000825E8 != -1)
  {
    swift_once();
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v12 = v0[4];
  v13 = qword_100082EA0;
  dispatch thunk of FBKSInteraction.featureDomain.getter();
  LOBYTE(v11) = sub_100016248(v9, v13);
  v14 = *(v10 + 8);
  v14(v9, v12);
  if ((v11 & 1) == 0)
  {
    v8 = 1;
LABEL_19:
    v31 = v0[6];
    v32 = v0[2];
    v33 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
    (*(*(v33 - 8) + 56))(v32, v8, 1, v33);

    v34 = v0[1];

    return v34();
  }

  if (qword_1000825E0 != -1)
  {
    swift_once();
  }

  v15 = v0[3];
  v16 = type metadata accessor for Logger();
  v0[7] = sub_100002D00(v16, qword_100082E88);
  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[6];
    v21 = v0[3];
    v22 = v0[4];
    v23 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v23 = 136315138;
    dispatch thunk of FBKSInteraction.featureDomain.getter();
    sub_100018BB8(&qword_100082EB0, &type metadata accessor for FBKSInteraction.FeatureDomain);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v14(v20, v22);
    v27 = sub_1000049B8(v24, v26, &v36);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Feature domain: %s is contained within domains to check spotlight index dupes, will validate", v23, 0xCu);
    sub_100005ED8(v35);
  }

  v28 = swift_task_alloc();
  v0[8] = v28;
  *v28 = v0;
  v28[1] = sub_100017244;
  v29 = v0[3];

  return sub_100018304(v29);
}

uint64_t sub_100017244(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v6 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return _swift_task_switch(sub_100017344, 0, 0);
}

uint64_t sub_100017344()
{
  v25 = v0;
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[7];
    v3 = v0[10];

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[9];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000049B8(v6, v1, &v24);
      _os_log_impl(&_mh_execute_header, v4, v5, "Found duplicate donation ID: %s", v7, 0xCu);
      sub_100005ED8(v8);
    }

    v9 = v0[9];
    v11 = v0[2];
    v10 = v0[3];
    v12 = sub_100004F70(&qword_100082EA8, &qword_1000692E0);
    v13 = (v11 + *(v12 + 48));
    dispatch thunk of FBKSInteraction.featureDomain.getter();
    *v13 = v9;
    v13[1] = v1;
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    v14 = 0;
  }

  else
  {
    v15 = v0[7];
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "SpotlightID is not a duplicate", v18, 2u);
    }

    v14 = 1;
  }

  v19 = v0[6];
  v20 = v0[2];
  v21 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  (*(*(v21 - 8) + 56))(v20, v14, 1, v21);

  v22 = v0[1];

  return v22();
}

unint64_t sub_1000175C0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10001764C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100004F70(&qword_100082ED8, &qword_100069308);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100018BB8(&qword_100082EE0, &type metadata accessor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100018BB8(&qword_100082EE8, &type metadata accessor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_10001796C(uint64_t a1)
{
  v2 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100004F70(&qword_100082ED0, &qword_100069300);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100018BB8(&qword_100082EB8, &type metadata accessor for FBKSInteraction.FeatureDomain);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100018BB8(&qword_100082EC0, &type metadata accessor for FBKSInteraction.FeatureDomain);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100017C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v4 = type metadata accessor for FBKSInteraction.StructuredValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = (&v47 - v11);
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v15 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v47 - v20;
  sub_1000169E8(&v47 - v20);
  sub_100018B48(v21, v19);
  v22 = type metadata accessor for FBKSInteraction.Content();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v19, 1, v22) == 1)
  {
    sub_1000071C8(v19, &qword_100082CD8, &qword_100068EC8);
LABEL_10:
    if (qword_1000825E0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100002D00(v33, qword_100082E88);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "donation has no structured content", v36, 2u);
    }

    goto LABEL_15;
  }

  if ((*(v23 + 88))(v19, v22) != enum case for FBKSInteraction.Content.structured(_:))
  {
    (*(v23 + 8))(v19, v22);
    goto LABEL_10;
  }

  (*(v23 + 96))(v19, v22);
  (*(v5 + 32))(v14, v19, v4);
  v24 = *(v5 + 16);
  v24(v12, v14, v4);
  v49 = *(v5 + 88);
  if (v49(v12, v4) == enum case for FBKSInteraction.StructuredValue.dictionary(_:))
  {
    v48 = v5;
    v47 = *(v5 + 96);
    v47(v12, v4);
    v25 = *v12;
    if (*(v25 + 16) && (v26 = sub_10005BCB0(a2, v50), (v27 & 1) != 0))
    {
      v28 = v48;
      v24(v9, (*(v25 + 56) + *(v48 + 72) * v26), v4);

      v29 = v49(v9, v4);
      v30 = *(v28 + 8);
      if (v29 == enum case for FBKSInteraction.StructuredValue.string(_:))
      {
        v30(v14, v4);
        sub_1000071C8(v21, &qword_100082CD8, &qword_100068EC8);
        v47(v9, v4);
        result = *v9;
        v32 = *(v9 + 1);
        return result;
      }

      v42 = v28;
      v30(v9, v4);
    }

    else
    {

      v42 = v48;
    }

    if (qword_1000825E0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100002D00(v43, qword_100082E88);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "dictionary is not a string", v46, 2u);
    }

    (*(v42 + 8))(v14, v4);
  }

  else
  {
    v37 = *(v5 + 8);
    v37(v12, v4);
    if (qword_1000825E0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100002D00(v38, qword_100082E88);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "structured content is not a dictionary", v41, 2u);
    }

    v37(v14, v4);
  }

LABEL_15:
  sub_1000071C8(v21, &qword_100082CD8, &qword_100068EC8);
  return 0;
}