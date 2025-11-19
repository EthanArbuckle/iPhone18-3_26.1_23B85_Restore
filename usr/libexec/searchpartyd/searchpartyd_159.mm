uint64_t sub_10107A1C8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C548);
  sub_1000076D4(v0, qword_10177C548);
  return Logger.init(subsystem:category:)();
}

uint64_t DeviceIdentitySignature.leafCertificate.getter()
{
  v1 = *(v0 + 16);
  sub_10002E98C(v1, *(v0 + 24));
  return v1;
}

uint64_t DeviceIdentitySignature.intermediateCertificate.getter()
{
  v1 = *(v0 + 32);
  sub_10002E98C(v1, *(v0 + 40));
  return v1;
}

uint64_t DeviceIdentitySignature.encodedCerts.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t DeviceIdentityUtility.signDataWithDeviceIdentity(dataToSign:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  return _swift_task_switch(sub_10107A308, v3, 0);
}

uint64_t sub_10107A308()
{
  v1 = *(*(v0 + 152) + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType);
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_10107A3B0;

  return sub_100526FA4(v0 + 80, v1);
}

uint64_t sub_10107A3B0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_10107A4C0, v2, 0);
}

uint64_t sub_10107A4C0()
{
  if (*(v0 + 122))
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 112);
    v3 = *(v0 + 120);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_10107A60C;
    v8 = *(v0 + 152);

    return sub_10107AD50(v2, v3, v4, v5, v6, v1);
  }

  else
  {
    sub_10107AA40(v0 + 80);
    sub_10107AA94();
    swift_allocError();
    *v10 = 4;
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10107A60C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 168);
  v8 = *v3;
  v6[22] = a1;
  v6[23] = a2;
  v6[24] = v2;

  if (v2)
  {
    v9 = v6[19];

    return _swift_task_switch(sub_10107A978, v9, 0);
  }

  else
  {
    sub_10107AA40((v6 + 10));
    v10 = swift_task_alloc();
    v6[25] = v10;
    *v10 = v8;
    v10[1] = sub_10107A7B8;
    v11 = v6[18];
    v12 = v6[19];
    v13 = v6[17];

    return sub_10107C1E4((v6 + 2), v13, v11, a1, a2);
  }
}

uint64_t sub_10107A7B8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 152);

  if (v0)
  {
    v7 = sub_10107A9DC;
  }

  else
  {
    v7 = sub_10107A900;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10107A900()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10107A978()
{
  sub_10107AA40(v0 + 80);
  v1 = *(v0 + 192);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10107A9DC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_10107AA94()
{
  result = qword_1016C5158;
  if (!qword_1016C5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5158);
  }

  return result;
}

uint64_t sub_10107AAE8()
{
  v1 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  swift_beginAccess();
  sub_1000D3410(v0 + v13, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000B3A8(v4, &unk_101696900, &unk_10138B1E0);
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    static Date.trustedNow.getter(v10);
    v14 = static Date.< infix(_:_:)();
    v15 = *(v6 + 8);
    v15(v10, v5);
    if ((v14 & 1) != 0 && (v16 = *(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey)) != 0)
    {
      v17 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs;
      v18 = *(*(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) + 16);
      v19 = *(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey);
      v20 = v16;
      v15(v12, v5);
      if (v18 == 2)
      {
        v21 = *(v0 + v17);

        return v19;
      }
    }

    else
    {
      v15(v12, v5);
    }
  }

  return 0;
}

uint64_t sub_10107AD50(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 696) = v6;
  *(v7 + 688) = a6;
  *(v7 + 680) = a5;
  *(v7 + 672) = a4;
  *(v7 + 664) = a3;
  *(v7 + 777) = a2;
  *(v7 + 656) = a1;
  v8 = type metadata accessor for Date();
  *(v7 + 704) = v8;
  v9 = *(v8 - 8);
  *(v7 + 712) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 720) = swift_task_alloc();
  *(v7 + 728) = swift_task_alloc();

  return _swift_task_switch(sub_10107AE34, v6, 0);
}

uint64_t sub_10107AE34()
{
  v61 = v0;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 632) = 0x7365547265646E75;
  *(v0 + 640) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 776))
  {
    sub_10107AA94();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
    v3 = *(v0 + 728);
    v4 = *(v0 + 720);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 696);
  v8 = sub_10107AAE8();
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    v12 = *(v0 + 728);
    v13 = *(v0 + 720);

    v14 = *(v0 + 8);

    return v14(v10, v11);
  }

  v15 = *(v0 + 656);
  static Date.trustedNow.getter(*(v0 + 720));
  if ((v15 * 60) >> 64 == (60 * v15) >> 63)
  {
    v16 = *(v0 + 728);
    v17 = *(v0 + 720);
    v18 = *(v0 + 712);
    v19 = *(v0 + 704);
    v20 = *(v0 + 777);
    v21 = *(v0 + 656);
    Date.addingTimeInterval(_:)();
    v22 = *(v18 + 8);
    *(v0 + 736) = v22;
    *(v0 + 744) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v17, v19);
    *(v0 + 648) = &_swiftEmptyDictionarySingleton;
    *(v0 + 584) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 592) = v23;
    AnyHashable.init<A>(_:)();
    *(v0 + 304) = &type metadata for Int;
    *(v0 + 280) = v21;
    sub_1001E6224((v0 + 280), (v0 + 312));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60[0] = &_swiftEmptyDictionarySingleton;
    sub_100FFAB54((v0 + 312), v0 + 96, isUniquelyReferenced_nonNull_native);
    sub_100476E48(v0 + 96);
    if (v20 == 1)
    {
      *(v0 + 616) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 624) = v25;
      AnyHashable.init<A>(_:)();
      sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10138BBE0;
      *(v26 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v26 + 40) = v27;
      *(v26 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v26 + 56) = v28;
      *(v0 + 240) = sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
      *(v0 + 216) = v26;
      sub_1001E6224((v0 + 216), (v0 + 440));
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v60[0] = &_swiftEmptyDictionarySingleton;
      sub_100FFAB54((v0 + 440), v0 + 56, v29);
      sub_100476E48(v0 + 56);
    }

    v1 = v0 + 648;
    v30 = *(v0 + 688);
    v31 = *(v0 + 680);
    v32 = *(v0 + 672);
    v33 = *(v0 + 664);
    *(v0 + 568) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 576) = v34;
    AnyHashable.init<A>(_:)();
    *(v0 + 400) = &type metadata for String;
    *(v0 + 376) = v33;
    *(v0 + 384) = v32;
    sub_1001E6224((v0 + 376), (v0 + 408));

    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFAB54((v0 + 408), v0 + 136, v35);
    sub_100476E48(v0 + 136);
    *(v0 + 536) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 544) = v36;
    AnyHashable.init<A>(_:)();
    *(v0 + 496) = &type metadata for String;
    *(v0 + 472) = v31;
    *(v0 + 480) = v30;
    sub_1001E6224((v0 + 472), (v0 + 504));

    v37 = swift_isUniquelyReferenced_nonNull_native();
    sub_100FFAB54((v0 + 504), v0 + 176, v37);
    sub_100476E48(v0 + 176);
    *(v0 + 552) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 560) = v38;
    AnyHashable.init<A>(_:)();
    *(v0 + 368) = &type metadata for Int;
    *(v0 + 344) = 1;
    sub_1001E6224((v0 + 344), (v0 + 248));
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v60[0] = &_swiftEmptyDictionarySingleton;
    sub_100FFAB54((v0 + 248), v0 + 16, v39);
    sub_100476E48(v0 + 16);
    *(v0 + 648) = &_swiftEmptyDictionarySingleton;
    if (qword_1016951C0 == -1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_15:
  v40 = *(v0 + 696);
  v41 = type metadata accessor for Logger();
  sub_1000076D4(v41, qword_10177C548);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v0 + 696);
    v45 = swift_slowAlloc();
    v60[0] = swift_slowAlloc();
    *v45 = 136446466;
    v46 = sub_100526E1C(*(v44 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType));
    v48 = sub_1000136BC(v46, v47, v60);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;

    v49 = Dictionary.description.getter();
    v51 = v50;

    v52 = sub_1000136BC(v49, v51, v60);

    *(v45 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v42, v43, "Getting %{public}s attestation certs and key with options - %s.", v45, 0x16u);
    swift_arrayDestroy();
  }

  v53 = *(v0 + 728);
  v54 = *(v0 + 696);
  v55 = sub_10107E0C8(&qword_1016C52E8, type metadata accessor for DeviceIdentityUtility);
  v56 = swift_task_alloc();
  *(v0 + 752) = v56;
  v56[2] = v1;
  v56[3] = v54;
  v56[4] = v53;
  v57 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v58 = swift_task_alloc();
  *(v0 + 760) = v58;
  v59 = sub_1000BC4D4(&qword_1016C52F0, &qword_1013FFB80);
  *v58 = v0;
  v58[1] = sub_10107B608;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 600, v54, v55, 0xD000000000000062, 0x8000000101379490, sub_10107E110, v56, v59);
}

uint64_t sub_10107B608()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v9 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v4 = *(v2 + 696);
    v5 = sub_10107B7E4;
  }

  else
  {
    v6 = *(v2 + 752);
    v7 = *(v2 + 696);

    v5 = sub_10107B730;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10107B730()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[88];
  v5 = v0[81];

  v6 = v0[75];
  v7 = v0[76];
  v2(v3, v4);
  v8 = v0[91];
  v9 = v0[90];

  v10 = v0[1];

  return v10(v6, v7);
}

uint64_t sub_10107B7E4()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[88];
  v6 = v0[81];

  v3(v4, v5);
  v7 = v0[96];
  v8 = v0[91];
  v9 = v0[90];

  v10 = v0[1];

  return v10();
}

void sub_10107B894(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v25 = a3;
  v22 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v21 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  swift_beginAccess();
  v13 = *a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v9 + 16))(v12, v22, v8);
  v14 = v5;
  (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v5);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v6 + 80) + v16 + 8) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v15, v12, v8);
  *(v18 + v16) = v25;
  (*(v6 + 32))(v18 + v17, v21, v14);
  aBlock[4] = sub_10107E11C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10107C130;
  aBlock[3] = &unk_101662F68;
  v19 = _Block_copy(aBlock);

  v20 = isa;
  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v19);
}

void sub_10107BB90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v57 - v14;
  v16 = objc_autoreleasePoolPush();
  if (a3)
  {
    swift_errorRetain();
    if (qword_1016951C0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177C548);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "DeviceIdentityUtility: Unable to get attestation certs and key. Error - %{public}@.", v20, 0xCu);
      sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);
    }

    v64 = a3;
    goto LABEL_7;
  }

  if (!a1)
  {
    sub_10107AA94();
    v37 = swift_allocError();
    *v38 = 0;
    v64 = v37;
LABEL_7:
    sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88);
    CheckedContinuation.resume(throwing:)();
LABEL_8:
    objc_autoreleasePoolPop(v16);
    return;
  }

  if (!a2 || *(a2 + 16) != 2 || (v23 = sub_100514740(a2)) == 0)
  {
    sub_10107AA94();
    v35 = swift_allocError();
    *v36 = 1;
    v64 = v35;
    sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88);
    CheckedContinuation.resume(throwing:)();

    goto LABEL_8;
  }

  v58 = a6;
  v62 = a4;
  v60 = a1;
  if (v23 >> 62)
  {
    v56 = v23;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v23 = v56;
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v16;
  v59 = a5;
  v63 = v23;
  if (!v24)
  {
    v26 = _swiftEmptyArrayStorage;
LABEL_28:

    v39 = type metadata accessor for Date();
    v40 = *(v39 - 8);
    (*(v40 + 16))(v15, v58, v39);
    (*(v40 + 56))(v15, 0, 1, v39);
    v41 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
    v42 = v59;
    swift_beginAccess();
    sub_1008CCF08(v15, v42 + v41);
    swift_endAccess();
    v43 = *(v42 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs);
    *(v42 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = v26;

    v44 = *(v42 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey);
    v45 = v60;
    *(v42 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = v60;
    v46 = v45;

    v64 = v46;
    v65 = v26;
    sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88);
    CheckedContinuation.resume(returning:)();
    v16 = v61;
    goto LABEL_8;
  }

  if (v24 >= 1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      v26 = _swiftEmptyArrayStorage;
      do
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v28 = SecCertificateCopyData(v27);
        v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_100A5B734(0, *(v26 + 2) + 1, 1, v26);
        }

        v33 = *(v26 + 2);
        v32 = *(v26 + 3);
        if (v33 >= v32 >> 1)
        {
          v26 = sub_100A5B734((v32 > 1), v33 + 1, 1, v26);
        }

        ++v25;

        swift_unknownObjectRelease();
        *(v26 + 2) = v33 + 1;
        v34 = &v26[16 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v31;
      }

      while (v24 != v25);
    }

    else
    {
      v47 = (v23 + 32);
      v26 = _swiftEmptyArrayStorage;
      do
      {
        v48 = *v47;
        v49 = SecCertificateCopyData(v48);
        v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_100A5B734(0, *(v26 + 2) + 1, 1, v26);
        }

        v54 = *(v26 + 2);
        v53 = *(v26 + 3);
        if (v54 >= v53 >> 1)
        {
          v26 = sub_100A5B734((v53 > 1), v54 + 1, 1, v26);
        }

        *(v26 + 2) = v54 + 1;
        v55 = &v26[16 * v54];
        *(v55 + 4) = v50;
        *(v55 + 5) = v52;
        ++v47;
        --v24;
      }

      while (v24);
    }

    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_10107C130(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

uint64_t sub_10107C1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = type metadata accessor for HashAlgorithm();
  v6[24] = v7;
  v8 = *(v7 - 8);
  v6[25] = v8;
  v9 = *(v8 + 64) + 15;
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_10107C2D8, v5, 0);
}

uint64_t sub_10107C2D8()
{
  v38 = v0;
  if (*(*(v0 + 176) + 16) == 2)
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 168);
    v3 = *(v0 + 152);
    *(v0 + 120) = 0;
    isa = Data._bridgeToObjectiveC()().super.isa;
    Signature = SecKeyCreateSignature(v2, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, isa, (v0 + 120));
    *(v0 + 216) = Signature;

    if (Signature)
    {
      v6 = *(*(v0 + 184) + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType);
      v7 = swift_task_alloc();
      *(v0 + 224) = v7;
      *v7 = v0;
      v7[1] = sub_10107C808;

      return sub_100526FA4(v0 + 72, v6);
    }

    v13 = *(v0 + 120);
    if (v13)
    {
      type metadata accessor for CFError(0);
      sub_10107E0C8(&qword_1016B47F0, type metadata accessor for CFError);
      swift_allocError();
      *v14 = v13;
      if (qword_1016951C0 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 184);
      v16 = type metadata accessor for Logger();
      sub_1000076D4(v16, qword_10177C548);

      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 184);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v37 = v22;
        *v20 = 136446466;
        v23 = sub_100526E1C(*(v19 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType));
        v25 = sub_1000136BC(v23, v24, &v37);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2114;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 14) = v26;
        *v21 = v26;
        _os_log_impl(&_mh_execute_header, v17, v18, "Unable to sign the %{public}s data. Error - %{public}@.", v20, 0x16u);
        sub_10000B3A8(v21, &qword_10169BB30, &unk_10138B3C0);

        sub_100007BAC(v22);
      }

      goto LABEL_8;
    }

    if (qword_1016951C0 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 184);
    v28 = type metadata accessor for Logger();
    sub_1000076D4(v28, qword_10177C548);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 184);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136446210;
      v34 = sub_100526E1C(*(v31 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType));
      v36 = sub_1000136BC(v34, v35, &v37);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to sign the %{public}s data.", v32, 0xCu);
      sub_100007BAC(v33);
    }

    sub_10107AA94();
    swift_allocError();
    v10 = 2;
  }

  else
  {
    sub_10107AA94();
    swift_allocError();
    v10 = 1;
  }

  *v9 = v10;
LABEL_8:
  swift_willThrow();
  v11 = *(v0 + 208);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10107C808()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return _swift_task_switch(sub_10107C944, v2, 0);
}

uint64_t sub_10107C944()
{
  sub_10107AA40(v0 + 72);
  if ((*(v0 + 113) & 1) == 0)
  {
    v20 = *(v0 + 176);
    v21 = v20[4];
    v22 = v20[5];
    v23 = v20[6];
    v24 = v20[7];
    sub_100017D5C(v21, v22);
    sub_100017D5C(v23, v24);
    v45 = 0;
    v46 = 0;
LABEL_4:
    v25 = *(v0 + 208);
    v26 = *(v0 + 144);
    v27 = *(v0 + 216);
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *v26 = v28;
    v26[1] = v30;
    v26[2] = v21;
    v26[3] = v22;
    v26[4] = v23;
    v26[5] = v24;
    v26[6] = v46;
    v26[7] = v45;

    v31 = *(v0 + 8);
    goto LABEL_5;
  }

  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v4[4];
  v7 = v4[5];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = v4[6];
  v9 = v4[7];
  (*(v2 + 104))(v1, enum case for HashAlgorithm.sha256(_:), v3);
  sub_100017D5C(v6, v7);
  sub_100017D5C(v8, v9);
  v10 = Data.hash(algorithm:)();
  v12 = v11;
  sub_100016590(v8, v9);
  (*(v2 + 8))(v1, v3);
  *(v5 + 48) = v10;
  *(v5 + 56) = v12;
  sub_1000BC4D4(&qword_1016C52C8, &qword_1013FFB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x7374726563;
  v14 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v5;
  v15 = sub_100907E5C(inited);
  swift_setDeallocating();
  sub_10000B3A8(v14, &qword_1016C52D0, &qword_1013FFB68);
  v16 = type metadata accessor for JSONEncoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  *(v0 + 128) = v15;
  sub_1000BC4D4(&qword_1016C52D8, &unk_1013FFB70);
  sub_10107E03C();
  v33 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v35 = v34;

  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 136) = 0;
  v37 = [(objc_class *)isa compressedDataUsingAlgorithm:3 error:v0 + 136];

  v38 = *(v0 + 136);
  if (v37)
  {
    v39 = v38;
    v40 = [v37 base64EncodedStringWithOptions:0];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v42;
    v46 = v41;

    sub_100016590(v33, v35);

    v23 = 0;
    v21 = 0;
    v24 = 0xF000000000000000;
    v22 = 0xF000000000000000;
    goto LABEL_4;
  }

  v43 = *(v0 + 216);
  v44 = v38;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100016590(v33, v35);

  v19 = *(v0 + 208);

  v31 = *(v0 + 8);
LABEL_5:

  return v31();
}

uint64_t DeviceIdentityUtility.deinit()
{
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, &unk_101696900, &unk_10138B1E0);

  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DeviceIdentityUtility.__deallocating_deinit()
{
  sub_10000B3A8(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate, &unk_101696900, &unk_10138B1E0);

  v1 = *(v0 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10107CE00(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v9 = sub_1000BC4D4(&qword_1016C5310, &qword_1013FFE40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10107E338();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v19 = a3;
  v20 = 0;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v18, v19);
  if (!v5)
  {
    v18 = v16;
    v19 = v17;
    v20 = 1;
    sub_100017D5C(v16, v17);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v18, v19);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_10107CFC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_10107D01C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DeviceIdentityUtility()
{
  result = qword_1016C51A0;
  if (!qword_1016C51A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10107D0E4()
{
  sub_100157BAC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_10107D1B4()
{
  result = qword_1016C52C0;
  if (!qword_1016C52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C52C0);
  }

  return result;
}

uint64_t sub_10107D208(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7265706F72504B52;
  }

  else
  {
    v4 = 0x6669747265434B52;
  }

  if (v3)
  {
    v5 = 0xEF6E6F6974616369;
  }

  else
  {
    v5 = 0xEC00000073656974;
  }

  if (*a2)
  {
    v6 = 0x7265706F72504B52;
  }

  else
  {
    v6 = 0x6669747265434B52;
  }

  if (*a2)
  {
    v7 = 0xEC00000073656974;
  }

  else
  {
    v7 = 0xEF6E6F6974616369;
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

Swift::Int sub_10107D2C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10107D35C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10107D3E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10107D474@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AB48, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10107D4D4(uint64_t *a1@<X8>)
{
  v2 = 0x6669747265434B52;
  if (*v1)
  {
    v2 = 0x7265706F72504B52;
  }

  v3 = 0xEF6E6F6974616369;
  if (*v1)
  {
    v3 = 0xEC00000073656974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10107D528()
{
  if (*v0)
  {
    result = 0x7265706F72504B52;
  }

  else
  {
    result = 0x6669747265434B52;
  }

  *v0;
  return result;
}

uint64_t sub_10107D578@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10160AB48, v3);

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

uint64_t sub_10107D5DC(uint64_t a1)
{
  v2 = sub_10107E338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10107D618(uint64_t a1)
{
  v2 = sub_10107E338();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10107D674(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x747265434143;
    v6 = 0x6843657571696E55;
    if (a1 != 2)
    {
      v6 = 0x6E496F545344494FLL;
    }

    if (a1)
    {
      v5 = 0x444970696843;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6275504B4953;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x6574744174726373;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x754E6C6169726553;
    if (a1 != 4)
    {
      v3 = 0x79746964696C6156;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10107D7B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076F154();
  return Hasher._finalize()();
}

Swift::Int sub_10107D808()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076F154();
  return Hasher._finalize()();
}

unint64_t sub_10107D84C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10107E5BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10107D87C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10107D674(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10107D8C4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10107E5BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10107D8EC(uint64_t a1)
{
  v2 = sub_10107E2E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10107D928(uint64_t a1)
{
  v2 = sub_10107E2E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10107D964()
{
  _StringGuts.grow(_:)(114);
  v1._countAndFlagsBits = 0x3A7472654361633CLL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  countAndFlagsBits = v0->_countAndFlagsBits;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3A64497069686320;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  object = v0->_object;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A6469636520;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v29 = v0[1]._countAndFlagsBits;
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x497463656A626F20;
  v7._object = 0xEC000000203A7364;
  String.append(_:)(v7);
  v8 = v0[1]._object;
  v9._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x4E6C616972657320;
  v10._object = 0xEF203A7265626D75;
  String.append(_:)(v10);
  String.append(_:)(v0[2]);
  v11._object = 0x8000000101379470;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v30 = v0[3]._object;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x4B6D657473797320;
  v13._object = 0xEF203A6275507965;
  String.append(_:)(v13);
  v14 = v0[4]._countAndFlagsBits;
  v15 = v0[4]._object >> 62;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_9;
    }

    v16 = v14 + 16;
    v14 = *(v14 + 16);
    if (!__OFSUB__(*(v16 + 8), v14))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v15)
  {
    goto LABEL_9;
  }

  if (__OFSUB__(HIDWORD(v14), v14))
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x5079654B66657220;
  v18._object = 0xEC000000203A6275;
  String.append(_:)(v18);
  v19 = v0[5]._countAndFlagsBits;
  v20 = v0[5]._object >> 62;
  if (v20 > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_17;
    }

    v23 = v19 + 16;
    v21 = *(v19 + 16);
    v22 = *(v23 + 8);
    v24 = __OFSUB__(v22, v21);
    v19 = v22 - v21;
    if (!v24)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v20)
  {
    goto LABEL_17;
  }

  if (!__OFSUB__(HIDWORD(v19), v19))
  {
LABEL_17:
    v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v25);

    v26._countAndFlagsBits = 62;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_10107DCCC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C5300, &qword_1013FFE38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10107E2E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v22) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = v3[2];
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v22 = v3[3];
    v20[0] = 3;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[4];
    v15 = v3[5];
    LOBYTE(v22) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[6];
    LOBYTE(v22) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + 4);
    v22 = *(v3 + 4);
    v21 = 6;
    sub_1001022C4(&v24, v20);
    sub_1000E3190();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v22, *(&v22 + 1));
    v22 = *(v3 + 5);
    v23 = v22;
    v21 = 7;
    sub_1001022C4(&v23, v20);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v22, *(&v22 + 1));
    v17 = v3[7];
    LOBYTE(v22) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10107E03C()
{
  result = qword_1016C52E0;
  if (!qword_1016C52E0)
  {
    sub_1000BC580(&qword_1016C52D8, &unk_1013FFB70);
    sub_1002DE008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C52E0);
  }

  return result;
}

uint64_t sub_10107E0C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10107E11C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1000BC4D4(&qword_1016C52F8, &qword_1013FFB88) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v3 + v9);
  v12 = v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80));

  sub_10107BB90(a1, a2, a3, v3 + v8, v11, v12);
}

uint64_t sub_10107E234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10107E27C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_10107E2E4()
{
  result = qword_1016C5308;
  if (!qword_1016C5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5308);
  }

  return result;
}

unint64_t sub_10107E338()
{
  result = qword_1016C5318;
  if (!qword_1016C5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5318);
  }

  return result;
}

unint64_t sub_10107E3B0()
{
  result = qword_1016C5320;
  if (!qword_1016C5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5320);
  }

  return result;
}

unint64_t sub_10107E408()
{
  result = qword_1016C5328;
  if (!qword_1016C5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5328);
  }

  return result;
}

unint64_t sub_10107E460()
{
  result = qword_1016C5330;
  if (!qword_1016C5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5330);
  }

  return result;
}

unint64_t sub_10107E4B8()
{
  result = qword_1016C5338;
  if (!qword_1016C5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5338);
  }

  return result;
}

unint64_t sub_10107E510()
{
  result = qword_1016C5340;
  if (!qword_1016C5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5340);
  }

  return result;
}

unint64_t sub_10107E568()
{
  result = qword_1016C5348;
  if (!qword_1016C5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5348);
  }

  return result;
}

unint64_t sub_10107E5BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A440, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10107E618(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MessagingMessageContext();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!a1)
    {
      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
    }

    if (a1 == 1)
    {
      v22 = Strong;
      if (v52 != 1)
      {
        static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_10138BBE0;
        LOBYTE(aBlock) = 1;
        v30 = String.init<A>(describing:)();
        v32 = v31;
        *(v29 + 56) = &type metadata for String;
        v33 = sub_100008C00();
        *(v29 + 32) = v30;
        *(v29 + 40) = v32;
        *(v29 + 96) = &type metadata for Int;
        *(v29 + 104) = &protocol witness table for Int;
        v34 = v52;
        *(v29 + 64) = v33;
        *(v29 + 72) = v34;
        os_log(_:dso:log:_:_:)();
      }

      v23 = *(v6 + 8);
      sub_100D2577C(a5, &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = (*(v18 + 80) + 24) & ~*(v18 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v22;
      sub_100476E9C(v20, v25 + v24);
      v58 = sub_10107EF14;
      v59 = v25;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v56 = sub_100006684;
      v57 = &unk_1016632C8;
      v26 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v53 = _swiftEmptyArrayStorage;
      sub_10046EAC4();
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_10013A8AC();
      v27 = v51;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);
    }

    else
    {
      v47 = Strong;
      if (v52 != 1)
      {
        static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_10138BBE0;
        LOBYTE(aBlock) = 2;
        v36 = String.init<A>(describing:)();
        v38 = v37;
        *(v35 + 56) = &type metadata for String;
        v39 = sub_100008C00();
        *(v35 + 32) = v36;
        *(v35 + 40) = v38;
        *(v35 + 96) = &type metadata for Int;
        *(v35 + 104) = &protocol witness table for Int;
        v40 = v52;
        *(v35 + 64) = v39;
        *(v35 + 72) = v40;
        os_log(_:dso:log:_:_:)();
      }

      v41 = sub_100594D14();
      v42 = *(v6 + 8);
      sub_100D2577C(a5, &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      v43 = (*(v18 + 80) + 24) & ~*(v18 + 80);
      v44 = (v19 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      *(v45 + 16) = v47;
      sub_100476E9C(v20, v45 + v43);
      *(v45 + v44) = v41;
      v58 = sub_10107EF0C;
      v59 = v45;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v56 = sub_100006684;
      v57 = &unk_101663278;
      v46 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v53 = _swiftEmptyArrayStorage;
      sub_10046EAC4();
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_10013A8AC();
      v27 = v51;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v46);
    }

    (*(v50 + 8))(v12, v27);
    (*(v48 + 8))(v16, v49);
  }

  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10107EF14()
{
  v1 = *(type metadata accessor for MessagingMessageContext() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  return sub_1011352FC(v2);
}

unint64_t sub_10107EF90(uint64_t a1)
{
  *(a1 + 8) = sub_1001DA81C();
  result = sub_1009A0330();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10107EFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10107F070(uint64_t a1)
{
  v2 = sub_10107F6EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10107F0AC(uint64_t a1)
{
  v2 = sub_10107F6EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10107F0E8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016C5358, &qword_101400340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10107F6EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

void sub_10107F224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v9;
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v11 = v42;
  v12 = [objc_opt_self() currentDevice];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 serverFriendlyDescription];

    if (v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v11;
      sub_100FFACA0(v15, v17, 0xD000000000000011, 0x800000010134EA40, v18);
      v19 = v42;
      Date.init()();
      v20 = Date.epoch.getter();
      (*(v5 + 8))(v8, v4);
      v42 = v20;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v19;
      sub_100FFACA0(v21, v23, 0xD000000000000015, 0x800000010134EA60, v24);
      v25 = v42;
      v42 = 1;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v25;
      sub_100FFACA0(v26, v28, 0xD000000000000013, 0x800000010134EA80, v29);
      v30 = v42;
      v31 = sub_1008D9A78();
      v33 = v32;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v42 = v30;
      sub_100FFACA0(v31, v33, 0x6567412D72657355, 0xEA0000000000746ELL, v34);
      v35 = type metadata accessor for JSONEncoder();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      v42 = a1;
      v43 = a2;
      sub_10107F678();
      v38 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v40 = v39;

      sub_100017D5C(v38, v40);

      sub_100016590(v38, v40);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_10107F678()
{
  result = qword_1016C5350;
  if (!qword_1016C5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5350);
  }

  return result;
}

unint64_t sub_10107F6EC()
{
  result = qword_1016C5360;
  if (!qword_1016C5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5360);
  }

  return result;
}

unint64_t sub_10107F754()
{
  result = qword_1016C5368;
  if (!qword_1016C5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5368);
  }

  return result;
}

unint64_t sub_10107F7AC()
{
  result = qword_1016C5370;
  if (!qword_1016C5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5370);
  }

  return result;
}

unint64_t sub_10107F804()
{
  result = qword_1016C5378;
  if (!qword_1016C5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5378);
  }

  return result;
}

uint64_t sub_10107F858()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10177B348 + 40);

  OS_dispatch_queue.sync<A>(execute:)();

  sub_1010749FC(v4);
  v2 = v1;

  qword_1016C5380 = v2;
  return result;
}

uint64_t sub_10107F924(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = type metadata accessor for MemberSharingCircle();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10107F9E0, 0, 0);
}

uint64_t sub_10107F9E0()
{
  v38 = v0;
  v1 = v0[2];
  if (*(v1 + *(v0[5] + 40)))
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = v2[7];
    v5 = v2[9];
    v6 = sub_1000035D0(v2 + 4, v4);
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_10107FF78;
    v8 = v0[2];

    return sub_101081B18(v8, v6, v3, v4, v5);
  }

  else
  {
    if (qword_101694480 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v10 = v0[6];
    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177A560);
    sub_101083C44(v1, v10, type metadata accessor for MemberSharingCircle);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[6];
    if (v14)
    {
      v16 = v0[5];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      v19 = *(v16 + 28);
      type metadata accessor for UUID();
      sub_100019810(&qword_101696930, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_101084A78(v15, type metadata accessor for MemberSharingCircle);
      v23 = sub_1000136BC(v20, v22, &v37);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Received tentative revoke for unaccepted sharingCircle %{private,mask.hash}s.", v17, 0x16u);
      sub_100007BAC(v18);
    }

    else
    {

      sub_101084A78(v15, type metadata accessor for MemberSharingCircle);
    }

    v24 = v0[3];
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[7] = Strong;
    if (Strong)
    {
      v26 = v0[5];
      v27 = v0[2];
      v28 = *(v0[3] + 24);
      ObjectType = swift_getObjectType();
      v30 = *(v26 + 28);
      v31 = *(v28 + 8);
      v36 = (v31 + *v31);
      v32 = v31[1];
      v33 = swift_task_alloc();
      v0[8] = v33;
      *v33 = v0;
      v33[1] = sub_10107FE34;

      return v36(v27 + v30, ObjectType, v28);
    }

    else
    {
      v34 = v0[6];

      v35 = v0[1];

      return v35();
    }
  }
}

uint64_t sub_10107FE34()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10108080C, 0, 0);
  }

  else
  {
    v4 = v3[7];
    swift_unknownObjectRelease();
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10107FF78(char a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_101080078, 0, 0);
}

uint64_t sub_101080078()
{
  if (*(v0 + 128) == 1)
  {
    v1 = *(v0 + 24);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 88) = Strong;
    v3 = *(v0 + 40);
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    if (Strong)
    {
      v6 = v4[3];
      ObjectType = swift_getObjectType();
      v8 = *(v3 + 28);
      v9 = *(v6 + 8);
      v18 = (v9 + *v9);
      v10 = v9[1];
      v11 = swift_task_alloc();
      *(v0 + 96) = v11;
      *v11 = v0;
      v11[1] = sub_1010802F8;

      return v18(v5 + v8, ObjectType, v6);
    }

    else
    {
      v15 = *(v3 + 24);
      sub_1000035D0(v4 + 4, v4[7]);
      type metadata accessor for BeaconObservationStore();
      sub_1007ADFFC(v5 + v15, sub_101084AD8, 0);
      v16 = *(v0 + 48);

      v17 = *(v0 + 8);

      return v17();
    }
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_1010804E8;
    v14 = *(v0 + 16);

    return sub_10108240C(v14, 4);
  }
}

uint64_t sub_1010802F8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1010809BC;
  }

  else
  {
    v5 = *(v2 + 88);
    swift_unknownObjectRelease();
    v4 = sub_101080414;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101080414()
{
  v1 = v0[2];
  v2 = *(v0[5] + 24);
  sub_1000035D0((v0[3] + 32), *(v0[3] + 56));
  type metadata accessor for BeaconObservationStore();
  sub_1007ADFFC(v1 + v2, sub_101084AD8, 0);
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1010804E8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_101080664;
  }

  else
  {
    v3 = sub_1010805FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1010805FC()
{
  v1 = *(v0 + 24);
  sub_101080B6C(*(v0 + 16));
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_101080664()
{
  v1 = v0[15];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure on share revoke handling %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10108080C()
{
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[9];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on share revoke handling %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1010809BC()
{
  v1 = v0[11];
  swift_unknownObjectRelease();
  v2 = v0[13];
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on share revoke handling %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_101080B6C(uint64_t *a1)
{
  v3 = type metadata accessor for MemberSharingCircle();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v72 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v76 = &v66 - v12;
  v13 = __chkstk_darwin(v11);
  v67 = &v66 - v14;
  __chkstk_darwin(v13);
  v71 = &v66 - v15;
  v16 = type metadata accessor for BeaconObservation();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v75 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v66 - v21;
  v23 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v66 - v28;
  v30 = *(v1 + 56);
  v70 = v1;
  v31 = sub_1000035D0((v1 + 32), v30);
  v68 = v3;
  v32 = *v31;
  v74 = *(v3 + 24);
  v33 = sub_100035730(a1 + v74, sub_1000BB4A4, 0);
  v34 = v33[2];
  v77 = a1;
  v73 = v29;
  if (!v34)
  {

    (*(v7 + 56))(v29, 1, 1, v6);
LABEL_10:
    v42 = v76;
    static Date.trustedNow.getter(v76);
    v43 = type metadata accessor for UUID();
    v44 = v75;
    (*(*(v43 - 8) + 16))(v75, a1 + v74, v43);
    v45 = *(v7 + 16);
    v45(v44 + *(v16 + 20), v42, v6);
    *(v44 + *(v16 + 24)) = 43;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_10177A560);
    v47 = v69;
    v45(v69, v42, v6);
    v48 = v72;
    sub_101083C44(a1, v72, type metadata accessor for MemberSharingCircle);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v78 = v71;
      *v51 = 136315651;
      sub_100019810(&qword_1016969A0, &type metadata accessor for Date);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v55 = *(v7 + 8);
      v55(v47, v6);
      v56 = sub_1000136BC(v52, v54, &v78);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2160;
      *(v51 + 14) = 1752392040;
      *(v51 + 22) = 2081;
      v57 = *(v68 + 24);
      sub_100019810(&qword_101696930, &type metadata accessor for UUID);
      v58 = v72;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_101084A78(v58, type metadata accessor for MemberSharingCircle);
      v62 = sub_1000136BC(v59, v61, &v78);

      *(v51 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v49, v50, "Store tentatively Revoked Date %s for %{private,mask.hash}s.", v51, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_101084A78(v48, type metadata accessor for MemberSharingCircle);
      v55 = *(v7 + 8);
      v55(v47, v6);
    }

    v63 = v70;
    sub_1000035D0((v70 + 32), *(v70 + 56));
    type metadata accessor for BeaconObservationStore();
    sub_1007ADFFC(v77 + v74, sub_101084AD8, 0);
    sub_1000035D0((v63 + 32), *(v63 + 56));
    v64 = v75;
    sub_1007ADEC0(v75);
    sub_101084A78(v64, type metadata accessor for BeaconObservation);
    v55(v76, v6);
    v37 = v73;
    return sub_10000B3A8(v37, &unk_101696900, &unk_10138B1E0);
  }

  sub_101083C44(v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v22, type metadata accessor for BeaconObservation);

  (*(v7 + 16))(v29, &v22[*(v16 + 20)], v6);
  sub_101084A78(v22, type metadata accessor for BeaconObservation);
  (*(v7 + 56))(v29, 0, 1, v6);
  sub_1000D3410(v29, v27);
  v35 = *(v7 + 48);
  if (v35(v27, 1, v6) == 1)
  {
    v36 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v77, v71);
    objc_autoreleasePoolPop(v36);
    if (v35(v27, 1, v6) != 1)
    {
      sub_10000B3A8(v27, &unk_101696900, &unk_10138B1E0);
    }

    v37 = v73;
    v38 = v71;
  }

  else
  {
    v38 = v71;
    (*(v7 + 32))(v71, v27, v6);
    v37 = v73;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = v67;
  a1 = v77;
  sub_100E7AB5C(v77, v67);
  objc_autoreleasePoolPop(v39);
  LOBYTE(v39) = static Date.< infix(_:_:)();
  v41 = *(v7 + 8);
  v41(v40, v6);
  v41(v38, v6);
  if ((v39 & 1) != 0 || *(a1 + *(v68 + 40)) == 1)
  {
    goto LABEL_10;
  }

  return sub_10000B3A8(v37, &unk_101696900, &unk_10138B1E0);
}

uint64_t sub_10108147C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MemberSharingCircle();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_101081510, 0, 0);
}

uint64_t sub_101081510()
{
  v22 = v0;
  v1 = v0[2];
  if (*(v1 + *(v0[4] + 40)) == 4)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v2 = v0[5];
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A560);
    sub_101083C44(v1, v2, type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[5];
    if (v6)
    {
      v8 = v0[4];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 141558275;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2081;
      v11 = *(v8 + 28);
      type metadata accessor for UUID();
      sub_100019810(&qword_101696930, &type metadata accessor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      sub_101084A78(v7, type metadata accessor for MemberSharingCircle);
      v15 = sub_1000136BC(v12, v14, &v21);

      *(v9 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cleaning up revoke state for circle %{private,mask.hash}s.", v9, 0x16u);
      sub_100007BAC(v10);
    }

    else
    {

      sub_101084A78(v7, type metadata accessor for MemberSharingCircle);
    }

    v19 = swift_task_alloc();
    v0[6] = v19;
    *v19 = v0;
    v19[1] = sub_10108180C;
    v20 = v0[2];

    return sub_10108240C(v20, 1);
  }

  else
  {
    v16 = v0[5];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10108180C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_101081958, 0, 0);
  }
}

uint64_t sub_101081958()
{
  v1 = v0[2];
  v2 = *(v0[4] + 24);
  sub_1000035D0((v0[3] + 32), *(v0[3] + 56));
  type metadata accessor for BeaconObservationStore();
  sub_1007ADFFC(v1 + v2, sub_101084AD8, 0);
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_101081A30()
{
  sub_100477574(v0 + 16);
  sub_100007BAC((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_101081A70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_1010834B4(a1);
}

uint64_t sub_101081B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a1;
  v10 = type metadata accessor for MemberSharingCircle();
  v5[9] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = type metadata accessor for BeaconObservation();
  v5[11] = v12;
  v13 = *(v12 - 8);
  v5[12] = v13;
  v14 = *(v13 + 64) + 15;
  v5[13] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v5[14] = v15;
  v16 = *(v15 - 8);
  v5[15] = v16;
  v17 = *(v16 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[5] = a4;
  v5[6] = a5;
  v18 = sub_1000280DC(v5 + 2);
  (*(*(a4 - 8) + 16))(v18, a2, a4);
  v19 = swift_task_alloc();
  v5[21] = v19;
  *v19 = v5;
  v19[1] = sub_101081D20;

  return sub_101083CAC(a1);
}

uint64_t sub_101081D20(char a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return _swift_task_switch(sub_101081E20, 0, 0);
}

uint64_t sub_101081E20()
{
  v64 = v0;
  if (*(v0 + 176))
  {
    v1 = 1;
    goto LABEL_11;
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (*(v2 + *(v3 + 40)) != 4)
  {
    goto LABEL_10;
  }

  v4 = sub_1000035D0((v0 + 16), *(v0 + 40));
  v5 = *(v3 + 24);
  v6 = *v4;
  v7 = sub_100035730(v2 + v5, sub_1000BB4A4, 0);
  if (!v7[2])
  {

    goto LABEL_10;
  }

  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  v13 = *(v0 + 104);
  v14 = *(v0 + 88);
  v15 = *(*(v0 + 96) + 80);
  sub_101083C44(v7 + ((v15 + 32) & ~v15), v13, type metadata accessor for BeaconObservation);

  v16 = *(v12 + 16);
  v16(v9, v13 + *(v14 + 20), v11);
  sub_101084A78(v13, type metadata accessor for BeaconObservation);
  (*(v12 + 32))(v8, v9, v11);
  static Date.trustedNow.getter(v10);
  Date.timeIntervalSince(_:)();
  v18 = v17;
  v19 = *(v12 + 8);
  v19(v10, v11);
  if (qword_1016951C8 != -1)
  {
    swift_once();
  }

  if (*&qword_1016C5380 > v18)
  {
    goto LABEL_8;
  }

  v29 = *(v0 + 136);
  v30 = *(v0 + 64);
  v31 = objc_autoreleasePoolPush();
  sub_100E7AB5C(v30, v29);
  objc_autoreleasePoolPop(v31);
  v32 = *(v0 + 160);
  v33 = *(v0 + 136);
  v34 = *(v0 + 112);
  v35 = static Date.> infix(_:_:)();
  v19(v33, v34);
  if ((v35 & 1) == 0)
  {
LABEL_8:
    v19(*(v0 + 160), *(v0 + 112));
LABEL_10:
    v1 = 0;
    goto LABEL_11;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v61 = *(v0 + 160);
  v36 = *(v0 + 128);
  v37 = *(v0 + 112);
  v38 = *(v0 + 80);
  v39 = *(v0 + 64);
  v40 = type metadata accessor for Logger();
  sub_1000076D4(v40, qword_10177A560);
  sub_101083C44(v39, v38, type metadata accessor for MemberSharingCircle);
  v16(v36, v61, v37);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 160);
  v45 = *(v0 + 128);
  v46 = *(v0 + 112);
  v47 = *(v0 + 80);
  if (v43)
  {
    v62 = *(v0 + 160);
    v48 = *(v0 + 72);
    v49 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v49 = 141558531;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    v50 = *(v48 + 28);
    type metadata accessor for UUID();
    v60 = v42;
    sub_100019810(&qword_101696930, &type metadata accessor for UUID);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    sub_101084A78(v47, type metadata accessor for MemberSharingCircle);
    v54 = sub_1000136BC(v51, v53, v63);

    *(v49 + 14) = v54;
    *(v49 + 22) = 2082;
    sub_100019810(&qword_1016969A0, &type metadata accessor for Date);
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v56;
    v19(v45, v46);
    v58 = sub_1000136BC(v55, v57, v63);

    *(v49 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v41, v60, "    Delete share %{private,mask.hash}s,\n    tentativelyRevoked since %{public}s.", v49, 0x20u);
    swift_arrayDestroy();

    v59 = v62;
  }

  else
  {

    v19(v45, v46);
    sub_101084A78(v47, type metadata accessor for MemberSharingCircle);
    v59 = v44;
  }

  v19(v59, v46);
  v1 = 1;
LABEL_11:
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);
  v26 = *(v0 + 80);
  sub_100007BAC((v0 + 16));

  v27 = *(v0 + 8);

  return v27(v1);
}

uint64_t sub_10108240C(uint64_t a1, char a2)
{
  *(v2 + 128) = a2;
  *(v2 + 16) = a1;
  v3 = type metadata accessor for MemberSharingCircle();
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = swift_task_alloc();
  v5 = *(*(sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1010824E8, 0, 0);
}

uint64_t sub_1010824E8()
{
  v35 = v0;
  v1 = *(v0 + 16);
  if (*(v1 + *(*(v0 + 24) + 40)) == *(v0 + 128))
  {
    if (qword_101694480 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = *(v0 + 32);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A560);
    sub_101083C44(v1, v2, type metadata accessor for MemberSharingCircle);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v7 = 136446723;
      v8 = 0xEB00000000646574;
      v9 = 0x70656363616E752ELL;
      v10 = 0xE500000000000000;
      v11 = 0x746E65732ELL;
      v12 = 0x800000010134B830;
      v13 = 0xD000000000000013;
      if (v6 != 4)
      {
        v13 = 0x64656C6961662ELL;
        v12 = 0xE700000000000000;
      }

      if (v6 != 3)
      {
        v11 = v13;
        v10 = v12;
      }

      v14 = 0xE900000000000064;
      v15 = 0x657470656363612ELL;
      if (v6 != 1)
      {
        v15 = 0x747365757165722ELL;
        v14 = 0xEA00000000006465;
      }

      if (v6)
      {
        v9 = v15;
        v8 = v14;
      }

      if (v6 <= 2)
      {
        v16 = v9;
      }

      else
      {
        v16 = v11;
      }

      if (v6 <= 2)
      {
        v17 = v8;
      }

      else
      {
        v17 = v10;
      }

      v19 = *(v0 + 24);
      v18 = *(v0 + 32);
      v20 = sub_1000136BC(v16, v17, &v34);

      *(v7 + 4) = v20;
      *(v7 + 12) = 2160;
      *(v7 + 14) = 1752392040;
      *(v7 + 22) = 2081;
      v21 = *(v19 + 28);
      type metadata accessor for UUID();
      sub_100019810(&qword_101696930, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      sub_101084A78(v18, type metadata accessor for MemberSharingCircle);
      v25 = sub_1000136BC(v22, v24, &v34);

      *(v7 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v4, v5, "Skipping acceptanceState update for %{public}s\nsharingCircle %{private,mask.hash}s.", v7, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v28 = *(v0 + 32);

      sub_101084A78(v28, type metadata accessor for MemberSharingCircle);
    }

    v30 = *(v0 + 40);
    v29 = *(v0 + 48);
    v31 = *(v0 + 32);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v26 = async function pointer to daemon.getter[1];
    v27 = swift_task_alloc();
    *(v0 + 56) = v27;
    *v27 = v0;
    v27[1] = sub_1010828F8;

    return daemon.getter();
  }
}

uint64_t sub_1010828F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  v12 = *v1;
  *(v3 + 64) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019810(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019810(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_101082AD4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_101082AD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v8 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = sub_10108342C;
  }

  else
  {
    v6 = v3[8];

    v5 = sub_101082BF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101082BF0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  v3 = *(v0 + 128);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_100EC0C48(sub_101083C20, v2);
  v6 = *(v0 + 80);
  if (v1)
  {
    v7 = *(v0 + 80);

    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 32);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_101082D1C, v6, 0);
  }
}

uint64_t sub_101082D44()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_101082E3C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 8);
}

uint64_t sub_101082E3C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_101083320;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_101082F58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101082F58()
{
  v38 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_101083C44(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v7 = 136446723;
    v8 = 0xEB00000000646574;
    v9 = 0x70656363616E752ELL;
    v10 = 0xE500000000000000;
    v11 = 0x746E65732ELL;
    v12 = 0x800000010134B830;
    v13 = 0xD000000000000013;
    if (v6 != 4)
    {
      v13 = 0x64656C6961662ELL;
      v12 = 0xE700000000000000;
    }

    if (v6 != 3)
    {
      v11 = v13;
      v10 = v12;
    }

    v14 = 0xE900000000000064;
    v15 = 0x657470656363612ELL;
    if (v6 != 1)
    {
      v15 = 0x747365757165722ELL;
      v14 = 0xEA00000000006465;
    }

    if (v6)
    {
      v9 = v15;
      v8 = v14;
    }

    if (v6 <= 2)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    if (v6 <= 2)
    {
      v17 = v8;
    }

    else
    {
      v17 = v10;
    }

    v18 = *(v0 + 80);
    v19 = *(v0 + 40);
    v36 = *(v0 + 48);
    v20 = *(v0 + 24);
    v21 = sub_1000136BC(v16, v17, &v37);

    *(v7 + 4) = v21;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v22 = *(v20 + 20);
    type metadata accessor for UUID();
    sub_100019810(&qword_101696930, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_101084A78(v19, type metadata accessor for MemberSharingCircle);
    v26 = sub_1000136BC(v23, v25, &v37);

    *(v7 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v4, v5, "Acceptance state changed to %{public}s\nfor member circle: %{private,mask.hash}s.", v7, 0x20u);
    swift_arrayDestroy();

    v27 = v36;
  }

  else
  {
    v28 = *(v0 + 80);
    v30 = *(v0 + 40);
    v29 = *(v0 + 48);

    sub_101084A78(v30, type metadata accessor for MemberSharingCircle);
    v27 = v29;
  }

  sub_10000B3A8(v27, &qword_1016975C8, &qword_10138C1F0);
  v32 = *(v0 + 40);
  v31 = *(v0 + 48);
  v33 = *(v0 + 32);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_101083320()
{
  v1 = *(v0 + 104);

  return _swift_task_switch(sub_101083388, 0, 0);
}

uint64_t sub_101083388()
{
  v1 = v0[10];
  v2 = v0[6];

  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);
  v3 = v0[15];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10108342C()
{
  v1 = v0[8];

  v2 = v0[11];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1010834B4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_101083548;

  return daemon.getter();
}

uint64_t sub_101083548(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconSharingService(0);
  v9 = sub_100019810(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019810(&unk_101696950, type metadata accessor for BeaconSharingService);
  *v6 = v12;
  v6[1] = sub_101083724;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_101083724(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v8 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = sub_101083B0C;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_101083840;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_101083840()
{
  v1 = *(v0 + 16);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v2 = type metadata accessor for UUID();
  *(v0 + 64) = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  *(v0 + 72) = v3;
  v5 = *(v3 + 72);
  v6 = *(v4 + 80);
  *(v0 + 104) = v6;
  v7 = (v6 + 32) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 80) = v8;
  *(v8 + 16) = xmmword_101385D80;
  (*(v4 + 16))(v8 + v7, v1, v2);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_1010839AC;
  v10 = *(v0 + 48);

  return sub_10019DE18(v8);
}

uint64_t sub_1010839AC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v11 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_101083B70;
  }

  else
  {
    v6 = *(v2 + 72);
    v5 = *(v2 + 80);
    v7 = *(v2 + 104);
    v8 = *(v2 + 64);
    v9 = (v7 + 32) & ~v7;
    swift_setDeallocating();
    (*(v6 + 8))(v5 + v9, v8);
    swift_deallocClassInstance();
    v4 = sub_1004A9788;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_101083B0C()
{
  v1 = v0[4];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_101083B70()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);

  swift_setDeallocating();
  (*(v2 + 8))(v1 + ((v3 + 32) & ~v3), v4);
  swift_deallocClassInstance();
  v6 = *(v0 + 96);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_101083C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101083CAC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for MemberSharingCircle();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v1[8] = *(v5 + 64);
  v1[9] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v1[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v1[15] = v12;
  *v12 = v1;
  v12[1] = sub_101083E78;

  return daemon.getter();
}

uint64_t sub_101083E78(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v12 = *v1;
  *(v3 + 128) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100019810(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100019810(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_101084054;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_101084054(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(v4 + 144) = a1;

  v7 = *(v4 + 128);
  if (v1)
  {

    v8 = sub_101084778;
    v9 = 0;
  }

  else
  {
    v10 = *(v4 + 24);

    *(v4 + 168) = *(v10 + 24);
    v8 = sub_1010841C0;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1010841C0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  (*(v4 + 16))(v2, *(v0 + 16) + *(v0 + 168), v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v0 + 152) = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_101084328;
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_101084A04, v6, v10);
}

uint64_t sub_101084328()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_101084440, 0, 0);
}

uint64_t sub_101084440()
{
  v34 = v0;
  v1 = v0[12];
  v2 = v0[11];
  if ((*(v0[13] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698C30, &unk_101392630);
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v3 = v0[5];
    v4 = v0[2];
    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177A560);
    sub_101083C44(v4, v3, type metadata accessor for MemberSharingCircle);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[18];
    if (v8)
    {
      v11 = v0[5];
      v10 = v0[6];
      v12 = v0[3];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v33 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = *(v12 + 28);
      sub_100019810(&qword_101696930, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_101084A78(v11, type metadata accessor for MemberSharingCircle);
      v19 = sub_1000136BC(v16, v18, &v33);

      *(v13 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v6, v7, "Missing shared beacon record on share revoke handling, shareId: %{private,mask.hash}s.", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {
      v24 = v0[5];
      v25 = v0[18];

      sub_101084A78(v24, type metadata accessor for MemberSharingCircle);
    }

    v23 = 0;
  }

  else
  {
    v20 = v0[18];
    v21 = v0[14];

    sub_100591C20(v2, v21);
    v22 = *(v21 + *(v1 + 64));
    sub_101084A78(v21, type metadata accessor for SharedBeaconRecord);
    v23 = v22 == 4;
  }

  v26 = v0[14];
  v27 = v0[11];
  v28 = v0[9];
  v30 = v0[4];
  v29 = v0[5];

  v31 = v0[1];

  return v31(v23);
}

uint64_t sub_101084778()
{
  v25 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_101083C44(v2, v1, type metadata accessor for MemberSharingCircle);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 141558275;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2081;
    v11 = *(v7 + 28);
    sub_100019810(&qword_101696930, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_101084A78(v8, type metadata accessor for MemberSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v24);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Missing Service BeaconStoreActor on share revoke handling, shareId: %{private,mask.hash}s.", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {
    v16 = v0[4];

    sub_101084A78(v16, type metadata accessor for MemberSharingCircle);
  }

  v17 = v0[14];
  v18 = v0[11];
  v19 = v0[9];
  v21 = v0[4];
  v20 = v0[5];

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_101084A04@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100E714A0(v4, v5, a1);
}

uint64_t sub_101084A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_101084ADC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C560);
  sub_1000076D4(v0, qword_10177C560);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_101084B60(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E752ELL;
      case 1:
        return 0x79646165726C612ELL;
      case 2:
        return 0xD000000000000012;
    }

LABEL_13:
    _StringGuts.grow(_:)(29);
    v2._countAndFlagsBits = 0xD00000000000001BLL;
    v2._object = 0x8000000101379890;
    String.append(_:)(v2);
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x6F707075736E752ELL;
    }

    if (a1 == 6)
    {
      return 0xD000000000000014;
    }

    goto LABEL_13;
  }

  if (a1 == 3)
  {
    return 0x676E697373696D2ELL;
  }

  else
  {
    return 0x6544654D746F6E2ELL;
  }
}

uint64_t sub_101084D30()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 BOOLForKey:v10];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_101084E98()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v10 = String._bridgeToObjectiveC()();
    [v8 setValue:isa forKey:v10];
  }

  else
  {
    __break(1u);
  }
}

id sub_101085018()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(ACAccountStore) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_101085084(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = sub_1000BC488();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000040CC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  if (qword_1016951D0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C560);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "MaskedIdentifierService init", v15, 2u);
  }

  *(v2 + 16) = v22;
  v16 = *(v2 + 24);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_101088B00;
  *(v17 + 24) = v2;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_1016638B0;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v16, v18);
  _Block_release(v18);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v20 = type metadata accessor for Transaction();
    __chkstk_darwin(v20);
    v21[-3] = 0;
    v21[-2] = 0;
    v21[-4] = v2;
    static Transaction.named<A>(_:with:)();

    return v2;
  }

  return result;
}

uint64_t sub_101085524()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_101088A8C;
  *(v2 + 24) = v0;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_101663838;
  v3 = _Block_copy(aBlock);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for Transaction();
    __chkstk_darwin(v5);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_1010856DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 24);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a2;
  aBlock[4] = sub_1010888E4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016635E0;
  v17 = _Block_copy(aBlock);

  sub_100012908(a3);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000040CC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);
}

uint64_t sub_1010859C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v128 = a2;
  v129 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v132 = *(v5 - 8);
  v133 = v5;
  v6 = *(v132 + 64);
  __chkstk_darwin(v5);
  v130 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v134 = *(v8 - 8);
  v135 = v8;
  v9 = *(v134 + 64);
  __chkstk_darwin(v8);
  v131 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for DispatchQoS.QoSClass();
  v126 = *(v127 - 8);
  v11 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for StableIdentifier();
  v13 = *(*(v140 - 8) + 64);
  v14 = __chkstk_darwin(v140);
  v139 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v124 - v16;
  v138 = type metadata accessor for OwnedBeaconRecord();
  v18 = *(v138 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v138);
  v141 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v124 - v22;
  v24 = type metadata accessor for SystemInfo.DeviceLockState();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v124 - v30;
  Transaction.capture()();
  static SystemInfo.lockState.getter();
  (*(v25 + 104))(v29, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v24);
  sub_1000040CC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v25 + 8);
  v33(v29, v24);
  v33(v31, v24);
  if (v32)
  {
    if (qword_1016951D0 != -1)
    {
      goto LABEL_49;
    }

    goto LABEL_3;
  }

  v124 = a4;
  v47 = *(a4 + 16);
  v48 = sub_100025044();
  v49 = _swiftEmptyArrayStorage;
  v137 = v48[2];
  if (!v137)
  {
LABEL_22:

    v70 = v49[2];

    if (v70)
    {
      if ((sub_101084D30() & 1) == 0)
      {
        v94 = sub_101086C94();
        if (v95)
        {
          if (qword_1016951D0 != -1)
          {
            swift_once();
          }

          v96 = type metadata accessor for Logger();
          sub_1000076D4(v96, qword_10177C560);
          sub_1010888F0(v94);
          v97 = Logger.logObject.getter();
          v98 = static os_log_type_t.error.getter();
          sub_101088900(v94, 1);
          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            aBlock = v100;
            *v99 = 136315138;
            sub_1010888F0(v94);
            v101 = sub_10110A764(v94);
            v103 = sub_1000136BC(v101, v102, &aBlock);

            *(v99 + 4) = v103;
            _os_log_impl(&_mh_execute_header, v97, v98, "Failed to update masked identifiers. Error %s", v99, 0xCu);
            sub_100007BAC(v100);
          }

          sub_101088050();
          sub_1000BC488();
          v104 = v126;
          v105 = v125;
          v106 = v127;
          (*(v126 + 104))(v125, enum case for DispatchQoS.QoSClass.default(_:), v127);
          v107 = static OS_dispatch_queue.global(qos:)();
          (*(v104 + 8))(v105, v106);
          v108 = swift_allocObject();
          v110 = v128;
          v109 = v129;
          v108[2] = v128;
          v108[3] = v109;
          v108[4] = v94;
          v147 = sub_10108891C;
          v148 = v108;
          aBlock = _NSConcreteStackBlock;
          v144 = 1107296256;
          v145 = sub_100006684;
          v146 = &unk_101663630;
          v111 = _Block_copy(&aBlock);
          sub_100012908(v110);
          sub_10108894C(v94, 1);
          v46 = v131;
          static DispatchQoS.unspecified.getter();
          v142 = _swiftEmptyArrayStorage;
          sub_1000040CC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v91 = v130;
          v92 = v133;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v111);

          sub_101088900(v94, 1);
        }

        else
        {
          if (qword_1016951D0 != -1)
          {
            swift_once();
          }

          v112 = type metadata accessor for Logger();
          sub_1000076D4(v112, qword_10177C560);
          v113 = Logger.logObject.getter();
          v114 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            *v115 = 0;
            _os_log_impl(&_mh_execute_header, v113, v114, "Successfully updated masked identifiers!", v115, 2u);
          }

          sub_101084E98();
          sub_1000BC488();
          v116 = v126;
          v117 = v125;
          v118 = v127;
          (*(v126 + 104))(v125, enum case for DispatchQoS.QoSClass.default(_:), v127);
          v119 = static OS_dispatch_queue.global(qos:)();
          (*(v116 + 8))(v117, v118);
          v120 = swift_allocObject();
          v122 = v128;
          v121 = v129;
          *(v120 + 16) = v128;
          *(v120 + 24) = v121;
          v147 = sub_101088958;
          v148 = v120;
          aBlock = _NSConcreteStackBlock;
          v144 = 1107296256;
          v145 = sub_100006684;
          v146 = &unk_101663680;
          v123 = _Block_copy(&aBlock);
          sub_100012908(v122);
          v46 = v131;
          static DispatchQoS.unspecified.getter();
          v142 = _swiftEmptyArrayStorage;
          sub_1000040CC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
          sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
          v91 = v130;
          v92 = v133;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v123);

          sub_101088900(v94, 0);
        }

        goto LABEL_36;
      }

      if (qword_1016951D0 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_1000076D4(v71, qword_10177C560);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "Already updated masked identifier", v74, 2u);
      }

      sub_1000BC488();
      v75 = v126;
      v76 = v125;
      v77 = v127;
      (*(v126 + 104))(v125, enum case for DispatchQoS.QoSClass.default(_:), v127);
      v41 = static OS_dispatch_queue.global(qos:)();
      (*(v75 + 8))(v76, v77);
      v78 = swift_allocObject();
      v80 = v128;
      v79 = v129;
      *(v78 + 16) = v128;
      *(v78 + 24) = v79;
      v147 = sub_101088960;
      v148 = v78;
      aBlock = _NSConcreteStackBlock;
      v144 = 1107296256;
      v81 = &unk_1016636D0;
    }

    else
    {
      if (qword_1016951D0 != -1)
      {
        swift_once();
      }

      v82 = type metadata accessor for Logger();
      sub_1000076D4(v82, qword_10177C560);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "No paired accessories. Not updating masked identifier.", v85, 2u);
      }

      sub_1000BC488();
      v86 = v126;
      v87 = v125;
      v88 = v127;
      (*(v126 + 104))(v125, enum case for DispatchQoS.QoSClass.default(_:), v127);
      v41 = static OS_dispatch_queue.global(qos:)();
      (*(v86 + 8))(v87, v88);
      v89 = swift_allocObject();
      v80 = v128;
      v90 = v129;
      *(v89 + 16) = v128;
      *(v89 + 24) = v90;
      v147 = sub_101088968;
      v148 = v89;
      aBlock = _NSConcreteStackBlock;
      v144 = 1107296256;
      v81 = &unk_101663720;
    }

    v145 = sub_100006684;
    v146 = v81;
    v45 = _Block_copy(&aBlock);
    sub_100012908(v80);
    v46 = v131;
    static DispatchQoS.unspecified.getter();
    v142 = _swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  v50 = 0;
  v136 = v139 + 8;
  while (v50 < v48[2])
  {
    v51 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v52 = *(v18 + 72);
    sub_101088A14(v48 + v51 + v52 * v50, v23, type metadata accessor for OwnedBeaconRecord);
    v53 = *(v138 + 24);
    sub_101088A14(&v23[v53], v17, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100032824(v17, type metadata accessor for StableIdentifier);
    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_17;
    }

    sub_101088A14(&v23[v53], v139, type metadata accessor for StableIdentifier);
    v55 = swift_getEnumCaseMultiPayload();
    if (v55 == 3)
    {
      v62 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
      v57 = v136;
      v63 = *(v136 + v62[12]);

      v64 = *(v57 + v62[16]);

      v61 = v62[20];
      goto LABEL_16;
    }

    if (v55 == 2)
    {
      v56 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
      v57 = v136;
      v58 = *(v136 + v56[12]);

      v59 = *(v57 + v56[16]);

      v60 = *(v57 + v56[20]);

      v61 = v56[28];
LABEL_16:
      v65 = *(v57 + v61);

      v66 = type metadata accessor for UUID();
      (*(*(v66 - 8) + 8))(v139, v66);
LABEL_17:
      sub_100132D2C(v23, v141);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10112434C(0, v49[2] + 1, 1);
        v49 = aBlock;
      }

      v69 = v49[2];
      v68 = v49[3];
      if (v69 >= v68 >> 1)
      {
        sub_10112434C(v68 > 1, v69 + 1, 1);
        v49 = aBlock;
      }

      v49[2] = (v69 + 1);
      sub_100132D2C(v141, v49 + v51 + v69 * v52);
      goto LABEL_9;
    }

    sub_100032824(v23, type metadata accessor for OwnedBeaconRecord);
    sub_100032824(v139, type metadata accessor for StableIdentifier);
LABEL_9:
    if (v137 == ++v50)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_49:
  swift_once();
LABEL_3:
  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177C560);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Not updating because device is in beforeFirstUnlock", v37, 2u);
  }

  sub_1000BC488();
  v38 = v126;
  v39 = v125;
  v40 = v127;
  (*(v126 + 104))(v125, enum case for DispatchQoS.QoSClass.default(_:), v127);
  v41 = static OS_dispatch_queue.global(qos:)();
  (*(v38 + 8))(v39, v40);
  v42 = swift_allocObject();
  v44 = v128;
  v43 = v129;
  *(v42 + 16) = v128;
  *(v42 + 24) = v43;
  v147 = sub_101088970;
  v148 = v42;
  aBlock = _NSConcreteStackBlock;
  v144 = 1107296256;
  v145 = sub_100006684;
  v146 = &unk_101663770;
  v45 = _Block_copy(&aBlock);
  sub_100012908(v44);
  v46 = v131;
  static DispatchQoS.unspecified.getter();
  v142 = _swiftEmptyArrayStorage;
LABEL_35:
  sub_1000040CC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v91 = v130;
  v92 = v133;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);

LABEL_36:
  (*(v132 + 8))(v91, v92);
  (*(v134 + 8))(v46, v135);
}

uint64_t sub_101086C94()
{
  v1 = sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v52 - v3;
  updated = type metadata accessor for PairingLockUpdateEndPoint();
  v6 = *(*(updated - 8) + 64);
  v7 = __chkstk_darwin(updated - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v52 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v0 + 24);
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  v20 = sub_101085018();
  v21 = sub_100513CD8();

  if (v21)
  {
    v22 = sub_100513FCC();
    v24 = v23;

    if (v24)
    {
      sub_10107F224(v22, v24);
      if (v25)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v31 = dispatch_group_create();
        dispatch_group_enter(v31);
        sub_100D54B58(v11);
        v32 = type metadata accessor for SearchPartyURLSessionFactory(0);
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        swift_allocObject();
        v35 = type metadata accessor for FMNMockingPreferences();
        (*(*(v35 - 8) + 56))(v4, 1, 1, v35);
        v36 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
        v37 = type metadata accessor for ServerInteractionController(0);
        v38 = *(v37 + 48);
        v39 = *(v37 + 52);
        v40 = swift_allocObject();
        sub_101088A14(v11, v9, type metadata accessor for PairingLockUpdateEndPoint);
        v41 = sub_100624EBC(v9, v36, v40);
        sub_100032824(v11, type metadata accessor for PairingLockUpdateEndPoint);

        sub_100017D5C(v29, v30);
        sub_1004FF798(v28, v29, v30, 0, v41);

        sub_100165328(v28, v29, v30);
        v42 = swift_allocObject();
        *(v42 + 16) = v31;
        *(v42 + 24) = v19;
        v43 = v31;

        Future.addFailure(block:)();

        v44 = swift_allocObject();
        *(v44 + 16) = v43;
        *(v44 + 24) = v19;
        v45 = v43;

        Future.addSuccess(block:)();

        OS_dispatch_group.wait()();
        sub_100165328(v28, v29, v30);

        swift_beginAccess();
        v46 = *(v19 + 16);
        sub_10108894C(v46, *(v19 + 24));

        return v46;
      }
    }
  }

  if (qword_1016951D0 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v48 = type metadata accessor for Logger();
  sub_1000076D4(v48, qword_10177C560);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Missing info to form update request!", v51, 2u);
  }

  return 3;
}

void sub_1010871D4(uint64_t a1, NSObject *a2, uint64_t a3)
{
  if (qword_1016951D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177C560);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update masked identifier due to %s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  swift_beginAccess();
  v14 = *(a3 + 16);
  v15 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = 1;
  sub_101088900(v14, v15);
  swift_errorRetain();
  dispatch_group_leave(a2);
}

void sub_10108739C(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v11 == 200)
  {
    if (qword_1016951D0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177C560);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully updated masked identifier!", v24, 2u);
    }
  }

  else
  {
    if (qword_1016951D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177C560);
    (*(v7 + 16))(v10, a1, v6);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = a2;
      v16 = v15;
      v28 = swift_slowAlloc();
      v30 = v28;
      *v16 = 136315138;
      sub_1000040CC(&qword_1016A62C0, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v7 + 8))(v10, v6);
      v20 = sub_1000136BC(v17, v19, &v30);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to update masked identifier due to %s", v16, 0xCu);
      sub_100007BAC(v28);

      a2 = v29;
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }

  swift_beginAccess();
  v25 = *(a3 + 16);
  v26 = *(a3 + 24);
  *(a3 + 16) = 0;
  *(a3 + 24) = v11 != 200;
  sub_101088900(v25, v26);
  dispatch_group_leave(a2);
}

uint64_t sub_101087718()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v39);
  v41 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  v11 = __chkstk_darwin(v9);
  v40 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v34 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + 24);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if (v20)
  {
    if (qword_1016951D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v37 = v5;
  v38 = v2;
  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C560);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "checkinRetry", v25, 2u);
  }

  v35 = v14;
  v36 = 0x8000000101379790;
  static DispatchQoS.default.getter();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v28 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v28 + 40) = v29;
  swift_unknownObjectWeakInit();
  *(v28 + 88) = 0;
  v30 = sub_1000BC488();
  v34[1] = "rvice.retryFetch";
  v34[2] = v30;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  v31 = v42;
  (*(v42 + 16))(v40, v14, v9);
  (*(v6 + 104))(v41, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v39);
  v43 = _swiftEmptyArrayStorage;
  sub_1000040CC(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);

  v34[0] = v9;
  v39 = v1;
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_100014084(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v28 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v28 + 24) = 0xD000000000000040;
  *(v28 + 32) = v36;
  *(v28 + 48) = sub_1010888B4;
  *(v28 + 56) = v26;
  *(v28 + 64) = sub_1010888BC;
  *(v28 + 72) = v27;

  sub_100997398();

  (*(v31 + 8))(v35, v34[0]);

  v32 = *(v39 + 32);
  *(v39 + 32) = v28;
}

uint64_t sub_101087CE8@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);
    __chkstk_darwin(result);
    v5 = v4;
    sub_1000BC4D4(&qword_1016C2F18, &qword_1013F7750);
    OS_dispatch_queue.sync<A>(execute:)();

    v6 = v9;
    v7 = v10;
    v8 = v11;
  }

  else
  {
    v8 = 0;
    v6 = xmmword_10139D930;
    v7 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_101087DF0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      if (qword_1016951D0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000076D4(v5, qword_10177C560);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v14 = v9;
        *v8 = 136315138;
        type metadata accessor for XPCActivity();

        v10 = String.init<A>(describing:)();
        v12 = sub_1000136BC(v10, v11, &v14);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "scheduleRetryFetch timer fired: %s", v8, 0xCu);
        sub_100007BAC(v9);
      }

      Transaction.capture()();
      v13 = type metadata accessor for Transaction();
      __chkstk_darwin(v13);
      static Transaction.named<A>(_:with:)();
      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_101088050()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_1016951D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C560);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "scheduleRetryUpdate", v12, 2u);
  }

  *(v1 + 40) = 1;
  v13 = *(v1 + 32);
  v14 = type metadata accessor for Transaction();
  __chkstk_darwin(v14);
  *&v16[-16] = v13;

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_1010882A4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC488();
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  *(v17 + 24) = a2;
  aBlock[4] = sub_1010125F8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101663568;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000040CC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_100014084(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v6, v3);
  (*(v22 + 8))(v10, v23);
}

uint64_t sub_101088644()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1010886D4(uint64_t a1, uint64_t a2)
{
  if (qword_1016951D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C560);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "BeaconManagerService.updateObfuscatedIdentifier", v7, 2u);
  }

  sub_100A2C2B8();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_101085524();
}

uint64_t sub_101088828(unint64_t a1, void (*a2)(uint64_t))
{
  if (a1 == 7)
  {
    v3 = 0;
  }

  else
  {
    v4 = a1;
    sub_101088AAC();
    v3 = swift_allocError();
    a1 = v4;
    *v5 = v4;
  }

  sub_101088A9C(a1);
  a2(v3);
}

unint64_t sub_1010888F0(unint64_t result)
{
  if (result >= 7)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_101088900(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_10108890C(result);
  }

  return result;
}

unint64_t sub_10108890C(unint64_t result)
{
  if (result >= 7)
  {
  }

  return result;
}

uint64_t sub_10108891C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v0 + 24;
    v2 = *(v0 + 24);
    return v1(*(v3 + 8));
  }

  return result;
}

unint64_t sub_10108894C(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_1010888F0(result);
  }

  return result;
}

uint64_t sub_101088978()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

__n128 sub_1010889A8@<Q0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + 16) + 40) == 1)
  {
    v2 = *(v1 + 24);
    if (*v2 == 2)
    {
      result.n128_u64[0] = 0;
      *a1 = xmmword_101400580;
      *(a1 + 16) = xmmword_101400590;
      *(a1 + 32) = 707;
    }

    else
    {
      result = *v2;
      v4 = *(v2 + 16);
      *a1 = *v2;
      *(a1 + 16) = v4;
      *(a1 + 32) = *(v2 + 32);
    }
  }

  else
  {
    *a1 = 2;
    result.n128_u64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  return result;
}

uint64_t sub_101088A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_101088A9C(unint64_t result)
{
  if (result != 7)
  {
    return sub_1010888F0(result);
  }

  return result;
}

unint64_t sub_101088AAC()
{
  result = qword_1016C5650;
  if (!qword_1016C5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5650);
  }

  return result;
}

uint64_t sub_101088B04(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_101088B1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101088B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_101088C30(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016C5660, &qword_1014008B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10108AA28();
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
    v12 = *(v3 + 3);
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 4);
    v14 = *(v3 + 5);
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_101088DEC()
{
  v1 = 0x49746375646F7270;
  if (*v0 != 1)
  {
    v1 = 0x6449726F646E6576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x754E6C6169726573;
  }
}

uint64_t sub_101088E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10108AB94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_101088E7C(uint64_t a1)
{
  v2 = sub_10108AA28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101088EB8(uint64_t a1)
{
  v2 = sub_10108AA28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_101088EF4(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_101088C30(a1);
}

__n128 sub_101088F30@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v17 = *a1;
  if ((*(a1 + 24) & 1) == 0)
  {
    v18 = *(a1 + 16);
    sub_100BA0908(a1, v19);
    sub_1000C3258();
    v12 = FixedWidthInteger.data.getter();
    v14 = v13;
    v4 = Data.hexString.getter();
    v5 = v15;
    sub_100016590(v12, v14);
    if ((*(a1 + 40) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_100BA0940(a1);
    v9 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  sub_100BA0908(a1, v19);
  v4 = 0;
  v5 = 0;
  if (*(a1 + 40))
  {
    goto LABEL_5;
  }

LABEL_3:
  v19[0] = *(a1 + 32);
  sub_1000C3258();
  v6 = FixedWidthInteger.data.getter();
  v8 = v7;
  v9 = Data.hexString.getter();
  v11 = v10;
  sub_100BA0940(a1);
  sub_100016590(v6, v8);
LABEL_6:
  result = v17;
  *a2 = v17;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u64[1] = v5;
  a2[2].n128_u64[0] = v9;
  a2[2].n128_u64[1] = v11;
  return result;
}

uint64_t sub_101089060(uint64_t a1, uint64_t a2)
{
  v2[66] = a2;
  v2[65] = a1;
  v3 = type metadata accessor for HashAlgorithm();
  v2[67] = v3;
  v4 = *(v3 - 8);
  v2[68] = v4;
  v5 = *(v4 + 64) + 15;
  v2[69] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v2[70] = v6;
  v7 = *(v6 - 8);
  v2[71] = v7;
  v8 = *(v7 + 64) + 15;
  v2[72] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v2[73] = v9;
  v10 = *(v9 - 8);
  v2[74] = v10;
  v11 = *(v10 + 64) + 15;
  v2[75] = swift_task_alloc();

  return _swift_task_switch(sub_1010891DC, 0, 0);
}

void sub_1010891DC()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 600);
  v7 = *(v0 + 592);
  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  v49 = *(v0 + 568);
  v50 = *(v0 + 560);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 504) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 512) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v25 = v14;
  v26 = sub_100EB2DF0(v24);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0x6567412D72657355, 0xEA0000000000746ELL, v29);
  static Locale.current.getter();
  v30 = Locale.acceptLanguageCode.getter();
  v32 = v31;
  (*(v49 + 8))(v9, v50);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v30, v32, 0x4C2D747065636341, 0xEF65676175676E61, v33);
  v34 = v25;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [v35 BOOLForKey:v38];

    if (v39)
    {
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v40);
    }
  }

  *(v0 + 608) = v34;
  v41 = *(v0 + 520);
  sub_100BA0908(v41, v0 + 400);
  sub_101088F30(v41, (v0 + 16));
  v42 = type metadata accessor for JSONEncoder();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  *(v0 + 616) = JSONEncoder.init()();
  v45 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  *(v0 + 80) = v45;
  *(v0 + 96) = *(v0 + 48);
  sub_10108A890();
  v46 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 624) = 0;
  *(v0 + 632) = v46;
  *(v0 + 640) = v47;
  sub_100017D5C(v46, v47);
  v48 = swift_task_alloc();
  *(v0 + 648) = v48;
  *v48 = v0;
  v48[1] = sub_1010898F8;

  sub_100EA7FE4();
}

uint64_t sub_1010898F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 648);
  v6 = *v2;
  *(v3 + 656) = a1;
  *(v3 + 664) = a2;

  return _swift_task_switch(sub_1010899FC, 0, 0);
}

uint64_t sub_1010899FC()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 624);
  v4 = *(v0 + 552);
  v5 = *(v0 + 544);
  v6 = *(v0 + 536);
  *(v0 + 488) = v2;
  *(v0 + 496) = v1;
  *(v0 + 472) = &type metadata for Data;
  *(v0 + 480) = &protocol witness table for Data;
  *(v0 + 448) = *(v0 + 632);
  v7 = sub_1000035D0((v0 + 448), &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v8, v9);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 448));
  v10 = *(v0 + 496);
  *(v0 + 672) = *(v0 + 488);
  *(v0 + 680) = v10;
  (*(v5 + 104))(v4, enum case for HashAlgorithm.sha256(_:), v6);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  *(v0 + 688) = v11;
  *(v0 + 696) = v12;
  (*(v5 + 8))(v4, v6);
  v14 = swift_task_alloc();
  *(v0 + 704) = v14;
  *v14 = v0;
  v14[1] = sub_101089BAC;
  v15 = *(v0 + 528);

  return sub_100EA87F4(v11, v13, v15);
}

uint64_t sub_101089BAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 704);
  v6 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v7 = sub_10108A22C;
  }

  else
  {
    v8 = v4[87];
    v9 = v4[86];
    v4[90] = a1;
    sub_100016590(v9, v8);
    v7 = sub_101089CE0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_101089CE0()
{
  v57 = v0;
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[85];
  v4 = v0[84];
  v5 = v0[76];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v5;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v56);

  sub_100016590(v4, v3);
  v7 = v56[0];
  if (qword_1016950D0 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v53 = v0;
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177C418);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Pairing lock header:", v11, 2u);
  }

  v12 = v7 + 64;
  v13 = -1;
  v14 = -1 << *(v7 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v7 + 64);
  v0 = ((63 - v14) >> 6);

  v16 = 0;
  v54 = v7;
  if (v15)
  {
    while (2)
    {
      v17 = v16;
LABEL_13:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = (v17 << 10) | (16 * v18);
      v20 = (*(v7 + 48) + v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = (*(v7 + 56) + v19);
      v24 = v23[1];
      v55 = *v23;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v56[0] = swift_slowAlloc();
        *v27 = 136315394;
        v28 = sub_1000136BC(v21, v22, v56);

        *(v27 + 4) = v28;
        *(v27 + 12) = 2080;
        v29 = sub_1000136BC(v55, v24, v56);

        *(v27 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s): %s", v27, 0x16u);
        swift_arrayDestroy();

        v7 = v54;

        v16 = v17;
        if (v15)
        {
          continue;
        }
      }

      else
      {

        v16 = v17;
        if (v15)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v17 >= v0)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v16;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  sub_10108A8E4((v53 + 2), (v53 + 32));
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  sub_10108A91C((v53 + 2));
  v32 = os_log_type_enabled(v30, v31);
  v33 = v53[77];
  v34 = v53[66];
  v35 = v53[65];
  if (v32)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v56[0] = v37;
    *v36 = 136315138;
    v38 = *(v53 + 2);
    *(v53 + 19) = *(v53 + 1);
    *(v53 + 20) = v38;
    *(v53 + 21) = *(v53 + 3);
    sub_10108A8E4((v53 + 2), (v53 + 44));
    v39 = String.init<A>(describing:)();
    v41 = v7;
    v42 = sub_1000136BC(v39, v40, v56);

    *(v36 + 4) = v42;
    v7 = v41;
    _os_log_impl(&_mh_execute_header, v30, v31, "Pairing lock body %s", v36, 0xCu);
    sub_100007BAC(v37);

    sub_10108A91C((v53 + 2));

    sub_100BA0940(v35);
  }

  else
  {
    v43 = v53[77];

    sub_100BA0940(v35);

    sub_10108A91C((v53 + 2));
  }

  v44 = v53[80];
  v45 = v53[79];

  sub_100017D5C(v45, v44);

  sub_100016590(v45, v44);
  v46 = v53[80];
  v47 = v53[79];
  v48 = v53[75];
  v49 = v53[72];
  v50 = v53[69];

  v51 = v53[1];

  return v51(v7, v47, v46);
}

uint64_t sub_10108A22C()
{
  v62 = v0;
  v1 = v0[85];
  v2 = v0[84];
  sub_100016590(v0[86], v0[87]);
  sub_100016590(v2, v1);
  v3 = &qword_101695000;
  if (qword_1016950D0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v4 = v0[89];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C418);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[89];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to sign pairing lock request. %{public}@", v10, 0xCu);
    sub_100288C6C(v11);
  }

  else
  {
  }

  v13 = v0[76];
  if (v3[26] != -1)
  {
    swift_once();
  }

  v60 = v0;
  sub_1000076D4(v5, qword_10177C418);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Pairing lock header:", v16, 2u);
  }

  v3 = (v13 + 64);
  v17 = -1;
  v18 = -1 << *(v13 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v13 + 64);
  v0 = ((63 - v18) >> 6);

  v20 = 0;
  v58 = v13;
  if (v19)
  {
    while (2)
    {
      v21 = v20;
LABEL_18:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v23 = (v21 << 10) | (16 * v22);
      v24 = (*(v13 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v13 + 56) + v23);
      v28 = v27[1];
      v59 = *v27;

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v31 = 136315394;
        v32 = sub_1000136BC(v25, v26, &v61);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2080;
        v33 = sub_1000136BC(v59, v28, &v61);

        *(v31 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v29, v30, "%s): %s", v31, 0x16u);
        swift_arrayDestroy();

        v13 = v58;

        v20 = v21;
        if (v19)
        {
          continue;
        }
      }

      else
      {

        v20 = v21;
        if (v19)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v21 >= v0)
    {
      break;
    }

    v19 = v3[v21];
    ++v20;
    if (v19)
    {
      goto LABEL_18;
    }
  }

  v34 = v60;
  sub_10108A8E4((v60 + 2), (v60 + 32));
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  sub_10108A91C((v60 + 2));
  v37 = os_log_type_enabled(v35, v36);
  v38 = v60[77];
  v39 = v60[66];
  v40 = v60[65];
  if (v37)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v61 = v42;
    *v41 = 136315138;
    v43 = *(v60 + 2);
    *(v60 + 19) = *(v60 + 1);
    *(v60 + 20) = v43;
    *(v60 + 21) = *(v60 + 3);
    sub_10108A8E4((v60 + 2), (v60 + 44));
    v44 = String.init<A>(describing:)();
    v46 = v13;
    v47 = sub_1000136BC(v44, v45, &v61);

    *(v41 + 4) = v47;
    v13 = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "Pairing lock body %s", v41, 0xCu);
    sub_100007BAC(v42);

    v34 = v60;

    sub_10108A91C((v60 + 2));

    sub_100BA0940(v40);
  }

  else
  {
    v48 = v60[77];

    sub_100BA0940(v40);

    sub_10108A91C((v60 + 2));
  }

  v49 = v34[80];
  v50 = v34[79];

  sub_100017D5C(v50, v49);

  sub_100016590(v50, v49);
  v51 = v34[80];
  v52 = v34[79];
  v53 = v34[75];
  v54 = v34[72];
  v55 = v34[69];

  v56 = v34[1];

  return v56(v13, v52, v51);
}

unint64_t sub_10108A890()
{
  result = qword_1016C5658;
  if (!qword_1016C5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5658);
  }

  return result;
}

uint64_t sub_10108A94C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10108A9A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10108AA28()
{
  result = qword_1016C5668;
  if (!qword_1016C5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5668);
  }

  return result;
}

unint64_t sub_10108AA90()
{
  result = qword_1016C5670;
  if (!qword_1016C5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5670);
  }

  return result;
}

unint64_t sub_10108AAE8()
{
  result = qword_1016C5678;
  if (!qword_1016C5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5678);
  }

  return result;
}

unint64_t sub_10108AB40()
{
  result = qword_1016C5680;
  if (!qword_1016C5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5680);
  }

  return result;
}

uint64_t sub_10108AB94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000)
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

unint64_t sub_10108ACCC()
{
  result = qword_1016C5688;
  if (!qword_1016C5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C5688);
  }

  return result;
}

uint64_t sub_10108AD20(uint64_t a1, int *a2, uint64_t *a3, void (**a4)(char *, char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v134 = a5;
  v138 = a3;
  v139 = a4;
  v140 = a1;
  v9 = type metadata accessor for MessagingMessageContext();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v137 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BeaconObservation();
  v126 = *(v12 - 8);
  v13 = *(v126 + 64);
  __chkstk_darwin(v12 - 8);
  v131 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for KeyRequestEnvelope();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v129 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SharedBeaconRecord(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v130 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyAccessoryFamilyShareResponseEnvelope = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0);
  v22 = *(*(MyAccessoryFamilyShareResponseEnvelope - 8) + 64);
  v23 = __chkstk_darwin(MyAccessoryFamilyShareResponseEnvelope - 8);
  v128 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v124 - v25;
  v27 = type metadata accessor for UUID();
  v132 = *(v27 - 8);
  v133 = v27;
  v28 = *(v132 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = &v124 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v124 - v36;
  __chkstk_darwin(v35);
  v39 = &v124 - v38;
  v135 = v6;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v124 = v9;
    v125 = a2;
    v136 = Strong;
    v41 = *(v9 + 24);
    v127 = a6;
    v42 = (a6 + v41);
    v43 = *v42;
    v45 = *(v42 + 1);
    v44 = *(v42 + 2);
    if (sub_100580650(v43, v45, v44))
    {
      switch(v140)
      {
        case 1:
          v63 = v125;
          if (v125 != 1)
          {
            static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v96 = swift_allocObject();
            *(v96 + 16) = xmmword_10138BBE0;
            v97 = 1;
            goto LABEL_89;
          }

          sub_1005934C8(v39);
          v76 = v136;
          v77 = type metadata accessor for Transaction();
          __chkstk_darwin(v77);
          *(&v124 - 4) = v127;
          *(&v124 - 3) = v39;
          *(&v124 - 2) = v76;
          static Transaction.named<A>(_:with:)();

          return (*(v132 + 8))(v39, v133);
        case 2:
          v71 = v125;
          if (v125 == 2)
          {
            sub_100593770(v26);
            v104 = type metadata accessor for Transaction();
            __chkstk_darwin(v104);
            v105 = v136;
            *(&v124 - 4) = v26;
            *(&v124 - 3) = v105;
            *(&v124 - 2) = v127;
            static Transaction.named<A>(_:with:)();

            v61 = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope;
            v62 = v26;
            return sub_10108FCC4(v62, v61);
          }

          if (v125 != 1)
          {
            static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v110 = swift_allocObject();
            *(v110 + 16) = xmmword_10138BBE0;
            LOBYTE(v141) = 2;
            v111 = String.init<A>(describing:)();
            v113 = v112;
            *(v110 + 56) = &type metadata for String;
            v114 = sub_100008C00();
            *(v110 + 32) = v111;
            *(v110 + 40) = v113;
            *(v110 + 96) = &type metadata for Int;
            *(v110 + 104) = &protocol witness table for Int;
            *(v110 + 64) = v114;
            *(v110 + 72) = v71;
            goto LABEL_90;
          }

          sub_1005934C8(v37);
          v72 = v136;
          v73 = type metadata accessor for Transaction();
          __chkstk_darwin(v73);
          *(&v124 - 4) = v72;
          *(&v124 - 3) = v37;
          *(&v124 - 2) = v127;
          static Transaction.named<A>(_:with:)();

          return (*(v132 + 8))(v37, v133);
        case 3:
          v63 = v125;
          if (v125 == 2)
          {
            v106 = v128;
            sub_100593770(v128);
            v107 = type metadata accessor for Transaction();
            __chkstk_darwin(v107);
            v108 = v136;
            *(&v124 - 4) = v106;
            *(&v124 - 3) = v108;
            *(&v124 - 2) = v127;
            static Transaction.named<A>(_:with:)();

            v61 = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope;
            v62 = v106;
            return sub_10108FCC4(v62, v61);
          }

          if (v125 != 1)
          {
            static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v96 = swift_allocObject();
            *(v96 + 16) = xmmword_10138BBE0;
            v97 = 3;
            goto LABEL_89;
          }

          sub_1005934C8(v34);
          v74 = v136;
          v75 = type metadata accessor for Transaction();
          __chkstk_darwin(v75);
          *(&v124 - 4) = v74;
          *(&v124 - 3) = v34;
          *(&v124 - 2) = v127;
          static Transaction.named<A>(_:with:)();

          return (*(v132 + 8))(v34, v133);
        case 4:
          v63 = v125;
          if (v125 == 1)
          {
            v64 = v130;
            sub_100593A28(v130);
            v65 = v136;
            v66 = type metadata accessor for Transaction();
            __chkstk_darwin(v66);
            *(&v124 - 2) = v64;
            *(&v124 - 1) = v65;
            static Transaction.named<A>(_:with:)();

            v61 = type metadata accessor for SharedBeaconRecord;
            v62 = v64;
            return sub_10108FCC4(v62, v61);
          }

          static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_10138BBE0;
          v97 = 4;
          goto LABEL_89;
        case 5:
          sub_10108EAA4(v136, 5, v125, v138, v139, v127);
          goto LABEL_50;
        case 6:
          v63 = v125;
          if (v125 == 2)
          {
            v109 = v129;
            sub_100594508(v129);
            v119 = (v109 + *(v15 + 20));
            v120 = *v119;
            v121 = *(v119 + 1);
            v122 = *(v119 + 2);
            v123 = type metadata accessor for Transaction();
            __chkstk_darwin(v123);
            *(&v124 - 6) = v136;
            *(&v124 - 5) = v109;
            *(&v124 - 4) = v127;
            *(&v124 - 3) = v120;
            *(&v124 - 2) = v121;
            *(&v124 - 1) = v122;
            static Transaction.named<A>(_:with:)();

            v61 = type metadata accessor for KeyRequestEnvelope;
            v62 = v109;
            return sub_10108FCC4(v62, v61);
          }

          if (v125 == 1)
          {
            sub_1005934C8(v31);
            v82 = v136;
            v83 = type metadata accessor for Transaction();
            __chkstk_darwin(v83);
            *(&v124 - 6) = v82;
            *(&v124 - 5) = v31;
            *(&v124 - 4) = v127;
            *(&v124 - 3) = 0;
            *(&v124 - 2) = 0;
            *(&v124 - 1) = 0;
            static Transaction.named<A>(_:with:)();

            return (*(v132 + 8))(v31, v133);
          }

          static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_10138BBE0;
          v97 = 6;
          goto LABEL_89;
        case 7:
          static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v69 = swift_allocObject();
          *(v69 + 16) = xmmword_10138BBE0;
          LOBYTE(v141) = 7;
          goto LABEL_57;
        case 8:
          static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v69 = swift_allocObject();
          *(v69 + 16) = xmmword_10138BBE0;
          v70 = 8;
          goto LABEL_56;
        case 9:
          static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v69 = swift_allocObject();
          *(v69 + 16) = xmmword_10138BBE0;
          v70 = 9;
LABEL_56:
          LOBYTE(v141) = v70;
LABEL_57:
          v85 = String.init<A>(describing:)();
          v87 = v86;
          *(v69 + 56) = &type metadata for String;
          v88 = sub_100008C00();
          *(v69 + 32) = v85;
          *(v69 + 40) = v87;
          *(v69 + 96) = &type metadata for Int;
          *(v69 + 104) = &protocol witness table for Int;
          v89 = v125;
          *(v69 + 64) = v88;
          *(v69 + 72) = v89;
          os_log(_:dso:log:_:_:)();

        case 10:
          v63 = v125;
          if (v125 == 1)
          {
            v84 = *(*(v136 + 160) + 40);
            PassthroughSubject.send(_:)();
            goto LABEL_50;
          }

          static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_10138BBE0;
          v97 = 10;
LABEL_89:
          LOBYTE(v141) = v97;
          v115 = String.init<A>(describing:)();
          v117 = v116;
          *(v96 + 56) = &type metadata for String;
          v118 = sub_100008C00();
          *(v96 + 32) = v115;
          *(v96 + 40) = v117;
          *(v96 + 96) = &type metadata for Int;
          *(v96 + 104) = &protocol witness table for Int;
          *(v96 + 64) = v118;
          *(v96 + 72) = v63;
          goto LABEL_90;
        case 11:
          if (v125 == 1)
          {
            if (swift_weakLoadStrong())
            {
              sub_100B3B2A4(v43, v45, v44);
            }

            goto LABEL_50;
          }

          static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_10138BBE0;
          LOBYTE(v141) = 11;
          v91 = String.init<A>(describing:)();
          v93 = v92;
          *(v90 + 56) = &type metadata for String;
          v94 = sub_100008C00();
          *(v90 + 32) = v91;
          *(v90 + 40) = v93;
          *(v90 + 96) = &type metadata for Int;
          *(v90 + 104) = &protocol witness table for Int;
          v95 = v125;
          *(v90 + 64) = v94;
          *(v90 + 72) = v95;
          goto LABEL_90;
        case 12:
          v67 = v125;
          if (v125 != 1)
          {
            static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v98 = swift_allocObject();
            *(v98 + 16) = xmmword_10138BBE0;
            v99 = 12;
            goto LABEL_73;
          }

          v68 = sub_100594A78();
          if (swift_weakLoadStrong())
          {
            sub_100B3BDC0(v68);
          }

LABEL_50:

        case 13:
          v67 = v125;
          if (v125 == 1)
          {
            v78 = v131;
            sub_1005947C0(v131);
            if (swift_weakLoadStrong())
            {
              sub_1000BC4D4(&qword_1016AC9D0, &unk_10139D760);
              v79 = *(v126 + 72);
              v80 = (*(v126 + 80) + 32) & ~*(v126 + 80);
              v81 = swift_allocObject();
              *(v81 + 16) = xmmword_101385D80;
              sub_10108FC3C(v78, v81 + v80, type metadata accessor for BeaconObservation);
              sub_100B3BDC0(v81);

              swift_setDeallocating();
              sub_10108FCC4(v81 + v80, type metadata accessor for BeaconObservation);
              swift_deallocClassInstance();
              v62 = v78;
              v61 = type metadata accessor for BeaconObservation;
              return sub_10108FCC4(v62, v61);
            }

            sub_10108FCC4(v78, type metadata accessor for BeaconObservation);
          }

          else
          {
            static os_log_type_t.default.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v98 = swift_allocObject();
            *(v98 + 16) = xmmword_10138BBE0;
            v99 = 13;
LABEL_73:
            LOBYTE(v141) = v99;
            v100 = String.init<A>(describing:)();
            v102 = v101;
            *(v98 + 56) = &type metadata for String;
            v103 = sub_100008C00();
            *(v98 + 32) = v100;
            *(v98 + 40) = v102;
            *(v98 + 96) = &type metadata for Int;
            *(v98 + 104) = &protocol witness table for Int;
            *(v98 + 64) = v103;
            *(v98 + 72) = v67;
LABEL_90:
            os_log(_:dso:log:_:_:)();
          }

          break;
        default:
          sub_10108C448(v136, 0, v125, v138, v139, v134, v127);
          goto LABEL_50;
      }
    }

    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000076D4(v47, qword_10177A560);
    v48 = v137;
    sub_10108FC3C(v127, v137, type metadata accessor for MessagingMessageContext);
    v50 = v138;
    v49 = v139;
    sub_100017D5C(v138, v139);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v124;
    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v141 = v56;
      *v55 = 67109378;
      *(v55 + 4) = dword_101400A4C[v140];
      sub_100016590(v50, v49);
      *(v55 + 8) = 2080;
      v57 = v48 + *(v54 + 24);
      v58 = *(v57 + 8);
      v59 = *(v57 + 16);

      sub_10108FCC4(v48, type metadata accessor for MessagingMessageContext);
      v60 = sub_1000136BC(v58, v59, &v141);

      *(v55 + 10) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "Not allowing message of type %d, from non-family member %s.", v55, 0x12u);
      sub_100007BAC(v56);
    }

    sub_100016590(v50, v49);

    v61 = type metadata accessor for MessagingMessageContext;
    v62 = v48;
    return sub_10108FCC4(v62, v61);
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_10108C448(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v345 = a7;
  v350 = a6;
  *(&v354 + 1) = a5;
  v352 = a4;
  v353 = a3;
  LODWORD(v354) = a2;
  v337 = a1;
  MyAirPodsFamilyShareEnvelope = type metadata accessor for FindMyAirPodsFamilyShareEnvelope();
  v7 = *(*(MyAirPodsFamilyShareEnvelope - 8) + 64);
  __chkstk_darwin(MyAirPodsFamilyShareEnvelope);
  v341 = &v319 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = type metadata accessor for UUID();
  v346 = *(v347 - 8);
  v9 = *(v346 + 64);
  v10 = __chkstk_darwin(v347);
  v333 = &v319 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v332 = &v319 - v12;
  MyAccessoryFamilyShareEnvelope = type metadata accessor for FindMyAccessoryFamilyShareEnvelope(0);
  v13 = *(*(MyAccessoryFamilyShareEnvelope - 8) + 64);
  __chkstk_darwin(MyAccessoryFamilyShareEnvelope);
  v340 = (&v319 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v329 = type metadata accessor for FamilyCryptoKeysV1();
  v342 = *(v329 - 8);
  v15 = *(v342 + 64);
  __chkstk_darwin(v329);
  v349 = &v319 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FamilyShareEnvelopeV1(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v339 = (&v319 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v320 = type metadata accessor for CryptoKeys();
  v327 = *(v320 - 8);
  v20 = *(v327 + 64);
  __chkstk_darwin(v320);
  v351 = (&v319 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v338 = &v319 - v24;
  v336 = type metadata accessor for DateInterval();
  v335 = *(v336 - 8);
  v25 = v335[8];
  __chkstk_darwin(v336);
  v334 = &v319 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v348 = type metadata accessor for Date();
  v344 = *(v348 - 8);
  v27 = *(v344 + 64);
  v28 = __chkstk_darwin(v348);
  v322 = &v319 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v331 = &v319 - v31;
  v32 = __chkstk_darwin(v30);
  v321 = &v319 - v33;
  v34 = __chkstk_darwin(v32);
  v328 = &v319 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v319 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v319 - v40;
  v42 = __chkstk_darwin(v39);
  v44 = &v319 - v43;
  __chkstk_darwin(v42);
  v46 = &v319 - v45;
  v343 = type metadata accessor for SharedBeaconRecord(0);
  v47 = *(*(v343 - 8) + 64);
  v48 = __chkstk_darwin(v343);
  v326 = &v319 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v330 = &v319 - v51;
  v52 = __chkstk_darwin(v50);
  v323 = (&v319 - v53);
  v54 = __chkstk_darwin(v52);
  v56 = &v319 - v55;
  v57 = __chkstk_darwin(v54);
  v59 = &v319 - v58;
  v60 = __chkstk_darwin(v57);
  v62 = &v319 - v61;
  __chkstk_darwin(v60);
  v64 = &v319 - v63;
  v65 = type metadata accessor for LegacyShareEnvelope(0);
  v66 = *(*(v65 - 8) + 64);
  v67 = __chkstk_darwin(v65);
  v70 = &v319 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v68 <= 2)
  {
    v74 = v17;
    v75 = v38;
    v341 = v74;
    v328 = v62;
    v331 = v46;
    v330 = v56;
    v332 = v64;
    v76 = v349;
    v333 = v41;
    v340 = v59;
    if (v68 == 1)
    {
      v177 = v67;
      v178 = v70;
      v179 = v354;
      v180 = v359;
      result = sub_100592778(v70);
      if (v180)
      {
        return result;
      }

      v181 = v332;
      sub_10108FC3C(v178, v332, type metadata accessor for SharedBeaconRecord);
      v182 = *(v177 + 20);
      v350 = v178;
      v183 = *(v178 + v182);
      if (*(v183 + 16))
      {
        v359 = 0;
        v184 = v335;
        v185 = v335[2];
        v186 = v334;
        MyAirPodsFamilyShareEnvelope = v183 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
        v187 = v336;
        *(&v354 + 1) = v183;
        v185(v334);
        DateInterval.start.getter();
        (v184[1])(v186, v187);
        v188 = v344;
        v189 = v331;
        v190 = v348;
        (*(v344 + 32))(v331, v44, v348);
        v191 = (v345 + *(type metadata accessor for MessagingMessageContext() + 48));
        v192 = *v191;
        v353 = v191[1];
        *&v354 = v192;
        v193 = *(v181 + 8);
        v352 = *v181;
        v349 = v193;
        v194 = v181;
        v195 = v343;
        v196 = *(v346 + 16);
        v197 = v328;
        v198 = v347;
        v196(&v328[*(v343 + 20)], v194 + *(v343 + 20), v347);
        v196(v197 + v195[6], v194 + v195[6], v198);
        v199 = (v194 + v195[7]);
        LODWORD(v342) = *v199;
        v201 = *(v199 + 1);
        v200 = *(v199 + 2);
        v341 = v201;
        v336 = v200;
        v202 = v195[10];
        v203 = (v194 + v195[9]);
        v204 = v203[1];
        v340 = *v203;
        v205 = *(v194 + v202 + 8);
        v347 = *(v194 + v202);
        v346 = v205;
        v206 = v195[12];
        v335 = *(v194 + v195[11]);
        v339 = *(v194 + v206);
        v207 = v195[14];
        LODWORD(v334) = *(v194 + v195[13]);
        LODWORD(v333) = *(v194 + v207);
        v208 = v195[16];
        v329 = *(v194 + v195[15]);
        LODWORD(v330) = *(v194 + v208);
        (*(v188 + 16))(v197 + v195[18], v189, v190);
        sub_1000D2A70(v194 + v195[19], v197 + v195[19], &qword_1016980D0, &unk_10138F3B0);
        v209 = v338;
        sub_1000D2A70(v194 + v195[20], v338, &unk_1016AF890, &qword_1013926D0);
        v210 = v195[15];
        v326 = v195[14];
        v211 = v195[20];
        v212 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
        (*(*(v212 - 8) + 56))(v197 + v211, 1, 1, v212);
        v213 = v352;
        v214 = v353;
        v215 = v349;
        *v197 = v352;
        v197[1] = v215;
        v216 = v197 + v195[7];
        *v216 = v342;
        v217 = v336;
        *(v216 + 1) = v341;
        *(v216 + 2) = v217;
        v218 = (v197 + v195[8]);
        *v218 = v354;
        v218[1] = v214;
        v219 = (v197 + v195[9]);
        *v219 = v340;
        v219[1] = v204;
        v220 = (v197 + v195[10]);
        v221 = v346;
        *v220 = v347;
        v220[1] = v221;
        *(v197 + v195[11]) = v335;
        *(v197 + v195[12]) = v339;
        *(v197 + v195[13]) = v334;
        *(v197 + v326) = v333;
        *(v197 + v210) = v329;
        *(v197 + v195[16]) = v330;
        *(v197 + v195[17]) = 1;
        sub_100017D5C(v213, v215);

        sub_10108FB0C(v209, v197 + v211);
        v222 = *(*(&v354 + 1) + 16);
        v223 = _swiftEmptyArrayStorage;
        if (v222)
        {
          v357 = _swiftEmptyArrayStorage;
          sub_101124C34(0, v222, 0);
          v224 = v357;
          v353 = *(v327 + 72);
          v225 = v320;
          v226 = v351;
          v227 = MyAirPodsFamilyShareEnvelope;
          do
          {
            v228 = v224;
            sub_10108FC3C(v227, v226, type metadata accessor for CryptoKeys);
            v229 = (v226 + v225[9]);
            v230 = *v229;
            v231 = v229[1];
            v232 = v225[5];
            v233 = (v226 + v225[6]);
            v234 = *v233;
            v235 = v233[1];
            v237 = *(v226 + v232);
            v236 = *(v226 + v232 + 8);
            *&v354 = v230;
            *(&v354 + 1) = v231;
            sub_100017D5C(v230, v231);
            sub_100017D5C(v234, v235);
            sub_1002DBC68(v237, v236);
            sub_10108FCC4(v226, type metadata accessor for CryptoKeys);
            v224 = v228;
            v357 = v228;
            v238 = v228[2];
            v239 = v224[3];
            if (v238 >= v239 >> 1)
            {
              sub_101124C34((v239 > 1), v238 + 1, 1);
              v225 = v320;
              v224 = v357;
            }

            v224[2] = v238 + 1;
            v240 = &v224[6 * v238];
            *&v241 = v234;
            *(&v241 + 1) = v235;
            *(v240 + 2) = v354;
            *(v240 + 3) = v241;
            v240[8] = v237;
            v240[9] = v236;
            v227 += v353;
            --v222;
            v226 = v351;
          }

          while (v222);
          v223 = v224;
          v197 = v328;
        }

        v295 = type metadata accessor for Transaction();
        __chkstk_darwin(v295);
        *(&v319 - 6) = v345;
        *(&v319 - 5) = v197;
        *(&v319 - 4) = v337;
        *(&v319 - 3) = 0;
        *(&v319 - 2) = 0;
        *(&v319 - 1) = v223;
        static Transaction.named<A>(_:with:)();

        (*(v344 + 8))(v331, v348);
        sub_10108FCC4(v332, type metadata accessor for SharedBeaconRecord);
        sub_10108FCC4(v197, type metadata accessor for SharedBeaconRecord);
        v130 = type metadata accessor for LegacyShareEnvelope;
        v296 = v350;
      }

      else
      {
        static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v309 = swift_allocObject();
        *(v309 + 16) = xmmword_101385D80;
        sub_100D47A50(v179, 1, v352, *(&v354 + 1));
        v311 = v310;
        v313 = v312;
        *(v309 + 56) = &type metadata for String;
        *(v309 + 64) = sub_100008C00();
        *(v309 + 32) = v311;
        *(v309 + 40) = v313;
        os_log(_:dso:log:_:_:)();

        sub_10108FCC4(v181, type metadata accessor for SharedBeaconRecord);
        v130 = type metadata accessor for LegacyShareEnvelope;
        v296 = v350;
      }

      return sub_10108FCC4(v296, v130);
    }

    v71 = v354;
    if (v68 != 2)
    {
LABEL_33:
      v242 = v68;
      static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v243 = swift_allocObject();
      *(v243 + 16) = xmmword_10138BBE0;
      LOBYTE(v357) = v71;
      v244 = String.init<A>(describing:)();
      v246 = v245;
      *(v243 + 56) = &type metadata for String;
      v247 = sub_100008C00();
      *(v243 + 32) = v244;
      *(v243 + 40) = v246;
      *(v243 + 96) = &type metadata for Int;
      *(v243 + 104) = &protocol witness table for Int;
      *(v243 + 64) = v247;
      *(v243 + 72) = v242;
      os_log(_:dso:log:_:_:)();
    }

    if (*(v350 + 16))
    {
      v77 = v350;
      v78 = sub_100771D58(0x44495344746C41, 0xE700000000000000);
      v79 = v339;
      v80 = v76;
      if (v81)
      {
        sub_100013894(*(v77 + 56) + 32 * v78, &v357);
        sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
        v82 = swift_dynamicCast();
        if (v82)
        {
          v83 = v355;
        }

        else
        {
          v83 = 0;
        }

        if (v82)
        {
          v84 = v356;
        }

        else
        {
          v84 = 0;
        }
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      v248 = v342;
    }

    else
    {
      v83 = 0;
      v84 = 0;
      v79 = v339;
      v248 = v342;
      v80 = v349;
    }

    v249 = v341;
    v250 = v359;
    sub_100592A30(v79);
    v359 = v250;
    if (v250)
    {
    }

    v251 = v340;
    sub_10108FC3C(v79, v340, type metadata accessor for SharedBeaconRecord);
    v252 = *(v79 + *(v249 + 20));
    if (*(v252 + 16))
    {
      *&v354 = v83;
      *(&v354 + 1) = v84;
      v253 = v75;
      v254 = v252 + ((*(v248 + 80) + 32) & ~*(v248 + 80));
      v255 = *(v329 + 20);
      v256 = v335;
      v353 = v252;
      v257 = v334;
      v258 = v336;
      (v335[2])(v334, v254 + v255, v336);
      DateInterval.start.getter();
      (v256[1])(v257, v258);
      v259 = v344;
      (*(v344 + 32))(v333, v253, v348);
      v260 = (v345 + *(type metadata accessor for MessagingMessageContext() + 48));
      v261 = *v260;
      v351 = v260[1];
      v352 = v261;
      v262 = *v251;
      v349 = v251[1];
      v350 = v262;
      v263 = v343;
      v264 = *(v346 + 16);
      v265 = v330;
      v266 = v347;
      v264(&v330[*(v343 + 20)], v251 + *(v343 + 20), v347);
      v264(&v265[v263[6]], v251 + v263[6], v266);
      v267 = v251 + v263[7];
      LODWORD(v341) = *v267;
      v268 = *(v267 + 2);
      v336 = *(v267 + 1);
      v269 = v263[10];
      v270 = (v251 + v263[9]);
      v271 = v270[1];
      v335 = *v270;
      v272 = *(v251 + v269 + 8);
      v347 = *(v251 + v269);
      v346 = v272;
      v273 = v263[12];
      v332 = *(v251 + v263[11]);
      v334 = *(v251 + v273);
      v274 = v263[14];
      LODWORD(v331) = *(v251 + v263[13]);
      LODWORD(v329) = *(v251 + v274);
      v275 = v263[16];
      v327 = *(v251 + v263[15]);
      LODWORD(v328) = *(v251 + v275);
      (*(v259 + 16))(&v265[v263[18]], v333, v348);
      sub_1000D2A70(v251 + v263[19], &v265[v263[19]], &qword_1016980D0, &unk_10138F3B0);
      sub_1000D2A70(v251 + v263[20], v338, &unk_1016AF890, &qword_1013926D0);
      v276 = v263[15];
      v326 = v263[14];
      MyAirPodsFamilyShareEnvelope = v276;
      v277 = v263[20];
      v278 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
      (*(*(v278 - 8) + 56))(&v265[v277], 1, 1, v278);
      v280 = v349;
      v279 = v350;
      *v265 = v350;
      *(v265 + 1) = v280;
      v281 = &v265[v263[7]];
      *v281 = v341;
      *(v281 + 1) = v336;
      *(v281 + 2) = v268;
      v282 = &v265[v263[8]];
      v283 = v351;
      *v282 = v352;
      v282[1] = v283;
      v284 = &v265[v263[9]];
      *v284 = v335;
      v284[1] = v271;
      v285 = &v265[v263[10]];
      v286 = v346;
      *v285 = v347;
      v285[1] = v286;
      *&v265[v263[11]] = v332;
      *&v265[v263[12]] = v334;
      v265[v263[13]] = v331;
      v265[v326] = v329;
      *&v265[MyAirPodsFamilyShareEnvelope] = v327;
      v265[v263[16]] = v328;
      *&v265[v263[17]] = 1;
      sub_100017D5C(v279, v280);

      sub_10108FB0C(v338, &v265[v277]);
      v287 = *(v353 + 16);
      v288 = _swiftEmptyArrayStorage;
      if (v287)
      {
        v357 = _swiftEmptyArrayStorage;
        sub_101124C34(0, v287, 0);
        v288 = v357;
        v289 = *(v342 + 72);
        do
        {
          sub_10108FC3C(v254, v80, type metadata accessor for FamilyCryptoKeysV1);
          sub_100DE5F74(v358);
          sub_10108FCC4(v80, type metadata accessor for FamilyCryptoKeysV1);
          v357 = v288;
          v291 = v288[2];
          v290 = v288[3];
          if (v291 >= v290 >> 1)
          {
            sub_101124C34((v290 > 1), v291 + 1, 1);
            v288 = v357;
          }

          v288[2] = v291 + 1;
          v292 = &v288[6 * v291];
          v293 = v358[0];
          v294 = v358[2];
          v292[3] = v358[1];
          v292[4] = v294;
          v292[2] = v293;
          v254 += v289;
          --v287;
        }

        while (v287);
        v265 = v330;
      }

      v297 = type metadata accessor for Transaction();
      __chkstk_darwin(v297);
      *(&v319 - 6) = v345;
      *(&v319 - 5) = v265;
      v298 = v354;
      *(&v319 - 4) = v337;
      *(&v319 - 3) = v298;
      *(&v319 - 1) = v288;
      static Transaction.named<A>(_:with:)();

      (*(v344 + 8))(v333, v348);
      sub_10108FCC4(v340, type metadata accessor for SharedBeaconRecord);
      sub_10108FCC4(v265, type metadata accessor for SharedBeaconRecord);
      v130 = type metadata accessor for FamilyShareEnvelopeV1;
      v131 = &v360;
      goto LABEL_50;
    }

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v314 = swift_allocObject();
    *(v314 + 16) = xmmword_101385D80;
    sub_100D47A50(v71, 2, v352, *(&v354 + 1));
    v316 = v315;
    v318 = v317;
    *(v314 + 56) = &type metadata for String;
    *(v314 + 64) = sub_100008C00();
    *(v314 + 32) = v316;
    *(v314 + 40) = v318;
    os_log(_:dso:log:_:_:)();

    sub_10108FCC4(v340, type metadata accessor for SharedBeaconRecord);
    return sub_10108FCC4(v79, type metadata accessor for FamilyShareEnvelopeV1);
  }

  else
  {
    if (v68 != 3)
    {
      if (v68 != 4)
      {
        LOBYTE(v71) = v354;
        if (v68 == 5)
        {
          v72 = v359;
          result = sub_100593258();
          if (!v72)
          {
            static os_log_type_t.debug.getter();
            if (qword_101695030 != -1)
            {
              swift_once();
            }

            return os_log(_:dso:log:_:_:)();
          }

          return result;
        }

        goto LABEL_33;
      }

      v132 = v341;
      v133 = v359;
      result = sub_100592FA0(v341);
      if (v133)
      {
        return result;
      }

      v134 = v326;
      sub_10108FC3C(v132, v326, type metadata accessor for SharedBeaconRecord);
      v135 = v343;
      v136 = v134 + *(v343 + 24);
      v137 = v347;
      v353 = *(v346 + 16);
      (v353)(v333, v136, v347);
      v138 = *(v132 + *(MyAirPodsFamilyShareEnvelope + 20));
      if (!*(v138 + 16))
      {
        static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v304 = swift_allocObject();
        *(v304 + 16) = xmmword_101385D80;
        sub_100D47A50(v354, 4, v352, *(&v354 + 1));
        v306 = v305;
        v308 = v307;
        *(v304 + 56) = &type metadata for String;
        *(v304 + 64) = sub_100008C00();
        *(v304 + 32) = v306;
        *(v304 + 40) = v308;
        os_log(_:dso:log:_:_:)();

        sub_10108FCC4(v134, type metadata accessor for SharedBeaconRecord);
        (*(v346 + 8))(v333, v347);
        v130 = type metadata accessor for FindMyAirPodsFamilyShareEnvelope;
        v296 = v341;
        return sub_10108FCC4(v296, v130);
      }

      *(&v354 + 1) = *(v132 + *(MyAirPodsFamilyShareEnvelope + 24));
      v139 = *(v342 + 80);
      v359 = 0;
      v352 = (v138 + ((v139 + 32) & ~v139));
      v140 = *(v329 + 20);
      v340 = v136;
      v141 = v335;
      *&v354 = v138;
      v142 = v334;
      v143 = v336;
      (v335[2])(v334, v352 + v140, v336);
      v144 = v322;
      DateInterval.start.getter();
      (v141[1])(v142, v143);
      v145 = v344;
      v146 = v348;
      (*(v344 + 32))(v331, v144, v348);
      v352 = *v352;
      v147 = (v345 + *(type metadata accessor for MessagingMessageContext() + 48));
      v148 = *v147;
      v350 = v147[1];
      v351 = v148;
      v149 = v134[1];
      v349 = *v134;
      v342 = v149;
      v150 = v330;
      v151 = v353;
      (v353)(&v330[v135[5]], v134 + v135[5], v137);
      v151(&v150[v135[6]], v340, v137);
      v152 = v134 + v135[7];
      v153 = *v152;
      v154 = *(v152 + 2);
      v339 = *(v152 + 1);
      v155 = v135[10];
      v156 = (v134 + v135[9]);
      v157 = v156[1];
      v336 = *v156;
      v158 = *(v134 + v155 + 8);
      v353 = *(v134 + v155);
      v340 = v158;
      v159 = v135[12];
      v334 = *(v134 + v135[11]);
      v335 = *(v134 + v159);
      v160 = v135[14];
      LODWORD(v332) = *(v134 + v135[13]);
      LODWORD(v329) = *(v134 + v160);
      v161 = v135[16];
      v327 = *(v134 + v135[15]);
      LODWORD(v328) = *(v134 + v161);
      (*(v145 + 16))(&v150[v135[18]], v331, v146);
      sub_1000D2A70(v134 + v135[19], &v150[v135[19]], &qword_1016980D0, &unk_10138F3B0);
      v162 = v338;
      sub_1000D2A70(v134 + v135[20], v338, &unk_1016AF890, &qword_1013926D0);
      v163 = v135[15];
      MyAirPodsFamilyShareEnvelope = v135[14];
      MyAccessoryFamilyShareEnvelope = v163;
      v164 = v135[20];
      v165 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
      (*(*(v165 - 8) + 56))(&v150[v164], 1, 1, v165);
      v166 = v349;
      v167 = v342;
      *v150 = v349;
      *(v150 + 1) = v167;
      v168 = &v150[v135[7]];
      *v168 = v153;
      *(v168 + 1) = v339;
      *(v168 + 2) = v154;
      v169 = &v150[v135[8]];
      v170 = v350;
      *v169 = v351;
      v169[1] = v170;
      v171 = &v150[v135[9]];
      *v171 = v336;
      v171[1] = v157;
      v172 = &v150[v135[10]];
      v173 = v340;
      *v172 = v353;
      *(v172 + 1) = v173;
      *&v150[v135[11]] = v334;
      *&v150[v135[12]] = v335;
      v150[v135[13]] = v332;
      v150[MyAirPodsFamilyShareEnvelope] = v329;
      *&v150[MyAccessoryFamilyShareEnvelope] = v327;
      v150[v135[16]] = v328;
      *&v150[v135[17]] = v352;
      sub_100017D5C(v166, v167);

      sub_10108FB0C(v162, &v150[v164]);
      v174 = type metadata accessor for Transaction();
      __chkstk_darwin(v174);
      *(&v319 - 6) = v345;
      *(&v319 - 5) = v150;
      v175 = v333;
      *(&v319 - 4) = v337;
      *(&v319 - 3) = v175;
      v176 = *(&v354 + 1);
      *(&v319 - 2) = v354;
      *(&v319 - 1) = v176;
      static Transaction.named<A>(_:with:)();
      (*(v344 + 8))(v331, v348);
      sub_10108FCC4(v134, type metadata accessor for SharedBeaconRecord);
      sub_10108FCC4(v150, type metadata accessor for SharedBeaconRecord);
      (*(v346 + 8))(v175, v347);
      v130 = type metadata accessor for FindMyAirPodsFamilyShareEnvelope;
      v131 = &v362;
LABEL_50:
      v296 = *(v131 - 32);
      return sub_10108FCC4(v296, v130);
    }

    v85 = v340;
    v86 = v359;
    result = sub_100592CE8(v340);
    v87 = v343;
    if (v86)
    {
      return result;
    }

    v359 = 0;
    v88 = v323;
    sub_10108FC3C(v85, v323, type metadata accessor for SharedBeaconRecord);
    v89 = v88 + v87[6];
    v90 = v347;
    v353 = *(v346 + 16);
    (v353)(v332, v89, v347);
    v91 = *(v85 + *(MyAccessoryFamilyShareEnvelope + 20));
    if (*(v91 + 16))
    {
      *(&v354 + 1) = *(v85 + *(MyAccessoryFamilyShareEnvelope + 24));
      v92 = type metadata accessor for FamilyCryptoKeysV2();
      v352 = (v91 + ((*(*(v92 - 8) + 80) + 32) & ~*(*(v92 - 8) + 80)));
      v93 = *(v92 + 20);
      v341 = v89;
      v94 = v335;
      v95 = v335[2];
      v96 = v334;
      *&v354 = v91;
      v97 = v336;
      v95(v334, v352 + v93, v336);
      v98 = v321;
      DateInterval.start.getter();
      (v94[1])(v96, v97);
      v99 = v344;
      v100 = v328;
      (*(v344 + 32))(v328, v98, v348);
      v352 = *v352;
      v101 = (v345 + *(type metadata accessor for MessagingMessageContext() + 48));
      v102 = *v101;
      v350 = v101[1];
      v351 = v102;
      v103 = v88[1];
      v349 = *v88;
      v342 = v103;
      v104 = v330;
      v105 = v353;
      (v353)(&v330[v87[5]], v88 + v87[5], v90);
      v105(&v104[v87[6]], v341, v90);
      v106 = v88 + v87[7];
      LODWORD(v339) = *v106;
      v107 = *(v106 + 2);
      v336 = *(v106 + 1);
      v108 = v87[10];
      v109 = (v88 + v87[9]);
      v110 = v109[1];
      v335 = *v109;
      v111 = *(v88 + v108 + 8);
      v353 = *(v88 + v108);
      v341 = v111;
      v112 = v87[12];
      v333 = *(v88 + v87[11]);
      v334 = *(v88 + v112);
      v113 = v87[14];
      LODWORD(v331) = *(v88 + v87[13]);
      LODWORD(v329) = *(v88 + v113);
      v114 = v87[16];
      v326 = *(v88 + v87[15]);
      LODWORD(v327) = *(v88 + v114);
      (*(v99 + 16))(&v104[v87[18]], v100, v348);
      sub_1000D2A70(v88 + v87[19], &v104[v87[19]], &qword_1016980D0, &unk_10138F3B0);
      v115 = v338;
      sub_1000D2A70(v88 + v87[20], v338, &unk_1016AF890, &qword_1013926D0);
      v116 = v87[15];
      MyAirPodsFamilyShareEnvelope = v87[14];
      MyAccessoryFamilyShareEnvelope = v116;
      v117 = v87[20];
      v118 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
      (*(*(v118 - 8) + 56))(&v104[v117], 1, 1, v118);
      v119 = v349;
      v120 = v350;
      v121 = v342;
      *v104 = v349;
      *(v104 + 1) = v121;
      v122 = &v104[v87[7]];
      *v122 = v339;
      *(v122 + 1) = v336;
      *(v122 + 2) = v107;
      v123 = &v104[v87[8]];
      *v123 = v351;
      v123[1] = v120;
      v124 = &v104[v87[9]];
      *v124 = v335;
      v124[1] = v110;
      v125 = &v104[v87[10]];
      v126 = v341;
      *v125 = v353;
      *(v125 + 1) = v126;
      *&v104[v87[11]] = v333;
      *&v104[v87[12]] = v334;
      v104[v87[13]] = v331;
      v104[MyAirPodsFamilyShareEnvelope] = v329;
      *&v104[MyAccessoryFamilyShareEnvelope] = v326;
      v104[v87[16]] = v327;
      *&v104[v87[17]] = v352;
      sub_100017D5C(v119, v121);

      sub_10108FB0C(v115, &v104[v117]);
      v127 = type metadata accessor for Transaction();
      __chkstk_darwin(v127);
      *(&v319 - 6) = v345;
      *(&v319 - 5) = v104;
      v128 = v332;
      *(&v319 - 4) = v337;
      *(&v319 - 3) = v128;
      v129 = *(&v354 + 1);
      *(&v319 - 2) = v354;
      *(&v319 - 1) = v129;
      static Transaction.named<A>(_:with:)();
      (*(v344 + 8))(v328, v348);
      sub_10108FCC4(v88, type metadata accessor for SharedBeaconRecord);
      sub_10108FCC4(v104, type metadata accessor for SharedBeaconRecord);
      (*(v346 + 8))(v128, v347);
      v130 = type metadata accessor for FindMyAccessoryFamilyShareEnvelope;
      v131 = &v361;
      goto LABEL_50;
    }

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v299 = swift_allocObject();
    *(v299 + 16) = xmmword_101385D80;
    sub_100D47A50(v354, 3, v352, *(&v354 + 1));
    v301 = v300;
    v303 = v302;
    *(v299 + 56) = &type metadata for String;
    *(v299 + 64) = sub_100008C00();
    *(v299 + 32) = v301;
    *(v299 + 40) = v303;
    os_log(_:dso:log:_:_:)();

    sub_10108FCC4(v88, type metadata accessor for SharedBeaconRecord);
    (*(v346 + 8))(v332, v347);
    return sub_10108FCC4(v340, type metadata accessor for FindMyAccessoryFamilyShareEnvelope);
  }
}

uint64_t sub_10108EAA4(uint64_t a1, int a2, int *a3, void (**a4)(char *, char *, uint64_t), void (**a5)(char *, char *, uint64_t), uint64_t a6)
{
  *&v133 = a6;
  v136 = a4;
  v137 = a5;
  LODWORD(v138) = a2;
  v129 = a1;
  v149 = type metadata accessor for DateInterval();
  v128 = *(v149 - 8);
  v7 = *(v128 + 64);
  v8 = __chkstk_darwin(v149);
  v143 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v146 = &v125 - v10;
  v11 = type metadata accessor for FamilyCryptoKeysV2();
  v144 = *(v11 - 8);
  v145 = v11;
  v12 = *(v144 + 64);
  v13 = __chkstk_darwin(v11);
  v142 = (&v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v16 = (&v125 - v15);
  MyAccessoryFamilyKeyEnvelope = type metadata accessor for FindMyAccessoryFamilyKeyEnvelope();
  v17 = *(*(MyAccessoryFamilyKeyEnvelope - 8) + 64);
  __chkstk_darwin(MyAccessoryFamilyKeyEnvelope);
  v132 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for FamilyCryptoKeysV1();
  v126 = *(v141 - 8);
  v19 = *(v126 + 64);
  __chkstk_darwin(v141);
  v21 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TimeBasedKey();
  v147 = *(v22 - 8);
  v148 = v22;
  v23 = *(v147 + 64);
  v24 = __chkstk_darwin(v22);
  v140 = &v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v125 - v27;
  __chkstk_darwin(v26);
  v30 = &v125 - v29;
  v131 = type metadata accessor for UUID();
  v130 = *(v131 - 8);
  v31 = *(v130 + 64);
  v32 = __chkstk_darwin(v131);
  v34 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  *&v134 = &v125 - v35;
  v36 = type metadata accessor for SelfBeaconingKeyEnvelope(0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v135 = (&v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for LegacySelfBeaconingKeyEnvelope(0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = &v125 - v42;
  if (a3 == 3)
  {
    v141 = v34;
    v60 = v132;
    v61 = v139;
    result = sub_100594250(v132);
    if (v61)
    {
      return result;
    }

    (*(v130 + 16))(v141, v60, v131);
    v67 = MyAccessoryFamilyKeyEnvelope;
    v68 = *(v60 + *(MyAccessoryFamilyKeyEnvelope + 20));
    v69 = *(v68 + 16);
    v70 = _swiftEmptyArrayStorage;
    a3 = &unk_10138B000;
    v139 = 0;
    if (!v69)
    {
      v72 = v144;
      v74 = v145;
LABEL_36:
      v95 = *(v60 + *(v67 + 24));
      v96 = *(v95 + 2);
      v97 = _swiftEmptyArrayStorage;
      a3 = v141;
      if (!v96)
      {
LABEL_51:
        v124 = type metadata accessor for Transaction();
        __chkstk_darwin(v124);
        *(&v125 - 4) = v129;
        *(&v125 - 3) = a3;
        *(&v125 - 2) = v70;
        *(&v125 - 1) = v97;
        static Transaction.named<A>(_:with:)();

        sub_10108FCC4(v132, type metadata accessor for FindMyAccessoryFamilyKeyEnvelope);
        return (*(v130 + 8))(a3, v131);
      }

      v151 = _swiftEmptyArrayStorage;
      v136 = v96;
      sub_101124028(0, v96, 0);
      v98 = 0;
      v97 = v151;
      v99 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v146 = v95;
      v138 = &v95[v99];
      v137 = (v128 + 16);
      v135 = (v128 + 32);
      v134 = xmmword_10138BBF0;
      v101 = v142;
      v100 = v143;
      while (v98 < *(v146 + 2))
      {
        sub_10108FC3C(&v138[*(v72 + 72) * v98], v101, type metadata accessor for FamilyCryptoKeysV2);
        a3 = *v101;
        (*v137)(v100, v101 + *(v74 + 20), v149);
        v102 = type metadata accessor for __DataStorage();
        v103 = *(v102 + 48);
        v104 = *(v102 + 52);
        swift_allocObject();
        v105 = __DataStorage.init(length:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
          {
            goto LABEL_58;
          }

          v106 = *(v102 + 48);
          v107 = *(v102 + 52);
          swift_allocObject();
          v108 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v105 = v108;
        }

        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_61;
        }

        v109 = result;
        v110 = __DataStorage._offset.getter();
        v111 = -v110;
        if (__OFSUB__(0, v110))
        {
          goto LABEL_56;
        }

        v112 = __DataStorage._length.getter();
        if (v112 >= 32)
        {
          v113 = 32;
        }

        else
        {
          v113 = v112;
        }

        bzero((v109 + v111), v113);

        v74 = v145;
        v114 = v142;
        v115 = (v142 + *(v145 + 24));
        v116 = *v115;
        v117 = v115[1];
        sub_100017D5C(*v115, v117);
        v118 = v114;
        v119 = v140;
        sub_10108FCC4(v118, type metadata accessor for FamilyCryptoKeysV2);
        *v119 = a3;
        v120 = v148;
        (*v135)(&v119[v148[5]], v143, v149);
        v121 = &v119[v120[6]];
        *v121 = 0x2000000000;
        *(v121 + 1) = v105 | 0x4000000000000000;
        *(v121 + 2) = v116;
        *(v121 + 3) = v117;
        *(v121 + 2) = v134;
        v151 = v97;
        v123 = v97[2];
        v122 = v97[3];
        if (v123 >= v122 >> 1)
        {
          sub_101124028(v122 > 1, v123 + 1, 1);
          v97 = v151;
        }

        ++v98;
        v97[2] = v123 + 1;
        sub_10025DC70(v119, v97 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v123);
        v100 = v143;
        v72 = v144;
        a3 = v141;
        v101 = v142;
        if (v136 == v98)
        {
          goto LABEL_51;
        }
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v151 = _swiftEmptyArrayStorage;
    v135 = v69;
    sub_101124028(0, v69, 0);
    v71 = 0;
    v70 = v151;
    v72 = v144;
    v137 = (v68 + ((*(v72 + 80) + 32) & ~*(v72 + 80)));
    v138 = v68;
    v136 = (v128 + 16);
    *&v134 = v128 + 32;
    v133 = xmmword_10138BBF0;
    v74 = v145;
    v73 = v146;
    while (1)
    {
      if (v71 >= *(v138 + 2))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_10108FC3C(v137 + *(v72 + 72) * v71, v16, type metadata accessor for FamilyCryptoKeysV2);
      a3 = *v16;
      (*v136)(v73, v16 + *(v74 + 20), v149);
      v75 = type metadata accessor for __DataStorage();
      v76 = *(v75 + 48);
      v77 = *(v75 + 52);
      swift_allocObject();
      v78 = __DataStorage.init(length:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
        {
          goto LABEL_57;
        }

        v79 = *(v75 + 48);
        v80 = *(v75 + 52);
        swift_allocObject();
        v81 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v78 = v81;
      }

      result = __DataStorage._bytes.getter();
      if (!result)
      {
        break;
      }

      v82 = result;
      v83 = __DataStorage._offset.getter();
      v84 = -v83;
      if (__OFSUB__(0, v83))
      {
        goto LABEL_54;
      }

      v85 = __DataStorage._length.getter();
      if (v85 >= 32)
      {
        v86 = 32;
      }

      else
      {
        v86 = v85;
      }

      bzero((v82 + v84), v86);

      v74 = v145;
      v87 = (v16 + *(v145 + 24));
      v88 = *v87;
      v89 = v87[1];
      sub_100017D5C(*v87, v89);
      sub_10108FCC4(v16, type metadata accessor for FamilyCryptoKeysV2);
      *v28 = a3;
      a3 = v148;
      (*v134)(&v28[v148[5]], v146, v149);
      v90 = &v28[a3[6]];
      *v90 = 0x2000000000;
      *(v90 + 1) = v78 | 0x4000000000000000;
      *(v90 + 2) = v88;
      *(v90 + 3) = v89;
      *(v90 + 2) = v133;
      v151 = v70;
      v92 = v70[2];
      v91 = v70[3];
      if (v92 >= v91 >> 1)
      {
        sub_101124028(v91 > 1, v92 + 1, 1);
        v70 = v151;
      }

      ++v71;
      v70[2] = v92 + 1;
      sub_10025DC70(v28, v70 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v92);
      v72 = v144;
      v73 = v146;
      if (v135 == v71)
      {
        v60 = v132;
        v67 = MyAccessoryFamilyKeyEnvelope;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    if (a3 != 2)
    {
      v44 = v139;
      if (a3 == 1)
      {
        result = sub_100593CE0(&v125 - v42);
        if (!v44)
        {
          sub_101136210(v133, v43, *&v43[*(v39 + 20)]);
          return sub_10108FCC4(v43, type metadata accessor for LegacySelfBeaconingKeyEnvelope);
        }

        return result;
      }

      static os_log_type_t.default.getter();
      if (qword_101695030 == -1)
      {
LABEL_16:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_10138BBE0;
        LOBYTE(v151) = v138;
        v63 = String.init<A>(describing:)();
        v65 = v64;
        *(v62 + 56) = &type metadata for String;
        v66 = sub_100008C00();
        *(v62 + 32) = v63;
        *(v62 + 40) = v65;
        *(v62 + 96) = &type metadata for Int;
        *(v62 + 104) = &protocol witness table for Int;
        *(v62 + 64) = v66;
        *(v62 + 72) = a3;
        os_log(_:dso:log:_:_:)();
      }

LABEL_59:
      swift_once();
      goto LABEL_16;
    }

    v46 = v135;
    v47 = v139;
    result = sub_100593F98(v135);
    if (!v47)
    {
      (*(v130 + 16))(v134, v46, v131);
      v48 = *&v46[*(v36 + 20)];
      v49 = *(v48 + 16);
      if (v49)
      {
        v139 = 0;
        v151 = _swiftEmptyArrayStorage;
        sub_101124028(0, v49, 0);
        v50 = v151;
        v51 = v48 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
        v146 = *(v126 + 72);
        v52 = (v128 + 16);
        do
        {
          sub_10108FC3C(v51, v21, type metadata accessor for FamilyCryptoKeysV1);
          v53 = *v21;
          v54 = v148;
          (*v52)(&v30[v148[5]], &v21[*(v141 + 20)], v149);
          sub_100DE5F74(v150);
          sub_10108FCC4(v21, type metadata accessor for FamilyCryptoKeysV1);
          *v30 = v53;
          v55 = &v30[v54[6]];
          v56 = v150[2];
          v57 = v150[0];
          *(v55 + 1) = v150[1];
          *(v55 + 2) = v56;
          *v55 = v57;
          v151 = v50;
          v59 = v50[2];
          v58 = v50[3];
          if (v59 >= v58 >> 1)
          {
            sub_101124028(v58 > 1, v59 + 1, 1);
            v50 = v151;
          }

          v50[2] = v59 + 1;
          sub_10025DC70(v30, v50 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v59);
          v51 += v146;
          --v49;
        }

        while (v49);
        v46 = v135;
      }

      else
      {
        v50 = _swiftEmptyArrayStorage;
      }

      v93 = type metadata accessor for Transaction();
      __chkstk_darwin(v93);
      v94 = v134;
      *(&v125 - 4) = v129;
      *(&v125 - 3) = v94;
      *(&v125 - 2) = v50;
      *(&v125 - 1) = _swiftEmptyArrayStorage;
      static Transaction.named<A>(_:with:)();

      sub_10108FCC4(v46, type metadata accessor for SelfBeaconingKeyEnvelope);
      return (*(v130 + 8))(v94, v131);
    }
  }

  return result;
}

uint64_t sub_10108FB0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10108FC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10108FCC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10108FD6C(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 36));
  sub_1000198E8();
  scale<A, B>(_:_:)();
  return v4;
}

uint64_t sub_10108FDDC(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 32));
  sub_1000198E8();
  scale<A, B>(_:_:)();
  return v4;
}

uint64_t sub_10108FE4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for BeaconStoreFileRecord();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10108FEC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(type metadata accessor for URL() - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + *(v6 + 80)) & ~*(v6 + 80);
  if (!*(v6 + 84))
  {
    ++v7;
  }

  v9 = v7 + v8;
  if (v9 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 254) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v15 < 2)
    {
LABEL_28:
      v17 = *(a1 + v10);
      if (v17 >= 2)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_28;
  }

LABEL_17:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 255;
}

void sub_101090064(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = *(v8 + 64);
  v10 = (v9 + *(v8 + 80)) & ~*(v8 + 80);
  if (!*(v8 + 84))
  {
    ++v9;
  }

  v11 = v9 + v10;
  if (v11 <= v7)
  {
    v11 = v7;
  }

  v12 = v11 + 1;
  if (a3 < 0xFF)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 254) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFE)
  {
    v14 = a2 - 255;
    if (v12 >= 4)
    {
      bzero(a1, v11 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v11 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_41:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v11] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_26;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t type metadata accessor for BeaconStoreFileRecord()
{
  result = qword_1016C5788;
  if (!qword_1016C5788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101090310()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_10073FACC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t (*sub_101090394(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10109BBF4(v3, v8);
  return sub_1010904AC;
}

void (*sub_1010904B0(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10109BD34(v3, v8);
  return sub_10109C944;
}

void sub_1010905C8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_101090640()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C578);
  sub_1000076D4(v0, qword_10177C578);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010906C0()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100044B3C(v5, qword_1016C57C0);
  sub_1000076D4(v5, qword_1016C57C0);
  *v4 = 60;
  (*(v1 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v0);
  return OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)();
}

uint64_t sub_1010907CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C57D8);
  v1 = sub_1000076D4(v0, qword_1016C57D8);
  if (qword_1016951D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C578);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1010908E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    v9 = type metadata accessor for Date();
    v10 = swift_dynamicCast();
    v11 = *(v9 - 8);
    (*(v11 + 56))(v5, v10 ^ 1u, 1, v9);
    if ((*(v11 + 48))(v5, 1, v9) != 1)
    {
      return (*(v11 + 32))(a1, v5, v9);
    }
  }

  else
  {
    sub_10000B3A8(v16, &unk_1016A0B10, &qword_10139BF40);
    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  }

  sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
  return static Date.distantPast.getter();
}

uint64_t sub_101090B40()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 BOOLForKey:v10];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_101090CA8(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    [v10 setBool:a1 & 1 forKey:v11];
  }

  else
  {
    __break(1u);
  }
}

void *sub_101090E18(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC488();
  (*(v8 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v7);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = sub_1000BC4D4(&unk_1016AA5C8, &qword_1013BD248);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v2[5] = AsyncStreamProvider.init()();
  v2[6] = _swiftEmptyDictionarySingleton;
  v2[8] = 0;
  v2[9] = 0;
  v2[7] = &_swiftEmptySetSingleton;
  v15 = v19;
  v2[3] = v18;
  v2[4] = v15;
  return v2;
}

uint64_t sub_1010910D0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v52 - v5;
  v7 = sub_1000BC4D4(&qword_1016AA780, &qword_1013BD3D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v61 = (&v52 - v10);
  v11 = sub_1000BC4D4(&qword_1016A8E88, &qword_1013BA3F8);
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  __chkstk_darwin(v11);
  v14 = &v52 - v13;
  v15 = sub_1000BC4D4(&qword_1016A8E90, &unk_1013BA400);
  v16 = *(v15 - 8);
  v62 = v15;
  v63 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v52 - v18;
  v20 = sub_1000BC4D4(&qword_1016C59F0, &qword_101400B98);
  v65 = *(v20 - 8);
  v66 = v20;
  v21 = *(v65 + 64);
  __chkstk_darwin(v20);
  v64 = &v52 - v22;

  unsafeFromAsyncTask<A>(_:)();

  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  v23 = qword_101698690;
  v24 = qword_101698690 + 1;
  if (qword_101698690 == -1)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  v58 = v2;
  if (v24 >= 0x3E8)
  {
    v24 = 1;
  }

  qword_101698690 = v24;
  if (qword_1016951E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v55 = v8;
  v56 = v7;
  v57 = v6;
  v25 = type metadata accessor for Logger();
  sub_1000076D4(v25, qword_1016C57D8);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v54 = v23;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v67 = v23;
    v68 = v30;
    *v29 = 136315138;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = sub_1000136BC(v31, v32, &v68);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s Setting up beacon record subscription", v29, 0xCu);
    sub_100007BAC(v30);
  }

  v53 = v0[3];
  v68 = sub_100A96C40();
  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950);
  Publisher.compactMap<A>(_:)();

  sub_1000041A4(&qword_1016A8E98, &qword_1016A8E88, &qword_1013BA3F8);
  v34 = v60;
  Publisher.filter(_:)();
  (*(v59 + 8))(v14, v34);
  v35 = *(sub_1000BC4D4(&qword_1016AA798, &qword_101400BB0) + 48);
  v36 = v1[2];
  v37 = v61;
  *v61 = v36;
  v38 = v36;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v40 = v55;
  v39 = v56;
  (*(v55 + 104))(v37, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v56);
  v41 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v42 = v57;
  (*(*(v41 - 8) + 56))(v57, 1, 1, v41);
  sub_1000BC488();
  sub_1000041A4(&qword_1016A8EA0, &qword_1016A8E90, &unk_1013BA400);
  sub_10109C768(&qword_1016AF9C0, sub_1000BC488);
  v43 = v64;
  v44 = v62;
  Publisher.collect<A>(_:options:)();
  sub_10000B3A8(v42, &unk_1016B0FE0, &unk_101391980);
  (*(v40 + 8))(v37, v39);
  (*(v63 + 8))(v19, v44);
  v45 = swift_allocObject();
  v47 = v53;
  v46 = v54;
  *(v45 + 16) = v1;
  *(v45 + 24) = v47;
  *(v45 + 32) = v46;
  *(v45 + 40) = 0;
  *(v45 + 48) = v58;
  sub_1000041A4(&qword_1016C59F8, &qword_1016C59F0, &qword_101400B98);

  v48 = v66;
  v49 = Publisher<>.sink(receiveValue:)();

  (*(v65 + 8))(v43, v48);
  v50 = v1[9];
  v1[9] = v49;
}

uint64_t sub_1010918DC(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1010919A8;

  return daemon.getter();
}

uint64_t sub_1010919A8(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = a1;

  type metadata accessor for Daemon();
  sub_10109C768(&qword_1016969E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101091B00, v5, v4);
}

uint64_t sub_101091B00()
{
  v1 = *(v0 + 40);
  *(v0 + 48) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_101091B74, 0, 0);
}

uint64_t sub_101091B74()
{
  if (qword_101694AD0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = qword_10177B730;
  v3 = swift_allocObject();
  v0[7] = v3;
  swift_weakInit();
  v4 = *(&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + 1);
  v8 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_101091CAC;
  v6 = v0[6];

  return v8(v2, &unk_101400BC0, v3);
}

uint64_t sub_101091CAC(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_101091DD0, 0, 0);
}

uint64_t sub_101091DD0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_100BB9ADC(0, 0, v3, &unk_101400BD0, v5);

  sub_10000B3A8(v3, &qword_101698C00, &qword_10138B570);

  v6 = v0[1];

  return v6();
}

uint64_t sub_101091F20()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100E28A94;

    return sub_1010927EC();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_101092008(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 112))(v1, v2) & 1;
}

void sub_10109205C(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v65 = a5;
  v64 = a4;
  v69 = type metadata accessor for UUID();
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v69);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v63 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v23 = *(v16 - 8);
  v17 = *(v23 + 64);
  __chkstk_darwin(v16);
  v19 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  v21 = a2[2];
  *v19 = v21;
  (*(v23 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v24 = *(v23 + 8);
  LOBYTE(v23) = v23 + 8;
  v24(v19, v16);
  if ((v21 & 1) == 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v63 = a2;
  v23 = v20[2];
  v19 = v20;
  if (v23)
  {
    v25 = 0;
    v26 = (v19 + 4);
    v68 = (v8 + 8);
    a2 = _swiftEmptyArrayStorage;
    v66 = v11;
    v67 = a3;
    while (v25 < v19[2])
    {
      sub_10001F280(v26, &v73);
      v28 = v74;
      v27 = v75;
      sub_1000035D0(&v73, v74);
      (*(*(*(v27 + 8) + 8) + 32))(v28);
      sub_100AC1584(v11, v15);
      (*v68)(v11, v69);
      v29 = type metadata accessor for BeaconProductInfoRecord();
      LODWORD(v27) = (*(*(v29 - 8) + 48))(v15, 1, v29);
      sub_10000B3A8(v15, &unk_1016AF8C0, &unk_1013A07A0);
      if (v27 == 1)
      {
        sub_100031694(&v73, v70);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, a2[2] + 1, 1);
          a2 = v76;
        }

        v31 = v19;
        v33 = a2[2];
        v32 = a2[3];
        if (v33 >= v32 >> 1)
        {
          sub_100025B1C((v32 > 1), v33 + 1, 1);
        }

        v34 = v71;
        v35 = v72;
        v36 = sub_10015049C(v70, v71);
        v37 = *(*(v34 - 8) + 64);
        __chkstk_darwin(v36);
        v39 = &v63 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v40 + 16))(v39);
        sub_1006252D4(v33, v39, &v76, v34, v35);
        sub_100007BAC(v70);
        a2 = v76;
        v19 = v31;
        v11 = v66;
      }

      else
      {
        sub_100007BAC(&v73);
      }

      ++v25;
      v26 += 40;
      if (v23 == v25)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  a2 = _swiftEmptyArrayStorage;
LABEL_14:
  if (a2[2])
  {
    LOBYTE(v23) = v65;
    if (qword_1016951E8 == -1)
    {
LABEL_16:
      v41 = type metadata accessor for Logger();
      sub_1000076D4(v41, qword_1016C57D8);
      swift_bridgeObjectRetain_n();
      v42 = Logger.logObject.getter();
      v43 = v19;
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v44))
      {
        v45 = v43;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v73 = v47;
        *v46 = 136315394;
        if (v23)
        {
          v48 = 0;
          v49 = 0xE000000000000000;
        }

        else
        {
          v70[0] = v64;
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v49 = v58;
        }

        v59 = sub_1000136BC(v48, v49, &v73);

        *(v46 + 4) = v59;
        *(v46 + 12) = 2048;
        v60 = v45[2];

        *(v46 + 14) = v60;

        _os_log_impl(&_mh_execute_header, v42, v44, "%s beaconRecordSubscription: Fetching product info for %ld eligible accessories", v46, 0x16u);
        sub_100007BAC(v47);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      sub_101095D74(a2, 0, 0, 0xF000000000000000, v64, v23 & 1, 0, 0);

      return;
    }

LABEL_33:
    swift_once();
    goto LABEL_16;
  }

  v50 = v65;
  if (qword_1016951E8 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_1000076D4(v51, qword_1016C57D8);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v73 = v55;
    *v54 = 136315138;
    if (v50)
    {
      v56 = 0;
      v57 = 0xE000000000000000;
    }

    else
    {
      v70[0] = v64;
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v61;
    }

    v62 = sub_1000136BC(v56, v57, &v73);

    *(v54 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v52, v53, "%s beaconRecordSubscription: No eligible accessory to fetch!", v54, 0xCu);
    sub_100007BAC(v55);
  }
}

uint64_t sub_1010927EC()
{
  v1[22] = v0;
  v1[23] = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[24] = v2;
  v3 = *(v2 - 8);
  v1[25] = v3;
  v4 = *(v3 + 64) + 15;
  v1[26] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v1[27] = v5;
  v6 = *(v5 - 8);
  v1[28] = v6;
  v7 = *(v6 + 64) + 15;
  v1[29] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v1[30] = v8;
  v9 = *(v8 - 8);
  v1[31] = v9;
  v10 = *(v9 + 64) + 15;
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_10109298C, 0, 0);
}

uint64_t sub_10109298C()
{
  v15 = v0;
  v1 = qword_101698690;
  v0[33] = qword_101698690;
  v2 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  if (v2 >= 0x3E8)
  {
    v2 = 1;
  }

  qword_101698690 = v2;
  if (qword_1016951D8 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v3 = type metadata accessor for Logger();
  v0[34] = sub_1000076D4(v3, qword_10177C578);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[21] = v1;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Received config changed notification. Forcing product info fetch", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v0[35] = v12;
  *v12 = v0;
  v12[1] = sub_101092B7C;

  return daemon.getter();
}

uint64_t sub_101092B7C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v12 = *v1;
  *(v3 + 288) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 296) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_10109C768(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10109C768(&qword_101698D20, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_101092D58;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_101092D58(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 296);
  v7 = *v2;

  v8 = *(v4 + 288);
  if (v1)
  {

    v9 = sub_101093768;
  }

  else
  {

    *(v5 + 304) = a1;
    v9 = sub_101092EAC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_101092EAC()
{
  v1 = *(v0 + 304);

  return _swift_task_switch(sub_101092F1C, v1, 0);
}

uint64_t sub_101092F1C()
{
  v1 = *(v0 + 304);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  v4 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v3 = v0;
  v3[1] = sub_101093008;
  v5 = *(v0 + 304);

  return unsafeBlocking<A>(context:_:)(v0 + 160, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v5, v4);
}

uint64_t sub_101093008()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);
  v4 = *v0;

  return _swift_task_switch(sub_101093120, v2, 0);
}

uint64_t sub_101093120()
{
  v1 = v0[38];

  v0[40] = v0[20];

  return _swift_task_switch(sub_101093190, 0, 0);
}

void sub_101093190()
{
  v54 = v0;
  v1 = v0[40];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 32;
    v51 = v0[40];
    while (v4 < *(v1 + 16))
    {
      sub_10001F280(v5, (v0 + 8));
      v6 = v0[11];
      v7 = v0[12];
      sub_1000035D0(v0 + 8, v6);
      if ((*(v7 + 112))(v6, v7))
      {
        sub_100031694(v0 + 4, (v0 + 13));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v3[2] + 1, 1);
          v3 = v53;
        }

        v9 = v2;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100025B1C((v10 > 1), v11 + 1, 1);
        }

        v12 = v0[16];
        v13 = v0[17];
        v14 = sub_10015049C((v0 + 13), v12);
        v15 = *(v12 - 8);
        v16 = *(v15 + 64) + 15;
        v17 = swift_task_alloc();
        (*(v15 + 16))(v17, v14, v12);
        sub_1006252D4(v11, v17, &v53, v12, v13);
        sub_100007BAC(v0 + 13);

        v2 = v9;
        v1 = v51;
        v3 = v53;
      }

      else
      {
        sub_100007BAC(v0 + 8);
      }

      ++v4;
      v5 += 40;
      if (v2 == v4)
      {
        v18 = v0[40];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    if (v3[2])
    {
      v19 = v0[32];
      v20 = v0[30];
      v21 = v0[31];
      v50 = v0[28];
      v52 = v0[27];
      v46 = v0[29];
      v47 = v0[26];
      v48 = v0[38];
      v49 = v0[25];
      v22 = v0[24];
      v44 = v0[33];
      v45 = v0[23];
      v23 = v0[22];
      v24 = [objc_opt_self() standardUserDefaults];
      static Date.trustedNow.getter(v19);
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v21 + 8))(v19, v20);
      v26 = String._bridgeToObjectiveC()();
      [v24 setObject:isa forKey:v26];

      v27 = *(v23 + 16);
      v28 = swift_allocObject();
      *(v28 + 16) = v3;
      *(v28 + 24) = v23;
      *(v28 + 32) = v44;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 1;
      *(v28 + 72) = xmmword_10138BBF0;
      *(v28 + 88) = v45;
      v0[6] = sub_10109C920;
      v0[7] = v28;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100006684;
      v0[5] = &unk_101663F78;
      v29 = _Block_copy(v0 + 2);

      static DispatchQoS.unspecified.getter();
      v0[18] = _swiftEmptyArrayStorage;
      sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);

      (*(v49 + 8))(v47, v22);
      (*(v50 + 8))(v46, v52);
      v30 = v0[7];
    }

    else
    {
      v31 = v0[34];

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = v0[33];
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v53 = v36;
        *v35 = 136315138;
        v0[19] = v34;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = sub_1000136BC(v37, v38, &v53);

        *(v35 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v32, v33, "%s No eligible accessory to fetch!", v35, 0xCu);
        sub_100007BAC(v36);
      }
    }

    v40 = v0[32];
    v41 = v0[29];
    v42 = v0[26];

    v43 = v0[1];

    v43();
  }
}

uint64_t sub_101093768()
{
  v35 = v0;
  if (_swiftEmptyArrayStorage[2])
  {
    v1 = v0[32];
    v3 = v0[30];
    v2 = v0[31];
    v4 = v0[26];
    v32 = v0[28];
    v33 = v0[27];
    v5 = v0[24];
    v30 = v0[29];
    v31 = v0[25];
    v6 = v0[22];
    v27 = v0[33];
    v28 = v0[23];
    v7 = [objc_opt_self() standardUserDefaults];
    static Date.trustedNow.getter(v1);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v2 + 8))(v1, v3);
    v9 = String._bridgeToObjectiveC()();
    [v7 setObject:isa forKey:v9];

    v29 = *(v6 + 16);
    v10 = swift_allocObject();
    *(v10 + 16) = _swiftEmptyArrayStorage;
    *(v10 + 24) = v6;
    *(v10 + 32) = v27;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 1;
    *(v10 + 72) = xmmword_10138BBF0;
    *(v10 + 88) = v28;
    v0[6] = sub_10109C920;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_101663F78;
    v11 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[18] = _swiftEmptyArrayStorage;
    sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);
    (*(v31 + 8))(v4, v5);
    (*(v32 + 8))(v30, v33);
    v12 = v0[7];
  }

  else
  {
    v13 = v0[34];

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[33];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 136315138;
      v0[19] = v16;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = sub_1000136BC(v19, v20, &v34);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s No eligible accessory to fetch!", v17, 0xCu);
      sub_100007BAC(v18);
    }
  }

  v22 = v0[32];
  v23 = v0[29];
  v24 = v0[26];

  v25 = v0[1];

  return v25();
}

uint64_t sub_101093B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_10109C738;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101663FF0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v7, v4);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_101093E6C()
{
  v36 = type metadata accessor for OS_dispatch_queue.Attributes();
  v1 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v37 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v35 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v39);
  v38 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v31 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v0;
  v18 = *(v0 + 16);
  *v16 = v18;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v13 + 8))(v16, v12);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v22 = qword_101698690;
  v23 = qword_101698690 + 1;
  if (qword_101698690 == -1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v23 >= 0x3E8)
  {
    v23 = 1;
  }

  qword_101698690 = v23;
  v32 = v11;
  v33 = 0x8000000101379D50;
  v24 = v11;
  static DispatchQoS.background.getter();
  v25 = swift_allocObject();
  v26 = v17;
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v22;
  v31[1] = v25;
  *(v27 + 32) = 0;
  type metadata accessor for XPCActivity();
  v28 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v28 + 40) = v29;
  swift_unknownObjectWeakInit();
  *(v28 + 88) = 0;
  v31[2] = sub_1000BC488();
  v31[0] = "oductInfoManager";
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  (*(v6 + 16))(v38, v24, v39);
  (*(v3 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v34);
  v40 = _swiftEmptyArrayStorage;
  sub_10109C768(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes);

  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v28 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v28 + 24) = 0xD000000000000030;
  *(v28 + 32) = v33;
  *(v28 + 48) = sub_10109C5A0;
  *(v28 + 56) = 0;
  *(v28 + 64) = sub_10109C5C0;
  *(v28 + 72) = v27;

  sub_100997398();

  (*(v6 + 8))(v32, v39);

  v30 = *(v26 + 64);
  *(v26 + 64) = v28;
}

uint64_t sub_101094394(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      if (qword_1016951D8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_10177C578);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        if (a6)
        {
          v16 = 0;
          v17 = 0xE000000000000000;
        }

        else
        {
          v16 = dispatch thunk of CustomStringConvertible.description.getter();
          v17 = v18;
        }

        v19 = sub_1000136BC(v16, v17, &v20);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s Running ProductInfoManager scheduled activities.", v14, 0xCu);
        sub_100007BAC(v15);
      }

      sub_1010945AC(a5, a6 & 1, sub_10109C5CC, a1);
    }
  }

  return result;
}