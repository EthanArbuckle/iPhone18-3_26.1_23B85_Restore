uint64_t sub_1006C8A94(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v44 = a7;
  v41 = a4;
  v42 = a5;
  v35 = a1;
  v36 = a3;
  v9 = type metadata accessor for Date();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  __chkstk_darwin(v9);
  v45 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for UUID();
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v37);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OwnedBeaconRecord();
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  __chkstk_darwin(v13 - 8);
  v32 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v32 - v17;
  v38 = &v32 - v17;
  sub_1006C8E64(a2, a3);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_100721C9C(a2, &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v20 = v37;
  (*(v11 + 16))(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v37);
  v21 = v39;
  v22 = v40;
  (*(v39 + 16))(v45, v42, v40);
  v23 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v24 = (v14 + *(v11 + 80) + v23) & ~*(v11 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v21 + 80) + v25 + 8) & ~*(v21 + 80);
  v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  sub_10002AB74(v32, v28 + v23, type metadata accessor for OwnedBeaconRecord);
  (*(v11 + 32))(v28 + v24, v33, v20);
  *(v28 + v25) = v36;
  (*(v21 + 32))(v28 + v26, v45, v22);
  v29 = (v28 + v27);
  v30 = v44;
  *v29 = v43;
  v29[1] = v30;

  sub_10025EDD4(0, 0, v38, &unk_1013B66F0, v28);
}

uint64_t sub_1006C8E64(uint64_t a1, unint64_t a2)
{
  v99 = a2;
  v89 = a1;
  v3 = type metadata accessor for OwnedBeaconRecord();
  v4 = v3 - 8;
  v86 = *(v3 - 8);
  v5 = *(v86 + 64);
  __chkstk_darwin(v3);
  v79 = v6;
  v85 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ShareRecord();
  v95 = *(v88 - 8);
  v7 = *(v95 + 64);
  v8 = __chkstk_darwin(v88);
  v84 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v9;
  __chkstk_darwin(v8);
  v11 = (&v72 - v10);
  v12 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v72 - v14;
  v93 = type metadata accessor for DirectorySequence();
  v90 = *(v93 - 8);
  v16 = *(v90 + 8);
  __chkstk_darwin(v93);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v72 - v25;
  v87 = v2;
  v27 = *(v4 + 28);
  v94 = *(v2 + 280);
  v82 = *(v94 + 168);
  v28 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v97 = v11;
    sub_1000076D4(v19, qword_10177A518);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:isDirectory:)();

    objc_autoreleasePoolPop(v28);
    v101 = _swiftEmptyArrayStorage;
    v102[0] = _swiftEmptyArrayStorage;
    v29 = [objc_opt_self() defaultManager];
    v91 = v26;
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v83 = v18;
    DirectorySequence.next()();
    v30 = v20[6];
    v31 = v30(v15, 1, v19);
    v92 = v20;
    v11 = 0;
    if (v31 == 1)
    {
      v32 = v83;
    }

    else
    {
      v98 = v20[4];
      v100 = v20 + 4;
      v33 = (v20 + 1);
      v32 = v83;
      v34 = v82;
      do
      {
        v98(v24, v15, v19);
        v35 = objc_autoreleasePoolPush();
        sub_1005FF9CC(v24, v34, v102, &v101);
        objc_autoreleasePoolPop(v35);
        (*v33)(v24, v19);
        DirectorySequence.next()();
      }

      while (v30(v15, 1, v19) != 1);
    }

    (*(v90 + 1))(v32, v93);
    LODWORD(v100) = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v98 = static OS_os_log.default.getter();
    v15 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10138BBE0;
    v37 = v102[0];
    v38 = *(v102[0] + 16);
    *(v36 + 56) = &type metadata for Int;
    *(v36 + 64) = &protocol witness table for Int;
    *(v36 + 32) = v38;
    sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL);

    v39 = v91;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v26 = &type metadata for String;
    *(v36 + 96) = &type metadata for String;
    v18 = sub_100008C00();
    *(v36 + 104) = v18;
    *(v36 + 72) = v40;
    *(v36 + 80) = v42;
    v43 = v98;
    os_log(_:dso:log:_:_:)();

    (v92[1])(v39, v19);
    v44 = v37;

    v28 = *(v37 + 16);
    v45 = v88;
    v20 = v97;
    if (!v28)
    {
      break;
    }

    v19 = 0;
    v24 = *(v95 + 80);
    v81 = ~v24;
    v80 = (v24 + 32) & ~v24;
    v92 = (v44 + v80);
    v79 += v24;
    v78 = (v24 + 16) & ~v24;
    v77 = (v96 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = xmmword_10138B360;
    v74 = xmmword_101385D80;
    v83 = v44;
    v93 = v18;
    v82 = v28;
    v98 = v24;
    v73 = v15;
    while (v19 < *(v44 + 16))
    {
      v18 = v26;
      sub_100721C9C(v92 + *(v95 + 72) * v19, v20, type metadata accessor for ShareRecord);
      v46 = *(v20 + *(v45 + 44));
      if (v46 <= v99)
      {
        v26 = v18;
      }

      else
      {
        v100 = v11;
        static os_log_type_t.default.getter();
        if (qword_101695028 != -1)
        {
          swift_once();
        }

        v47 = swift_allocObject();
        *(v47 + 16) = v75;
        v48 = v20 + *(v45 + 20);
        v49 = UUID.uuidString.getter();
        v50 = v93;
        *(v47 + 56) = v18;
        *(v47 + 64) = v50;
        *(v47 + 32) = v49;
        *(v47 + 40) = v51;
        *(v47 + 96) = &type metadata for UInt64;
        *(v47 + 104) = &protocol witness table for UInt64;
        *(v47 + 112) = v46;
        v52 = v99;
        *(v47 + 72) = v99;
        *(v47 + 136) = &type metadata for UInt64;
        *(v47 + 144) = &protocol witness table for UInt64;
        os_log(_:dso:log:_:_:)();

        v97 = swift_allocObject();
        *(v97 + 16) = v52;
        v53 = v85;
        sub_100721C9C(v89, v85, type metadata accessor for OwnedBeaconRecord);
        v18 = v84;
        sub_100721C9C(v20, v84, type metadata accessor for ShareRecord);
        v54 = (*(v86 + 80) + 24) & ~*(v86 + 80);
        v55 = (v79 + v54) & v81;
        v56 = swift_allocObject();
        *(v56 + 16) = v87;
        sub_10002AB74(v53, v56 + v54, type metadata accessor for OwnedBeaconRecord);
        sub_10002AB74(v18, v56 + v55, type metadata accessor for ShareRecord);

        static os_log_type_t.default.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v57 = swift_allocObject();
        *(v57 + 16) = v74;
        v58 = v93;
        *(v57 + 56) = &type metadata for String;
        *(v57 + 64) = v58;
        *(v57 + 32) = 0x65736C6166;
        *(v57 + 40) = 0xE500000000000000;
        os_log(_:dso:log:_:_:)();

        v59 = objc_autoreleasePoolPush();
        v60 = v100;
        sub_101121490(v20);
        v62 = v61;
        v91 = v61;
        objc_autoreleasePoolPop(v59);
        v63 = *(v94 + 184);
        sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
        type metadata accessor for CloudKitCoordinator();
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v100 = v60;
        v90 = type metadata accessor for ShareRecord;
        sub_100721C9C(v20, v18, type metadata accessor for ShareRecord);
        v64 = v80;
        v65 = swift_allocObject();
        v66 = v97;
        *(v65 + 16) = sub_10071E860;
        *(v65 + 24) = v66;
        sub_10002AB74(v18, v65 + v64, type metadata accessor for ShareRecord);

        sub_100FDCA40(v62, sub_10071E96C, v65);

        v67 = swift_allocObject();
        *(v67 + 16) = sub_10071E894;
        *(v67 + 24) = v56;

        Future.addFailure(block:)();

        sub_100721C9C(v20, v18, v90);
        v68 = v76;
        v69 = swift_allocObject();
        sub_10002AB74(v18, v69 + v78, type metadata accessor for ShareRecord);
        v24 = v94;
        *(v69 + v77) = v94;
        v70 = (v69 + v68);
        *v70 = sub_10071E894;
        v70[1] = v56;

        Future.addSuccess(block:)();

        v45 = v88;
        v15 = v73;
        v44 = v83;
        v26 = &type metadata for String;
        v28 = v82;
        v11 = v100;
      }

      ++v19;
      sub_100721D04(v20, type metadata accessor for ShareRecord);
      if (v28 == v19)
      {
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }
}

uint64_t sub_1006C9B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v18;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  v9 = type metadata accessor for Date();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v8[10] = v12;
  v13 = *(v12 - 8);
  v8[11] = v13;
  v14 = *(v13 + 64) + 15;
  v8[12] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[13] = v15;
  *v15 = v8;
  v15[1] = sub_1006C9C74;

  return sub_100D5F8B4();
}

uint64_t sub_1006C9C74(char a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1006C9D74, 0, 0);
}

uint64_t sub_1006C9D74()
{
  v37 = v0;
  if (*(v0 + 112) == 1)
  {
    if (qword_101694B98 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177B810);
    (*(v2 + 16))(v1, v8, v3);
    (*(v6 + 16))(v4, v7, v5);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    if (v12)
    {
      v33 = *(v0 + 24);
      log = v10;
      v19 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v19 = 141558787;
      *(v19 + 4) = 1752392040;
      *(v19 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v11;
      v22 = v21;
      (*(v13 + 8))(v14, v16);
      v23 = sub_1000136BC(v20, v22, &v36);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v33;
      *(v19 + 32) = 2080;
      sub_100003E8C(&qword_1016969A0, &type metadata accessor for Date);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v17 + 8))(v15, v18);
      v27 = sub_1000136BC(v24, v26, &v36);

      *(v19 + 34) = v27;
      _os_log_impl(&_mh_execute_header, log, v34, "Posting SPManagedCBPeripheralChanged on keySyncRecord update from CL for %{private,mask.hash}s index %llu date %s.", v19, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      (*(v17 + 8))(v15, v18);
      (*(v13 + 8))(v14, v16);
    }

    static DarwinNotification.post(name:)();
  }

  v28 = *(v0 + 96);
  v29 = *(v0 + 72);
  v30 = *(v0 + 48);
  (*(v0 + 40))(1);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1006CA104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[0] = a4;
  v7 = type metadata accessor for ShareRecord();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v28 - v12;
  v14 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v28 - v16);
  sub_1000D2A70(a1, v28 - v16, &unk_1016B1650, &unk_1013B1110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    v28[1] = v18;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_10002AB74(v17, v13, type metadata accessor for ShareRecord);
    static os_log_type_t.default.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    sub_100721C9C(v13, v11, type metadata accessor for ShareRecord);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100008C00();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)();

    result = sub_100721D04(v13, type metadata accessor for ShareRecord);
  }

  if (*(a2 + 40))
  {

    sub_100565AE4(a3, v28[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006CA498(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v9 = type metadata accessor for KeyAlignmentRecord();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v9 - 8);
  v35 = v11;
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 280);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  v34 = a1;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v15 + 32) = 0x65736C6166;
  *(v15 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v16 = objc_autoreleasePoolPush();
  sub_10112202C(a3);
  v36 = v17;
  objc_autoreleasePoolPop(v16);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v18 = *(v13 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v33 = 0;
    sub_100721C9C(a3, v12, type metadata accessor for KeyAlignmentRecord);
    v19 = *(v32 + 80);
    v29 = a3;
    v20 = v35;
    v21 = swift_allocObject();
    v32 = v13;
    v22 = v21;
    *(v21 + 16) = sub_10071F480;
    *(v21 + 24) = v14;
    v30 = type metadata accessor for KeyAlignmentRecord;
    sub_10002AB74(v12, v21 + ((v19 + 32) & ~v19), type metadata accessor for KeyAlignmentRecord);

    sub_100FDCA40(v36, sub_10071F490, v22);
    v31 = v14;

    v23 = swift_allocObject();
    v24 = v34;
    *(v23 + 16) = sub_10071F488;
    *(v23 + 24) = v24;

    Future.addFailure(block:)();

    sub_100721C9C(v29, v12, type metadata accessor for KeyAlignmentRecord);
    v25 = (v19 + 16) & ~v19;
    v26 = (v20 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    sub_10002AB74(v12, v27 + v25, v30);
    *(v27 + v26) = v32;
    v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v28 = sub_10071F488;
    v28[1] = v24;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_1006CA8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for KeyAlignmentRecord();
  *(a1 + *(v9 + 28)) = a2;
  static Date.trustedNow.getter(v8);
  return (*(v5 + 40))(a1 + *(v9 + 32), v8, v4);
}

uint64_t sub_1006CA9DC(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v14 - v4);
  Transaction.capture()();
  sub_1000D2A70(a1, v5, &unk_1016B1690, &qword_1013D6800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    v14[1] = v6;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100008C00();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v11 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return sub_10000B3A8(v5, &unk_1016B1690, &qword_1013D6800);
  }
}

uint64_t sub_1006CABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for UUID();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v12 = type metadata accessor for KeySyncMetadata();
  v8[11] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v14 = async function pointer to daemon.getter[1];
  v15 = swift_task_alloc();
  v8[13] = v15;
  *v15 = v8;
  v15[1] = sub_1006CAD30;

  return daemon.getter();
}

uint64_t sub_1006CAD30(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_1006CAF0C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006CAF0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *v2;
  *(*v2 + 128) = a1;

  v6 = *(v3 + 112);
  if (v1)
  {

    v7 = sub_1006CB05C;
  }

  else
  {

    v7 = sub_1006CB19C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1006CB05C()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing ObservationStoreService.", v4, 2u);
  }

  v5 = v0[2];
  v6 = v0[3];

  v5(0);
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006CB19C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = *(v4 + 16);
  v0[17] = v8;
  v0[18] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v3);
  v9 = (v1 + v2[6]);
  v9[3] = &type metadata for PrimaryIndex;
  v9[4] = sub_10002A2B8();
  *v9 = v6;
  v10 = v2[7];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 16))(v1 + v10, v5, v11);
  *(v1 + v2[5]) = 4;
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_1006CB2E0;
  v13 = v0[16];
  v14 = v0[12];

  return sub_1010CDAC4(v14);
}

uint64_t sub_1006CB2E0()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 160) = v0;

  sub_100721D04(v3, type metadata accessor for KeySyncMetadata);
  if (v0)
  {
    v4 = sub_1006CB6AC;
  }

  else
  {
    v4 = sub_1006CB424;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1006CB424()
{
  v28 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177B7F8);
  v2(v3, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  if (v9)
  {
    v13 = *(v0 + 40);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 134218499;
    *(v14 + 4) = v13;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v12 + 8))(v10, v11);
    v19 = sub_1000136BC(v16, v18, &v27);

    *(v14 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "            Successfully updated last seen key index %lu for %{private,mask.hash}s.", v14, 0x20u);
    sub_100007BAC(v15);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v20 = *(v0 + 128);
  v21 = *(v0 + 24);
  (*(v0 + 16))(1);

  v22 = *(v0 + 96);
  v23 = *(v0 + 72);
  v24 = *(v0 + 80);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1006CB6AC()
{
  v35 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B7F8);
  v3(v4, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v32 = *(v0 + 160);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = *(v0 + 56);
    v13 = *(v0 + 40);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v14 = 134218755;
    *(v14 + 4) = v13;
    *(v14 + 12) = 2160;
    *(v14 + 14) = 1752392040;
    *(v14 + 22) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_1000136BC(v16, v18, &v34);

    *(v14 + 24) = v19;
    *(v14 + 32) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 34) = v20;
    *v15 = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "            Failed to updated last seen key index %lu for %{private,mask.hash}s, error: %{public}@.", v14, 0x2Au);
    sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v33);
  }

  else
  {
    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 56);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 160);
  v25 = *(v0 + 128);
  v26 = *(v0 + 24);
  (*(v0 + 16))(0);

  v27 = *(v0 + 96);
  v28 = *(v0 + 72);
  v29 = *(v0 + 80);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1006CB9C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1006CB9E0, 0, 0);
}

uint64_t sub_1006CB9E0()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for AnalyticsEvent(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v0 + 32) = v5;
  swift_defaultActor_initialize();
  *(v5 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
  UUID.init()();
  v6 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(*(v7 - 8) + 56);
  v8(&v5[v6], 1, 1, v7);
  v8(&v5[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v7);
  *(v5 + 15) = 0xD000000000000031;
  *(v5 + 16) = 0x800000010135CED0;
  v9 = v1;

  return _swift_task_switch(sub_1006CBB3C, v5, 0);
}

uint64_t sub_1006CBB3C()
{
  sub_101175FFC(*(v0 + 32), *(v0 + 16), *(v0 + 24));

  type metadata accessor for AnalyticsPublisher();
  *(v0 + 40) = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1006CBC1C;
  v2 = *(v0 + 32);

  return sub_101163F78(v2);
}

uint64_t sub_1006CBC1C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_100721F44, 0, 0);
}

id sub_1006CBD34(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = 0x6E4979654B77656ELL;
  *(inited + 40) = 0xEB00000000786564;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a1];
  *(inited + 56) = 0;
  v10 = sub_100908768(inited);
  swift_setDeallocating();
  sub_10000B3A8(inited + 32, &qword_101699340, &qword_1013918A0);
  result = [a2 systemVersion];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v10;
  sub_100FFC418(v12, 0, 0xD000000000000013, 0x8000000101356E70, isUniquelyReferenced_nonNull_native);
  v14 = v27;
  result = [a2 systemVersion];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v14;
  sub_100FFC418(v15, 0, 0xD00000000000001BLL, 0x8000000101356E90, v16);
  v17 = v27;
  v18 = [objc_opt_self() sharedInstance];
  v19 = [v18 isInternalBuild];

  if (v19)
  {
    v20 = [a2 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v5 + 8))(v8, v4);
    v21 = String._bridgeToObjectiveC()();

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v17;
    sub_100FFC418(v21, 0, 0x6544646572696170, 0xEE00444965636976, v22);
    v17 = v27;
    v23 = [a2 serialNumber];
    if (v23)
    {
      v24 = v23;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v27 = v17;
      sub_100FFC418(v24, 0, 0xD000000000000018, 0x8000000101350650, v25);
      return v27;
    }
  }

  return v17;
}

uint64_t sub_1006CC0A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 136);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_10071E424;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162E090;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_1006CC384(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v79 = a3;
  v80 = a2;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v91 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateInterval();
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  __chkstk_darwin(v7);
  v84 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for UUID();
  v10 = *(v93 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v93);
  v92 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v13 = *(*(v90 - 1) + 8);
  __chkstk_darwin(v90);
  v15 = &v74 - v14;
  v89 = type metadata accessor for BeaconNamingRecord();
  v16 = *(v89 - 1);
  v17 = *(v16 + 64);
  __chkstk_darwin(v89);
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = objc_autoreleasePoolPush();
  v78 = a1;
  v94 = *(a1 + 280);
  v19 = sub_100007F54();
  v20 = v19;
  v21 = v19[2];
  v83 = v7;
  *&v88 = v21;
  v75 = v10;
  if (v21)
  {
    v22 = 0;
    v87 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer;
    v23 = (v19 + 4);
    v86 = (v10 + 8);
    v85 = (v16 + 48);
    v81 = SPBeaconRoleIdUndefined;
    v24 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v22 >= v20[2])
      {
        __break(1u);

        __break(1u);
        return result;
      }

      sub_10001F280(v23, &v98);
      v26 = v99;
      v25 = v100;
      sub_1000035D0(&v98, v99);
      v27 = v92;
      v28 = (*(*(*(v25 + 8) + 8) + 32))(v26);
      v29 = *(v94 + v87);
      __chkstk_darwin(v28);
      *(&v74 - 2) = v30;
      *(&v74 - 1) = v27;
      QueueSynchronizer.conditionalSync<A>(_:)();
      (*v86)(v27, v93);
      v31 = v89;
      if ((*v85)(v15, 1, v89) == 1)
      {
        sub_10000B3A8(v15, &unk_1016B29E0, &unk_1013B70E0);
      }

      else
      {
        v32 = v82;
        sub_10002AB74(v15, v82, type metadata accessor for BeaconNamingRecord);
        v33 = *(v32 + v31[7]);
        sub_100721D04(v32, type metadata accessor for BeaconNamingRecord);
        if (v81 < v33)
        {
          sub_10000A748(&v98, v95);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v101 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100025B1C(0, v24[2] + 1, 1);
            v24 = v101;
          }

          v36 = v24[2];
          v35 = v24[3];
          if (v36 >= v35 >> 1)
          {
            sub_100025B1C((v35 > 1), v36 + 1, 1);
          }

          v37 = v96;
          v38 = v97;
          v39 = sub_10015049C(v95, v96);
          v40 = *(*(v37 - 8) + 64);
          __chkstk_darwin(v39);
          v42 = &v74 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v43 + 16))(v42);
          sub_1006252D4(v36, v42, &v101, v37, v38);
          sub_100007BAC(v95);
          v24 = v101;
          v7 = v83;
          goto LABEL_5;
        }
      }

      sub_100007BAC(&v98);
LABEL_5:
      ++v22;
      v23 += 40;
      if (v88 == v22)
      {
        goto LABEL_15;
      }
    }
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_15:

  *&v98 = v24;
  v44 = v78;

  sub_100713BB4(&v98, v44);

  v45 = v98;
  objc_autoreleasePoolPop(v77);
  v95[0] = _swiftEmptyArrayStorage;
  v46 = *(v45 + 16);
  if (v46)
  {
    v86 = v45;
    v47 = v45 + 32;
    v89 = (v75 + 8);
    v90 = (v76 + 8);
    v88 = xmmword_101385D80;
    v48 = v84;
    while (1)
    {
      sub_10001F280(v47, &v98);
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      v59 = *(qword_10177B348 + 40);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101073BF4(v101);

      static Date.trustedNow.getter(v91);
      DateInterval.init(start:duration:)();
      v60 = v99;
      v61 = v100;
      v62 = sub_1000035D0(&v98, v99);
      v56 = sub_100B03A58(v62, v48, 0, 0, 0, v94, v60, v61);
      v57 = v56;
      if (v64 > 1u)
      {
        if (v64 == 2)
        {
          sub_100359088(v56, v63, 2u);
        }

        static os_log_type_t.default.getter();
        if (qword_101695028 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v49 = swift_allocObject();
        *(v49 + 16) = v88;
        v51 = v99;
        v50 = v100;
        sub_1000035D0(&v98, v99);
        v52 = v92;
        (*(*(*(v50 + 8) + 8) + 32))(v51);
        v53 = UUID.uuidString.getter();
        v55 = v54;
        (*v89)(v52, v93);
        *(v49 + 56) = &type metadata for String;
        *(v49 + 64) = sub_100008C00();
        *(v49 + 32) = v53;
        *(v49 + 40) = v55;
        os_log(_:dso:log:_:_:)();

        v57 = _swiftEmptyArrayStorage;
      }

      else
      {
        if (v64)
        {
          goto LABEL_21;
        }

        v87 = v63;

        static os_log_type_t.default.getter();
        if (qword_101695028 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v65 = swift_allocObject();
        *(v65 + 16) = v88;
        v66 = v99;
        v67 = v100;
        sub_1000035D0(&v98, v99);
        v68 = v92;
        (*(*(*(v67 + 8) + 8) + 32))(v66);
        v69 = UUID.uuidString.getter();
        v71 = v70;
        (*v89)(v68, v93);
        *(v65 + 56) = &type metadata for String;
        *(v65 + 64) = sub_100008C00();
        *(v65 + 32) = v69;
        *(v65 + 40) = v71;
        os_log(_:dso:log:_:_:)();
        sub_100359088(v57, v87, 0);

        v7 = v83;
      }

      v48 = v84;
LABEL_21:
      __chkstk_darwin(v56);
      *(&v74 - 2) = &v98;
      v58 = sub_10062CF40(sub_10071E430, (&v74 - 4), v57);

      sub_10039A0FC(v58);
      (*v90)(v48, v7);
      sub_100007BAC(&v98);
      v47 += 40;
      if (!--v46)
      {

        v72 = v95[0];
        goto LABEL_33;
      }
    }
  }

  v72 = _swiftEmptyArrayStorage;
LABEL_33:
  v80(v72);
}

uint64_t sub_1006CCE9C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v58 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TimeBasedKey();
  v11 = (a1 + *(v10 + 24));
  v12 = v11[1];
  if (v12 >> 60 == 15)
  {
    LODWORD(v57) = static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10138BBE0;
    v14 = a2[3];
    v15 = a2[4];
    sub_1000035D0(a2, v14);
    (*(*(*(v15 + 8) + 8) + 32))(v14);
    v16 = UUID.uuidString.getter();
    v18 = v17;
    (*(v6 + 8))(v9, v5);
    *(v13 + 56) = &type metadata for String;
    v19 = sub_100008C00();
    *(v13 + 32) = v16;
    *(v13 + 40) = v18;
    v20 = *a1;
    *(v13 + 96) = &type metadata for UInt64;
    *(v13 + 104) = &protocol witness table for UInt64;
    *(v13 + 64) = v19;
    *(v13 + 72) = v20;
    os_log(_:dso:log:_:_:)();

    v22 = 0;
  }

  else
  {
    v57 = *v11;
    v23 = *(v10 + 20);
    v24 = v11[2];
    v25 = v11[3];
    sub_100017D5C(v57, v12);
    v26 = PublicKey.advertisement.getter(v24, v25);
    v28 = v27;
    v29 = objc_allocWithZone(SPBeaconingKey);
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    v31 = Data._bridgeToObjectiveC()().super.isa;
    v55 = [v29 initWithDateInterval:isa key:v31];

    sub_100016590(v26, v28);
    v32 = v57;
    v54 = sub_100499CE0(v57, v12);
    v56 = v33;
    v34 = sub_100497AF4(v32, v12);
    v36 = v35;
    v37 = PublicKey.advertisement.getter(v11[2], v11[3]);
    v39 = v38;
    v40 = sub_100499CE0(v32, v12);
    v42 = v41;
    v43 = sub_100499208(v40, v41, v37, v39);
    v53 = v44;
    sub_100016590(v40, v42);
    sub_100016590(v37, v39);
    v51 = objc_allocWithZone(SPCommandKeys);
    v45 = Data._bridgeToObjectiveC()().super.isa;
    v52 = v45;
    v46 = Data._bridgeToObjectiveC()().super.isa;
    v47 = v43;
    v48 = v53;
    v49 = Data._bridgeToObjectiveC()().super.isa;
    v50 = v55;
    v22 = [v51 initWithBeaconingKey:v55 commandKey:v45 connectionToken:v46 nearbyToken:v49];

    sub_100016590(v47, v48);
    sub_100016590(v34, v36);

    sub_100016590(v54, v56);
    result = sub_100006654(v57, v12);
  }

  *v58 = v22;
  return result;
}

uint64_t sub_1006CD290(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  static os_log_type_t.error.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v9[0] = xmmword_1013B6600;
  memset(&v9[1], 0, 48);
  v10 = 0;
  return a2(v9);
}

uint64_t sub_1006CD3D4(void *a1, void *a2, uint64_t a3)
{
  v78 = a2;
  v5 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v79 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v64 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v75 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  v18 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v80 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v64 - v22;
  v24 = type metadata accessor for Date();
  v82 = *(v24 - 8);
  v83 = v24;
  v25 = v82[8];
  v26 = __chkstk_darwin(v24);
  v69 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v70 = &v64 - v29;
  v30 = __chkstk_darwin(v28);
  v73 = &v64 - v31;
  __chkstk_darwin(v30);
  v81 = &v64 - v32;
  v33 = *(a3 + 280);
  v35 = a1[3];
  v34 = a1[4];
  sub_1000035D0(a1, v35);
  (*(*(*(v34 + 8) + 8) + 32))(v35);
  v74 = v33;
  sub_100AC6DA0(v17, v10);
  v36 = *(v12 + 8);
  v76 = v12 + 8;
  v77 = v11;
  v36(v17, v11);
  v37 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v40 = v38 + 48;
  if (v39(v10, 1, v37) == 1)
  {
    sub_10000B3A8(v10, &qword_10169DBD0, &unk_1013D6790);
    v41 = 1;
  }

  else
  {
    sub_10002AB74(v10, v23, type metadata accessor for BeaconStatus);
    v41 = 0;
  }

  v42 = type metadata accessor for BeaconStatus(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v71 = v43 + 56;
  v72 = v44;
  v44(v23, v41, 1, v42);
  v45 = *(v43 + 48);
  if (v45(v23, 1, v42) == 1)
  {
    v46 = v23;
  }

  else
  {
    v47 = *(v42 + 24);
    v66 = v36;
    v67 = v40;
    v49 = v82;
    v48 = v83;
    v68 = v39;
    v50 = v73;
    v65 = v82[2];
    v65(v73, &v23[v47], v83);
    sub_100721D04(v23, type metadata accessor for BeaconStatus);
    v73 = v49[4];
    (v73)(v81, v50, v48);
    v52 = v78[3];
    v51 = v78[4];
    sub_1000035D0(v78, v52);
    v53 = v75;
    (*(*(*(v51 + 8) + 8) + 32))(v52);
    v54 = v79;
    sub_100AC6DA0(v53, v79);
    v66(v53, v77);
    if (v68(v54, 1, v37) == 1)
    {
      sub_10000B3A8(v54, &qword_10169DBD0, &unk_1013D6790);
      v55 = 1;
      v56 = v80;
    }

    else
    {
      v56 = v80;
      sub_10002AB74(v54, v80, type metadata accessor for BeaconStatus);
      v55 = 0;
    }

    v72(v56, v55, 1, v42);
    if (v45(v56, 1, v42) != 1)
    {
      v58 = v69;
      v59 = v83;
      v65(v69, (v56 + *(v42 + 24)), v83);
      sub_100721D04(v56, type metadata accessor for BeaconStatus);
      v60 = v70;
      (v73)(v70, v58, v59);
      v61 = v81;
      v57 = static Date.> infix(_:_:)();
      v62 = v82[1];
      v62(v60, v59);
      v62(v61, v59);
      return v57 & 1;
    }

    (v82[1])(v81, v83);
    v46 = v56;
  }

  sub_10000B3A8(v46, &qword_10169DBD8, &qword_1013BF910);
  v57 = 0;
  return v57 & 1;
}

void *sub_1006CDAB8(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for TimeBasedKey();
  v9 = *(v8 - 8);
  v100 = v8;
  v101 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TimeBasedKeysCriteria();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694940 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v17 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v18 = v105;
    if (a2 == 2)
    {
      v24 = v4;
      v25 = sub_101074938(v105);
      v26 = sub_101074954(v18);
    }

    else
    {
      if (a2 != 1)
      {
        v102 = v4;

        if (qword_101694840 == -1)
        {
LABEL_5:
          v19 = type metadata accessor for Logger();
          sub_1000076D4(v19, qword_10177B060);
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&_mh_execute_header, v20, v21, "_offlineAdvertisingKeys called for .invalid reason!", v22, 2u);
          }

          return _swiftEmptyArrayStorage;
        }

LABEL_68:
        swift_once();
        goto LABEL_5;
      }

      v24 = v4;
      v25 = sub_101074900(v105);
      v26 = sub_10107491C(v18);
    }

    v27 = v26;

    v28 = *(v5 + 280);
    v29 = *(v28 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    v102 = v28;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v5 = v105;
    v30 = sub_10130980C(a1, v105);

    v31 = v30 + v25;
    if (__CFADD__(v30, v25))
    {
      __break(1u);
      goto LABEL_68;
    }

    v32 = __CFADD__(v31, v27);
    v33 = &v31[v27];
    if (v32)
    {
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v5 = (v33 - 1);
    if (!v33)
    {
      goto LABEL_70;
    }

    if (v5 >= v30)
    {
      v98 = v25;
      v99 = v24;
      v97 = v27;
      if (qword_101694840 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
LABEL_15:
    v34 = type metadata accessor for Logger();
    v96 = sub_1000076D4(v34, qword_10177B060);
    v35 = v96;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v94 = v13;
      v95 = a1;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v107 = v39;
      *v38 = 134218242;
      if (__CFADD__(v98, v97))
      {
        __break(1u);
        goto LABEL_74;
      }

      *(v38 + 4) = v98 + v97;
      *(v38 + 12) = 2080;
      v103 = v5;
      v104 = v30;
      v105 = 0;
      v106 = 0xE000000000000000;
      v93 = v39;
      _print_unlocked<A, B>(_:_:)();
      v40._countAndFlagsBits = 3026478;
      v40._object = 0xE300000000000000;
      String.append(_:)(v40);
      _print_unlocked<A, B>(_:_:)();
      v41 = v5;
      v42 = sub_1000136BC(v105, v106, &v107);

      *(v38 + 14) = v42;
      v5 = v41;
      _os_log_impl(&_mh_execute_header, v36, v37, "Getting %llu keys in range: %s", v38, 0x16u);
      sub_100007BAC(v93);

      v13 = v94;
      a1 = v95;
    }

    else
    {
    }

    *v16 = sub_1003A8CF8(v30, v5);
    swift_storeEnumTagMultiPayload();
    v43 = v99;
    v44 = sub_100A8A624(a1, v16);
    v102 = v43;
    if (v43)
    {
      return sub_100721D04(v16, type metadata accessor for TimeBasedKeysCriteria);
    }

    a2 = v44;
    v4 = v44[2];
    v95 = v16;
    if (!v4)
    {
      break;
    }

    v107 = _swiftEmptyArrayStorage;
    sub_1011244D8(0, v4, 0);
    v16 = 0;
    v35 = v107;
    v99 = a2 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    do
    {
      if (v16 >= a2[2])
      {
        goto LABEL_63;
      }

      sub_100721C9C(&v99[*(v101 + 72) * v16], v12, type metadata accessor for TimeBasedKey);
      v45 = v102;
      v46 = sub_100A7A194(*&v12[*(v100 + 24) + 16], *&v12[*(v100 + 24) + 24]);
      if (v45)
      {
        goto LABEL_87;
      }

      v13 = v46;
      v47 = sub_100A7829C(v46, 0);
      v102 = 0;
      a1 = v47;
      v49 = v48;
      CCECCryptorRelease();
      v50 = v49 >> 62;
      if ((v49 >> 62) > 1)
      {
        if (v50 != 2)
        {
          goto LABEL_91;
        }

        v53 = *(a1 + 16);
        v52 = *(a1 + 24);
        v54 = __OFSUB__(v52, v53);
        v51 = v52 - v53;
        if (v54)
        {
          goto LABEL_64;
        }
      }

      else if (v50)
      {
        LODWORD(v51) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_65;
        }

        v51 = v51;
      }

      else
      {
        v51 = BYTE6(v49);
      }

      if (v51 != 28)
      {
        if (v50 == 1)
        {
          LODWORD(v50) = HIDWORD(a1) - a1;
          if (!__OFSUB__(HIDWORD(a1), a1))
          {
            v92 = v50;
            goto LABEL_92;
          }

          __break(1u);
        }

        if (v50 == 2)
        {
          v85 = *(a1 + 16);
          v84 = *(a1 + 24);
          v92 = v84 - v85;
          if (__OFSUB__(v84, v85))
          {
            __break(1u);
LABEL_87:
            v102 = v45;
            static os_log_type_t.error.getter();
            if (qword_101694BE0 != -1)
            {
              swift_once();
            }

            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v86 = swift_allocObject();
            *(v86 + 16) = xmmword_101385D80;
            v105 = v102;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v49 = String.init<A>(describing:)();
            a1 = v87;
            *(v86 + 56) = &type metadata for String;
            *(v86 + 64) = sub_100008C00();
            *(v86 + 32) = v49;
            *(v86 + 40) = a1;
            os_log(_:dso:log:_:_:)();

            sub_1001BAF88();
            v88 = swift_allocError();
            *v89 = 0;
            swift_willThrow();

            goto LABEL_90;
          }
        }

        else
        {
          v92 = BYTE6(v49);
        }

        while (1)
        {
LABEL_92:
          sub_100018350();
          v88 = swift_allocError();
          *v91 = 28;
          *(v91 + 8) = v92;
          *(v91 + 16) = 0;
          swift_willThrow();
          sub_100016590(a1, v49);
LABEL_90:
          v105 = 0;
          v106 = 0xE000000000000000;
          _StringGuts.grow(_:)(35);
          v90._object = 0x800000010134CB30;
          v90._countAndFlagsBits = 0xD000000000000021;
          String.append(_:)(v90);
          v104 = v88;
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          _print_unlocked<A, B>(_:_:)();
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_91:
          v92 = 0;
        }
      }

      sub_100721D04(v12, type metadata accessor for TimeBasedKey);
      v107 = v35;
      v5 = v35[2];
      v55 = v35[3];
      v13 = v5 + 1;
      if (v5 >= v55 >> 1)
      {
        sub_1011244D8((v55 > 1), v5 + 1, 1);
        v35 = v107;
      }

      ++v16;
      v35[2] = v13;
      v56 = &v35[2 * v5];
      v56[4] = a1;
      v56[5] = v49;
    }

    while (v4 != v16);

    v57 = v98;
    if ((v98 & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

  v35 = _swiftEmptyArrayStorage;
  v57 = v98;
  if (v98 < 0)
  {
    goto LABEL_62;
  }

LABEL_39:
  v5 = sub_100496910(v57, v35);
  v37 = v58;
  v30 = v59;
  v38 = v60;
  if (v60)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();

    v62 = swift_dynamicCastClass();
    if (!v62)
    {
      swift_unknownObjectRelease();
      v62 = _swiftEmptyArrayStorage;
    }

    v63 = v62[2];

    if (__OFSUB__(v38 >> 1, v30))
    {
      goto LABEL_75;
    }

    if (v63 != (v38 >> 1) - v30)
    {
      goto LABEL_76;
    }

    v37 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v37)
    {
      goto LABEL_49;
    }

    v37 = _swiftEmptyArrayStorage;
    goto LABEL_48;
  }

  while (1)
  {
    sub_1003A8C20(v5, v37, v30, v38);
    v37 = v61;
LABEL_48:
    swift_unknownObjectRelease();
LABEL_49:
    if ((v97 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_unknownObjectRelease();
  }

  v67 = sub_1004991C0(v97, v35);
  if ((v66 & 1) == 0)
  {
LABEL_51:
    sub_1003A8C20(v67, v64, v65, v66);
    goto LABEL_57;
  }

  v68 = v66;
  v69 = v65;
  v70 = v64;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v71 = swift_dynamicCastClass();
  if (!v71)
  {
    swift_unknownObjectRelease();
    v71 = _swiftEmptyArrayStorage;
  }

  v72 = v71[2];

  if (__OFSUB__(v68 >> 1, v69))
  {
    __break(1u);
    goto LABEL_78;
  }

  if (v72 != (v68 >> 1) - v69)
  {
LABEL_78:
    swift_unknownObjectRelease();
    v66 = v68;
    v65 = v69;
    v64 = v70;
    goto LABEL_51;
  }

  v73 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v73)
  {
LABEL_57:
    swift_unknownObjectRelease();
  }

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 134218240;
    *(v76 + 4) = v98;
    *(v76 + 12) = 2048;
    *(v76 + 14) = v97;
    _os_log_impl(&_mh_execute_header, v74, v75, "Returning %llu shortInterval keys and %llu longInterval keys", v76, 0x16u);
  }

  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1013953A0;
  v78 = objc_allocWithZone(SPOfflineAdvertisingKeys);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v80 = [v78 initWithInterval:15 keys:isa];

  *(v77 + 32) = v80;
  v81 = objc_allocWithZone(SPOfflineAdvertisingKeys);
  v82 = Array._bridgeToObjectiveC()().super.isa;

  v83 = [v81 initWithInterval:1440 keys:v82];

  *(v77 + 40) = v83;
  sub_100721D04(v95, type metadata accessor for TimeBasedKeysCriteria);
  return v77;
}

uint64_t sub_1006CE73C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1006CDAB8(a4, a5);
    a2();
  }

  return result;
}

uint64_t sub_1006CE948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for BeaconEstimatedLocation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 280);
  sub_100721C9C(a3, v13, type metadata accessor for BeaconEstimatedLocation);
  sub_10001F280(a4, v20);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  sub_10002AB74(v13, v17 + v15, type metadata accessor for BeaconEstimatedLocation);
  sub_10000A748(v20, v17 + v16);
  *(v17 + v16 + 40) = a5;

  sub_100A9DA2C(a3, sub_10071F1A4, v17);
}

void sub_1006CEAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v134 = a5;
  v141 = a3;
  v142 = a4;
  v6 = type metadata accessor for UUID();
  v137 = *(v6 - 8);
  v138 = v6;
  v7 = *(v137 + 64);
  __chkstk_darwin(v6);
  v136 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for BeaconEstimatedLocation();
  v9 = *(*(v135 - 8) + 64);
  v10 = __chkstk_darwin(v135);
  v12 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v133 = (&v131 - v14);
  v15 = __chkstk_darwin(v13);
  v132 = &v131 - v16;
  v17 = __chkstk_darwin(v15);
  v140 = &v131 - v18;
  v19 = __chkstk_darwin(v17);
  v139 = &v131 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v131 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v131 - v25;
  __chkstk_darwin(v24);
  v28 = &v131 - v27;
  v29 = sub_1000BC4D4(&qword_10169F438, &unk_1013B3300);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = (&v131 - v31);
  Transaction.capture()();
  sub_1000D2A70(a1, v32, &qword_10169F438, &unk_1013B3300);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v32;
    v145[0] = v33;
    swift_errorRetain();
    v34 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    if (swift_dynamicCast())
    {
      if (v144 == 8)
      {
        if (qword_101694B80 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_1000076D4(v35, qword_10177B7F8);
        v36 = v132;
        sub_100721C9C(v141, v132, type metadata accessor for BeaconEstimatedLocation);
        sub_10001F280(v142, v145);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          *v39 = 141558787;
          *(v39 + 4) = 1752392040;
          *(v39 + 12) = 2081;
          v40 = *(v135 + 20);
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
          v41 = v138;
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          v43 = v36;
          v45 = v44;
          sub_100721D04(v43, type metadata accessor for BeaconEstimatedLocation);
          v46 = sub_1000136BC(v42, v45, &v144);

          *(v39 + 14) = v46;
          *(v39 + 22) = 2160;
          *(v39 + 24) = 1752392040;
          *(v39 + 32) = 2081;
          v48 = v146;
          v47 = v147;
          sub_1000035D0(v145, v146);
          v49 = v136;
          (*(*(*(v47 + 8) + 8) + 32))(v48);
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          (*(v137 + 8))(v49, v41);
          sub_100007BAC(v145);
          v53 = sub_1000136BC(v50, v52, &v144);

          *(v39 + 34) = v53;
          _os_log_impl(&_mh_execute_header, v37, v38, "Skipped saving outdated LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s.", v39, 0x2Au);
          swift_arrayDestroy();
LABEL_22:

          goto LABEL_23;
        }

        v130 = v36;
      }

      else
      {
        if (qword_101694B80 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for Logger();
        sub_1000076D4(v110, qword_10177B7F8);
        v111 = v133;
        sub_100721C9C(v141, v133, type metadata accessor for BeaconEstimatedLocation);
        sub_10001F280(v142, v145);
        swift_errorRetain();
        v37 = Logger.logObject.getter();
        v112 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v37, v112))
        {
          v113 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v144 = v141;
          *v113 = 141559043;
          *(v113 + 4) = 1752392040;
          *(v113 + 12) = 2081;
          v114 = *(v135 + 20);
          sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
          v115 = v138;
          v116 = dispatch thunk of CustomStringConvertible.description.getter();
          v142 = v34;
          v118 = v117;
          sub_100721D04(v111, type metadata accessor for BeaconEstimatedLocation);
          v119 = sub_1000136BC(v116, v118, &v144);

          *(v113 + 14) = v119;
          *(v113 + 22) = 2160;
          *(v113 + 24) = 1752392040;
          *(v113 + 32) = 2081;
          v121 = v146;
          v120 = v147;
          sub_1000035D0(v145, v146);
          v122 = v136;
          (*(*(*(v120 + 8) + 8) + 32))(v121);
          v123 = dispatch thunk of CustomStringConvertible.description.getter();
          v125 = v124;
          (*(v137 + 8))(v122, v115);
          sub_100007BAC(v145);
          v126 = sub_1000136BC(v123, v125, &v144);

          *(v113 + 34) = v126;
          *(v113 + 42) = 2082;
          v143 = v33;
          swift_errorRetain();
          v127 = String.init<A>(describing:)();
          v129 = sub_1000136BC(v127, v128, &v144);

          *(v113 + 44) = v129;
          _os_log_impl(&_mh_execute_header, v37, v112, "Failed to save LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s: %{public}s.", v113, 0x34u);
          swift_arrayDestroy();
          goto LABEL_22;
        }

        v130 = v111;
      }
    }

    else
    {
      if (qword_101694B80 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_1000076D4(v90, qword_10177B7F8);
      sub_100721C9C(v141, v12, type metadata accessor for BeaconEstimatedLocation);
      sub_10001F280(v142, v145);
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v91 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v91))
      {
        v92 = swift_slowAlloc();
        v142 = v34;
        v93 = v92;
        v144 = swift_slowAlloc();
        *v93 = 141559043;
        *(v93 + 4) = 1752392040;
        *(v93 + 12) = 2081;
        v94 = *(v135 + 20);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v95 = v138;
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        sub_100721D04(v12, type metadata accessor for BeaconEstimatedLocation);
        v99 = sub_1000136BC(v96, v98, &v144);

        *(v93 + 14) = v99;
        *(v93 + 22) = 2160;
        *(v93 + 24) = 1752392040;
        *(v93 + 32) = 2081;
        v101 = v146;
        v100 = v147;
        sub_1000035D0(v145, v146);
        v102 = v136;
        (*(*(*(v100 + 8) + 8) + 32))(v101);
        v103 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = v104;
        (*(v137 + 8))(v102, v95);
        sub_100007BAC(v145);
        v106 = sub_1000136BC(v103, v105, &v144);

        *(v93 + 34) = v106;
        *(v93 + 42) = 2082;
        v143 = v33;
        swift_errorRetain();
        v107 = String.init<A>(describing:)();
        v109 = sub_1000136BC(v107, v108, &v144);

        *(v93 + 44) = v109;
        _os_log_impl(&_mh_execute_header, v37, v91, "Failed to save LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s: %{public}s.", v93, 0x34u);
        swift_arrayDestroy();

LABEL_23:

        return;
      }

      v130 = v12;
    }

    sub_100721D04(v130, type metadata accessor for BeaconEstimatedLocation);
    sub_100007BAC(v145);
  }

  else
  {
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_1000076D4(v54, qword_10177B7F8);
    v55 = v141;
    sub_100721C9C(v141, v28, type metadata accessor for BeaconEstimatedLocation);
    sub_10001F280(v142, v145);
    v56 = v26;
    sub_100721C9C(v55, v26, type metadata accessor for BeaconEstimatedLocation);
    v57 = v23;
    sub_100721C9C(v55, v23, type metadata accessor for BeaconEstimatedLocation);
    v58 = v139;
    sub_100721C9C(v55, v139, type metadata accessor for BeaconEstimatedLocation);
    v59 = v55;
    v60 = v140;
    sub_100721C9C(v59, v140, type metadata accessor for BeaconEstimatedLocation);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v144 = v142;
      *v63 = 141560067;
      *(v63 + 4) = 1752392040;
      *(v63 + 12) = 2081;
      v64 = v135;
      LODWORD(v141) = v62;
      v65 = *(v135 + 20);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v66 = v138;
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v57;
      v133 = v61;
      v69 = v68;
      sub_100721D04(v28, type metadata accessor for BeaconEstimatedLocation);
      v70 = sub_1000136BC(v67, v69, &v144);

      *(v63 + 14) = v70;
      *(v63 + 22) = 2160;
      *(v63 + 24) = 1752392040;
      *(v63 + 32) = 2081;
      v72 = v146;
      v71 = v147;
      sub_1000035D0(v145, v146);
      v73 = v136;
      (*(*(*(v71 + 8) + 8) + 32))(v72);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      (*(v137 + 8))(v73, v66);
      sub_100007BAC(v145);
      v77 = sub_1000136BC(v74, v76, &v144);

      *(v63 + 34) = v77;
      *(v63 + 42) = 2082;
      v78 = sub_100013454(v134);
      v80 = sub_1000136BC(v78, v79, &v144);

      *(v63 + 44) = v80;
      *(v63 + 52) = 2082;
      v81 = v64[10];
      type metadata accessor for Date();
      sub_100003E8C(&qword_1016969A0, &type metadata accessor for Date);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      sub_100721D04(v56, type metadata accessor for BeaconEstimatedLocation);
      v85 = sub_1000136BC(v82, v84, &v144);

      *(v63 + 54) = v85;
      *(v63 + 62) = 2049;
      v86 = *(v132 + v64[7]);
      sub_100721D04(v132, type metadata accessor for BeaconEstimatedLocation);
      *(v63 + 64) = v86;
      *(v63 + 72) = 2049;
      v87 = *(v139 + v64[8]);
      sub_100721D04(v139, type metadata accessor for BeaconEstimatedLocation);
      *(v63 + 74) = v87;
      *(v63 + 82) = 2050;
      v88 = *(v140 + v64[9]);
      sub_100721D04(v140, type metadata accessor for BeaconEstimatedLocation);
      *(v63 + 84) = v88;
      v89 = v133;
      _os_log_impl(&_mh_execute_header, v133, v141, "Saved LKL LocationID: %{private,mask.hash}s for Beacon: %{private,mask.hash}s, source: %{public}s, timestamp: %{public}s, lat: %{private}f, lon: %{private}f, acc: %{public}f.", v63, 0x5Cu);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v60, type metadata accessor for BeaconEstimatedLocation);
      sub_100721D04(v58, type metadata accessor for BeaconEstimatedLocation);
      sub_100721D04(v57, type metadata accessor for BeaconEstimatedLocation);
      sub_100721D04(v26, type metadata accessor for BeaconEstimatedLocation);
      sub_100721D04(v28, type metadata accessor for BeaconEstimatedLocation);
      sub_100007BAC(v145);
    }

    sub_10000B3A8(v32, &qword_10169F438, &unk_1013B3300);
  }
}

uint64_t sub_1006CFAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v37 = a7;
  v35 = a5;
  v36 = a6;
  v33 = a1;
  v34 = a4;
  v31 = a2;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v41 - 8);
  v9 = *(v43 + 64);
  __chkstk_darwin(v41);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v42);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 + 48);
  (*(v14 + 16))(v16, a3, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v14 + 32))(v21 + v17, v16, v13);
  v22 = v33;
  *(v21 + v18) = v34;
  *(v21 + v19) = v31;
  *(v21 + v20) = v22;
  v23 = v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v36;
  *v23 = v35;
  *(v23 + 8) = v24;
  *(v23 + 16) = v37;
  aBlock[4] = sub_1006E9DB0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162DA00;
  v25 = _Block_copy(aBlock);

  v26 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v27 = v39;
  v28 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v43 + 8))(v27, v28);
  (*(v40 + 8))(v26, v42);
}

void sub_1006CFF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, int a7)
{
  v113 = a7;
  v128 = a3;
  v129 = a5;
  v123 = a4;
  v106 = type metadata accessor for DispatchWorkItemFlags();
  v105 = *(v106 - 8);
  v10 = *(v105 + 64);
  __chkstk_darwin(v106);
  v103 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for DispatchQoS();
  v102 = *(v104 - 8);
  v12 = *(v102 + 64);
  __chkstk_darwin(v104);
  v101 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for DispatchPredicate();
  v115 = *(v116 - 8);
  v14 = *(v115 + 64);
  __chkstk_darwin(v116);
  v114 = (&v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v16 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v118 = &v97 - v17;
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v122 = &v97 - v20;
  v21 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v127 = &v97 - v23;
  v24 = type metadata accessor for OwnedBeaconRecord();
  v120 = *(v24 - 8);
  v121 = v24;
  v25 = *(v120 + 64);
  __chkstk_darwin(v24);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v126 = &v97 - v30;
  v31 = type metadata accessor for OwnedBeaconGroup(0);
  v124 = *(v31 - 8);
  v125 = v31;
  v32 = *(v124 + 64);
  __chkstk_darwin(v31);
  v119 = (&v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for UUID();
  v35 = *(v34 - 8);
  v36 = v35[8];
  v37 = __chkstk_darwin(v34);
  v111 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v97 - v39;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_1000076D4(v41, qword_10177B7F8);
  v43 = v35[2];
  v108 = v35 + 2;
  v107 = v43;
  v43(v40, a1, v34);
  v110 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v117 = v35;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v100 = a6;
    v48 = v47;
    v98 = swift_slowAlloc();
    aBlock[0] = v98;
    *v48 = 141558531;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v99 = a1;
    v50 = v27;
    v52 = v51;
    v109 = v35[1];
    v109(v40, v34);
    v53 = sub_1000136BC(v49, v52, aBlock);
    v27 = v50;
    a1 = v99;

    *(v48 + 14) = v53;
    *(v48 + 22) = 2048;
    *(v48 + 24) = a2;
    _os_log_impl(&_mh_execute_header, v44, v45, "createDuplicateBeacons uuid: %{private,mask.hash}s count:%ld", v48, 0x20u);
    sub_100007BAC(v98);

    a6 = v100;
  }

  else
  {

    v109 = v35[1];
    v109(v40, v34);
  }

  v54 = v128;
  v55 = *(v128 + 280);
  v56 = v126;
  sub_100AC53EC(a1, v126);
  v57 = (*(v124 + 48))(v56, 1, v125);
  v58 = v127;
  if (v57 != 1)
  {
    v71 = v119;
    sub_10002AB74(v56, v119, type metadata accessor for OwnedBeaconGroup);
    v72 = swift_allocObject();
    v73 = v129;
    v72[2] = v123;
    v72[3] = v73;
    v72[4] = a6;

    sub_1006D0E24(v71, a2, sub_100721F2C, v72);

    sub_100721D04(v71, type metadata accessor for OwnedBeaconGroup);
    return;
  }

  sub_10000B3A8(v56, &unk_1016AF8B0, &unk_1013A0700);
  sub_100AA33AC(a1, v58);
  if ((*(v120 + 48))(v58, 1, v121) == 1)
  {
    v59 = v129;
    sub_10000B3A8(v58, &unk_1016A9A20, &qword_10138B280);
    v60 = v111;
    v107(v111, a1, v34);
    v61 = v34;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = v60;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock[0] = v66;
      *v65 = 141558275;
      *(v65 + 4) = 1752392040;
      *(v65 + 12) = 2081;
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      v109(v64, v61);
      v70 = sub_1000136BC(v67, v69, aBlock);

      *(v65 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v62, v63, "No beaconGroup or beacon found for %{private,mask.hash}s", v65, 0x16u);
      sub_100007BAC(v66);
    }

    else
    {

      v109(v60, v61);
    }

    type metadata accessor for SPOwnerSessionError(0);
    v131 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v75 = aBlock[0];
    v59(aBlock[0]);

    return;
  }

  sub_10002AB74(v58, v27, type metadata accessor for OwnedBeaconRecord);
  v97 = v27;
  if (v113)
  {
    v74 = (v117[7])(v122, 1, 1, v34);
  }

  else
  {
    v74 = sub_1000D2A70(&v27[*(v121 + 28)], v122, &qword_1016980D0, &unk_10138F3B0);
  }

  v76 = v118;
  v77 = *&v55[OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer];
  __chkstk_darwin(v74);
  *(&v97 - 2) = v55;
  *(&v97 - 1) = a1;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v78 = swift_allocObject();
  v79 = v129;
  *(v78 + 2) = v123;
  *(v78 + 3) = v79;
  *(v78 + 4) = a6;
  v80 = *(v54 + 48);
  v81 = v114;
  *v114 = v80;
  v82 = v115;
  v83 = v116;
  (*(v115 + 104))(v81, enum case for DispatchPredicate.onQueue(_:), v116);

  v84 = v80;
  LOBYTE(v80) = _dispatchPreconditionTest(_:)();
  (*(v82 + 8))(v81, v83);
  if ((v80 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v127 = v78;
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  v86 = dispatch_group_create();
  if (a2 < 0)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v87 = v86;
  v129 = v84;
  v88 = v122;
  for (i = v97; a2; --a2)
  {
    dispatch_group_enter(v87);
    v90 = swift_allocObject();
    *(v90 + 16) = v87;
    *(v90 + 24) = v85;

    v91 = v87;
    sub_1006D4004(i, v76, v88, sub_1006FE234, v90);
  }

  v92 = swift_allocObject();
  v92[2] = v85;
  v92[3] = sub_1006FE20C;
  v92[4] = v127;
  v92[5] = v54;
  aBlock[4] = sub_1006FE23C;
  aBlock[5] = v92;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10162DAC8;
  v93 = _Block_copy(aBlock);

  v94 = v101;
  static DispatchQoS.unspecified.getter();
  v131 = _swiftEmptyArrayStorage;
  sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v95 = v103;
  v96 = v106;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v93);

  (*(v105 + 8))(v95, v96);
  (*(v102 + 8))(v94, v104);
  sub_10000B3A8(v118, &unk_1016B29E0, &unk_1013B70E0);
  sub_10000B3A8(v122, &qword_1016980D0, &unk_10138F3B0);
  sub_100721D04(i, type metadata accessor for OwnedBeaconRecord);
}

void sub_1006D0E24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v79 = a3;
  v95 = a1;
  v78 = type metadata accessor for DispatchWorkItemFlags();
  v104 = *(v78 - 8);
  isa = v104[8].isa;
  __chkstk_darwin(v78);
  v77 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchQoS();
  v100 = *(v90 - 8);
  v8 = v100[8].isa;
  __chkstk_darwin(v90);
  v76 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  v75 = *(v10 - 8);
  v11 = *(v75 + 64);
  __chkstk_darwin(v10 - 8);
  v74 = v12;
  v89 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v103 = &v66 - v15;
  v16 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v66 - v18;
  v68 = sub_1000BC4D4(&qword_1016A7800, &qword_1013B66B0);
  v67 = *(v68 - 8);
  v20 = *(v67 + 64);
  __chkstk_darwin(v68);
  v22 = &v66 - v21;
  v102 = type metadata accessor for UUID();
  v91 = *(v102 - 1);
  v23 = *(v91 + 64);
  v24 = __chkstk_darwin(v102);
  v88 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v101 = &v66 - v25;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = (&v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v4 + 48);
  *v30 = v31;
  (*(v27 + 104))(v30, enum case for DispatchPredicate.onQueue(_:), v26);
  v87 = v31;
  LOBYTE(v31) = _dispatchPreconditionTest(_:)();
  (*(v27 + 8))(v30, v26);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v92 = dispatch_group_create();
  if (a2 < 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (a2)
  {
    v99 = v32;
    v33 = 0;
    v34 = 0;
    v94 = (v91 + 8);
    v72 = (v91 + 16);
    v98 = (v91 + 56);
    v71 = v23 + 7;
    v70 = v91 + 32;
    v86 = &v108;
    v85 = v104 + 1;
    v84 = v100 + 1;
    v36 = v101;
    v35 = v102;
    v73 = a2;
    v69 = v22;
    do
    {
      UUID.init()();
      v101 = swift_allocObject();
      *(v101 + 2) = _swiftEmptyDictionarySingleton;
      v37 = dispatch_group_create();
      v38 = sub_1006D2E40(v95);
      if (v34)
      {
        (*v94)(v36, v35);

        v34 = 0;
      }

      else
      {
        v82 = 0;
        v83 = v33;
        v39 = v35;
        v100 = v37;
        v40 = v36;
        v93 = v38;
        v41 = v38[2];
        v42 = v103;
        v43 = v22;
        v44 = v4;
        v45 = v72;
        v46 = v98;
        if (v41)
        {
          v97 = *(v68 + 48);
          v47 = v93 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
          v96 = *(v67 + 72);
          do
          {
            v104 = v47;
            v102 = v41;
            sub_1000D2A70(v47, v43, &qword_1016A7800, &qword_1013B66B0);
            v48 = v100;
            dispatch_group_enter(v100);
            sub_10002AB74(v97 + v43, v19, type metadata accessor for BeaconNamingRecord);
            v49 = type metadata accessor for BeaconNamingRecord();
            (*(*(v49 - 8) + 56))(v19, 0, 1, v49);
            (*v45)(v42, v40, v39);
            (*v46)(v42, 0, 1, v39);
            v50 = swift_allocObject();
            v50[2] = v48;
            v50[3] = v44;
            v51 = v99;
            v50[4] = v101;
            v50[5] = v51;
            v52 = v48;

            sub_1006D4004(v43, v19, v103, sub_1006FE270, v50);
            v46 = v98;
            v42 = v103;

            sub_100721D04(v43, type metadata accessor for OwnedBeaconRecord);
            sub_10000B3A8(v42, &qword_1016980D0, &unk_10138F3B0);
            sub_10000B3A8(v19, &unk_1016B29E0, &unk_1013B70E0);
            v47 = v104 + v96;
            v41 = v102 - 1;
          }

          while (v102 != 1);
        }

        sub_100721C9C(v95, v89, type metadata accessor for OwnedBeaconGroup);
        v53 = v91;
        (*(v91 + 16))(v88, v40, v39);
        v54 = (*(v75 + 80) + 40) & ~*(v75 + 80);
        v55 = (v74 + *(v53 + 80) + v54) & ~*(v53 + 80);
        v56 = (v71 + v55) & 0xFFFFFFFFFFFFFFF8;
        v57 = swift_allocObject();
        v58 = v93;
        *(v57 + 2) = v101;
        *(v57 + 3) = v58;
        *(v57 + 4) = v92;
        sub_10002AB74(v89, &v57[v54], type metadata accessor for OwnedBeaconGroup);
        (*(v53 + 32))(&v57[v55], v88, v39);
        *&v57[v56] = v44;
        *&v57[(v56 + 15) & 0xFFFFFFFFFFFFFFF8] = v99;
        v110 = sub_1006FE27C;
        v111 = v57;
        aBlock = _NSConcreteStackBlock;
        v107 = 1107296256;
        v108 = sub_100006684;
        v109 = &unk_10162DB90;
        v59 = _Block_copy(&aBlock);

        v104 = v92;
        v60 = v76;
        static DispatchQoS.unspecified.getter();
        v105 = _swiftEmptyArrayStorage;
        v93 = sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
        v81 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v96 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
        v61 = v77;
        v62 = v78;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();
        _Block_release(v59);
        v102 = v85->isa;
        (v102)(v61, v62);
        v97 = v84->isa;
        (v97)(v60, v90);

        v63 = swift_allocObject();
        v64 = v79;
        *(v63 + 2) = v99;
        *(v63 + 3) = v64;
        *(v63 + 4) = v80;
        *(v63 + 5) = v44;
        v110 = sub_1006FE388;
        v111 = v63;
        aBlock = _NSConcreteStackBlock;
        v107 = 1107296256;
        v108 = sub_100006684;
        v109 = &unk_10162DBE0;
        v65 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v105 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_group.notify(qos:flags:queue:execute:)();
        _Block_release(v65);

        (v102)(v61, v62);
        (v97)(v60, v90);
        (*(v91 + 8))(v40, v39);

        v4 = v44;
        a2 = v73;
        v35 = v39;
        v36 = v40;
        v22 = v69;
        v33 = v83;
        v34 = v82;
      }

      ++v33;
    }

    while (v33 != a2);
  }
}

uint64_t sub_1006D1B60(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 184) = a4;
  v9 = type metadata accessor for UUID();
  *(v8 + 48) = v9;
  v10 = *(v9 - 8);
  *(v8 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 64) = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  *(v8 + 72) = v12;
  v13 = *(v12 - 8);
  *(v8 + 80) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v15 = async function pointer to daemon.getter[1];
  v16 = swift_task_alloc();
  *(v8 + 96) = v16;
  *v16 = v8;
  v16[1] = sub_1006D1CC0;

  return daemon.getter();
}

uint64_t sub_1006D1CC0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&qword_10169A090, type metadata accessor for PencilPairingService);
  *v6 = v12;
  v6[1] = sub_1006D1E9C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006D1E9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v8 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = sub_1006D2D98;
  }

  else
  {
    v6 = v3[13];

    v5 = sub_1006D1FB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006D1FB8()
{
  v1 = *(v0 + 184);
  if (v1 > 3)
  {
    if (*(v0 + 184) > 5u)
    {
      if (v1 != 6)
      {
LABEL_20:
        v23 = *(v0 + 120);
        sub_1003FD838();
        v24 = swift_allocError();
        *v25 = 1;
        swift_willThrow();

        v27 = *(v0 + 32);
        v26 = *(v0 + 40);
        swift_errorRetain();
        v27(v24);

        v28 = *(v0 + 88);
        v29 = *(v0 + 64);

        v30 = *(v0 + 8);

        return v30();
      }

      v18 = *(v0 + 88);
      (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v19 = swift_task_alloc();
      *(v0 + 176) = v19;
      *v19 = v0;
      v19[1] = sub_1006D2C40;
      v20 = *(v0 + 120);
      v21 = *(v0 + 88);
      v22 = *(v0 + 24);

      return sub_100D739FC(v21, v22);
    }

    else if (v1 == 4)
    {
      v8 = *(v0 + 88);
      (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v9 = swift_task_alloc();
      *(v0 + 160) = v9;
      *v9 = v0;
      v9[1] = sub_1006D2908;
      v10 = *(v0 + 120);
      v11 = *(v0 + 88);
      v12 = *(v0 + 24);

      return sub_100D71C7C(v11, v12);
    }

    else
    {
      v31 = *(v0 + 88);
      (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v32 = swift_task_alloc();
      *(v0 + 168) = v32;
      *v32 = v0;
      v32[1] = sub_1006D2AE8;
      v33 = *(v0 + 120);
      v34 = *(v0 + 88);
      v35 = *(v0 + 24);

      return sub_100D7219C(v34, v35);
    }
  }

  else
  {
    if (*(v0 + 184) <= 1u)
    {
      if (*(v0 + 184))
      {
        v2 = *(v0 + 88);
        (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
        type metadata accessor for Peripheral();
        Identifier.init(_:)();
        v3 = swift_task_alloc();
        *(v0 + 136) = v3;
        *v3 = v0;
        v3[1] = sub_1006D2500;
        v4 = *(v0 + 120);
        v5 = *(v0 + 88);
        v6 = *(v0 + 24);

        return sub_100D70938(v5, v6);
      }

      goto LABEL_20;
    }

    if (v1 == 2)
    {
      v13 = *(v0 + 88);
      (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v14 = swift_task_alloc();
      *(v0 + 144) = v14;
      *v14 = v0;
      v14[1] = sub_1006D2658;
      v15 = *(v0 + 120);
      v16 = *(v0 + 88);
      v17 = *(v0 + 24);

      return sub_100D70FF8(v16, v17);
    }

    else
    {
      v36 = *(v0 + 88);
      (*(*(v0 + 56) + 16))(*(v0 + 64), *(v0 + 16), *(v0 + 48));
      type metadata accessor for Peripheral();
      Identifier.init(_:)();
      v37 = swift_task_alloc();
      *(v0 + 152) = v37;
      *v37 = v0;
      v37[1] = sub_1006D27B0;
      v38 = *(v0 + 120);
      v39 = *(v0 + 88);
      v40 = *(v0 + 24);

      return sub_100D71518(v39, v40);
    }
  }
}

uint64_t sub_1006D2500()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100721E60, 0, 0);
}

uint64_t sub_1006D2658()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100721E60, 0, 0);
}

uint64_t sub_1006D27B0()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100721E60, 0, 0);
}

uint64_t sub_1006D2908()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1006D2A60, 0, 0);
}

uint64_t sub_1006D2A60()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  (*(v0 + 32))(0);

  v3 = *(v0 + 88);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1006D2AE8()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100721E60, 0, 0);
}

uint64_t sub_1006D2C40()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100721E60, 0, 0);
}

uint64_t sub_1006D2D98()
{
  v1 = v0[13];

  v2 = v0[16];
  v4 = v0[4];
  v3 = v0[5];
  swift_errorRetain();
  v4(v2);

  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

void *sub_1006D2E40(void *a1)
{
  v114 = a1;
  v108 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v2 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v107 = &v81 - v3;
  v106 = type metadata accessor for BeaconNamingRecord();
  v83 = *(v106 - 8);
  v4 = *(v83 + 64);
  __chkstk_darwin(v106);
  v104 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016A7800, &qword_1013B66B0);
  v102 = *(v6 - 8);
  v103 = v6;
  v7 = *(v102 + 64);
  __chkstk_darwin(v6);
  v9 = &v81 - v8;
  v98 = type metadata accessor for SystemInfo.DeviceLockState();
  v112 = *(v98 - 8);
  v10 = *(v112 + 8);
  v11 = __chkstk_darwin(v98);
  v97 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v96 = &v81 - v13;
  v14 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v95 = &v81 - v16;
  v116 = type metadata accessor for OwnedBeaconRecord();
  v17 = *(v116 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v116);
  v105 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v82 = &v81 - v21;
  v115 = type metadata accessor for UUID();
  v22 = *(v115 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v115);
  v113 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = v1;
  v30 = *(v1 + 48);
  *v29 = v30;
  (*(v26 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v25);
  v31 = v30;
  v32 = _dispatchPreconditionTest(_:)();
  result = (*(v26 + 8))(v29, v25);
  if ((v32 & 1) == 0)
  {
    goto LABEL_38;
  }

  v101 = v9;
  v34 = sub_100519FB0();
  v35 = v34 + 56;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v34 + 56);
  v39 = (v36 + 63) >> 6;
  v91 = v22 + 16;
  v90 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v89 = (v112 + 104);
  v88 = (v112 + 8);
  v84 = (v17 + 56);
  v87 = (v22 + 8);
  v110 = v17;
  v86 = (v17 + 48);
  v109 = v34;

  v40 = 0;
  v85 = xmmword_101385D80;
  v114 = _swiftEmptyArrayStorage;
  v41 = v116;
  v93 = v35;
  v92 = v39;
  v94 = v22;
LABEL_5:
  v42 = v40;
  v43 = v113;
  if (!v38)
  {
    goto LABEL_7;
  }

  do
  {
    v40 = v42;
LABEL_10:
    (*(v22 + 16))(v43, *(v109 + 48) + *(v22 + 72) * (__clz(__rbit64(v38)) | (v40 << 6)), v115);
    v112 = *(v99 + 280);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v44 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v45 = swift_allocObject();
    *(v45 + 16) = v85;
    v46 = UUID.uuidString.getter();
    v48 = v47;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_100008C00();
    *(v45 + 32) = v46;
    *(v45 + 40) = v48;
    v111 = v44;
    os_log(_:dso:log:_:_:)();

    v49 = v96;
    static SystemInfo.lockState.getter();
    v50 = v97;
    v51 = v98;
    (*v89)(v97, v90, v98);
    sub_100003E8C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v46) = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *v88;
    (*v88)(v50, v51);
    (v25)(v49, v51);
    if (v46)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v52 = v95;
      v41 = v116;
      (*v84)(v95, 1, 1, v116);
      v43 = v113;
    }

    else
    {
      v53 = sub_100025044();
      v25 = &v81;
      __chkstk_darwin(v53);
      v54 = v113;
      *(&v81 - 2) = v113;
      v52 = v95;
      v55 = v100;
      sub_1012BBBD0(sub_100406F84, v53, v95);
      v100 = v55;

      v41 = v116;
      v43 = v54;
    }

    v38 &= v38 - 1;
    (*v87)(v43, v115);
    if ((*v86)(v52, 1, v41) != 1)
    {
      sub_10002AB74(v52, v82, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_100A5C050(0, v114[2] + 1, 1, v114);
      }

      v39 = v92;
      v25 = v114[2];
      v56 = v114[3];
      if (v25 >= v56 >> 1)
      {
        v114 = sub_100A5C050(v56 > 1, v25 + 1, 1, v114);
      }

      v57 = v114;
      v114[2] = v25 + 1;
      result = sub_10002AB74(v82, v57 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v25, type metadata accessor for OwnedBeaconRecord);
      v22 = v94;
      v35 = v93;
      goto LABEL_5;
    }

    result = sub_10000B3A8(v52, &unk_1016A9A20, &qword_10138B280);
    v42 = v40;
    v22 = v94;
    v35 = v93;
    v39 = v92;
  }

  while (v38);
  while (1)
  {
LABEL_7:
    v40 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v40 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v40);
    ++v42;
    if (v38)
    {
      goto LABEL_10;
    }
  }

  v58 = v109;

  v59 = v114;
  v60 = v114[2];
  v61 = *(v58 + 16);

  if (v60 != v61)
  {

    type metadata accessor for SPOwnerSessionError(0);
    v118 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return v25;
  }

  if (!v60)
  {

    return _swiftEmptyArrayStorage;
  }

  v119 = _swiftEmptyArrayStorage;
  result = sub_101124FB4(0, v60, 0);
  v62 = 0;
  v25 = v119;
  v63 = v100;
  v115 = *(v99 + 280);
  v64 = v110;
  v112 = v59 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
  v113 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer;
  v65 = (v83 + 48);
  while (v62 < v59[2])
  {
    v66 = v105;
    v67 = sub_100721C9C(&v112[*(v64 + 72) * v62], v105, type metadata accessor for OwnedBeaconRecord);
    v68 = v66 + *(v41 + 20);
    v69 = *&v113[v115];
    __chkstk_darwin(v67);
    *(&v81 - 2) = v71;
    *(&v81 - 1) = v70;
    v72 = v63;
    v73 = v107;
    QueueSynchronizer.conditionalSync<A>(_:)();
    if ((*v65)(v73, 1, v106) == 1)
    {

      sub_10000B3A8(v73, &unk_1016B29E0, &unk_1013B70E0);
      type metadata accessor for SPOwnerSessionError(0);
      v117 = 2;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      sub_100721D04(v66, type metadata accessor for OwnedBeaconRecord);

      return v25;
    }

    v74 = v73;
    v75 = v104;
    sub_10002AB74(v74, v104, type metadata accessor for BeaconNamingRecord);
    v76 = *(v103 + 48);
    v77 = v66;
    v78 = v101;
    sub_10002AB74(v77, v101, type metadata accessor for OwnedBeaconRecord);
    sub_10002AB74(v75, v78 + v76, type metadata accessor for BeaconNamingRecord);
    v119 = v25;
    v80 = *(v25 + 16);
    v79 = *(v25 + 24);
    if (v80 >= v79 >> 1)
    {
      sub_101124FB4(v79 > 1, v80 + 1, 1);
      v25 = v119;
    }

    ++v62;
    *(v25 + 16) = v80 + 1;
    result = sub_1000D2AD8(v78, v25 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v80, &qword_1016A7800, &qword_1013B66B0);
    v63 = v72;
    v41 = v116;
    v64 = v110;
    v59 = v114;
    if (v60 == v62)
    {

      return v25;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_1006D3BEC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34[0] = a2;
  v7 = sub_1000BC4D4(&qword_101699858, &qword_101391FF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v34 - v9;
  v11 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v34 - v13);
  v15 = type metadata accessor for OwnedBeaconRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a1, v14, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v14;
    v35 = *v14;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
  }

  else
  {
    sub_10002AB74(v14, v18, type metadata accessor for OwnedBeaconRecord);
    v20 = sub_100717160(v18);
    if (v21 >> 60 != 15)
    {
      v23 = v20;
      v24 = v21;
      v25 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v26 = v25[12];
      v27 = v25[16];
      v28 = &v10[v25[20]];
      v29 = &v10[v25[24]];
      v30 = *(v15 + 20);
      v31 = type metadata accessor for UUID();
      (*(*(v31 - 8) + 16))(v10, &v18[v30], v31);
      v32 = type metadata accessor for MACAddress();
      (*(*(v32 - 8) + 56))(&v10[v26], 1, 1, v32);
      *&v10[v27] = xmmword_10138BBF0;
      *v28 = 0;
      v28[8] = 1;
      *v29 = 256;
      v29[2] = 3;
      v33 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(v10, 0, 1, v33);
      swift_beginAccess();
      sub_1001DD6C0(v10, v23, v24);
      swift_endAccess();
      sub_100721D04(v18, type metadata accessor for OwnedBeaconRecord);
      goto LABEL_7;
    }

    type metadata accessor for SPOwnerSessionError(0);
    v34[2] = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v19 = v35;
    swift_willThrow();
    sub_100721D04(v18, type metadata accessor for OwnedBeaconRecord);
  }

  swift_beginAccess();
  v22 = *(a5 + 16);
  *(a5 + 16) = v19;

LABEL_7:
  dispatch_group_leave(v34[0]);
}

uint64_t sub_1006D4004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a4;
  v138 = a5;
  v128 = a3;
  v135 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v142 = *(v7 - 8);
  v143 = v7;
  v8 = *(v142 + 64);
  __chkstk_darwin(v7);
  v141 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v140 = *(v10 - 8);
  v11 = *(v140 + 64);
  __chkstk_darwin(v10);
  v139 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v133 = &v114 - v15;
  v134 = type metadata accessor for BeaconNamingRecord();
  v132 = *(v134 - 8);
  v16 = *(v132 + 64);
  v17 = __chkstk_darwin(v134);
  v118 = (&v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v117 = &v114 - v19;
  v147 = type metadata accessor for UUID();
  v145 = *(v147 - 8);
  v20 = *(v145 + 64);
  __chkstk_darwin(v147);
  v146 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OwnedBeaconRecord();
  v23 = *(v22 - 1);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v130 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v26;
  __chkstk_darwin(v25);
  v28 = &v114 - v27;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = (&v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = v5;
  v34 = v5[6];
  *v33 = v34;
  (*(v30 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v29);
  v136 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  result = (*(v30 + 8))(v33, v29);
  if (v34)
  {
    v127 = v10;
    v125 = dispatch_group_create();
    sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
    v126 = swift_allocBox();
    v36 = *(v23 + 56);
    v124 = v23 + 56;
    v36(v37, 1, 1, v22);
    v144 = swift_allocObject();
    *(v144 + 16) = 0;
    v123 = v22[5];
    UUID.init()();
    sub_100721C9C(a1 + v22[6], &v28[v22[6]], type metadata accessor for StableIdentifier);
    sub_1000D2A70(v128, &v28[v22[7]], &qword_1016980D0, &unk_10138F3B0);
    v38 = v22[8];
    v39 = type metadata accessor for Date();
    (*(*(v39 - 8) + 16))(&v28[v38], a1 + v38, v39);
    v40 = v22[9];
    v41 = *(a1 + v40);
    v42 = *(a1 + v40 + 8);
    v43 = (a1 + v22[10]);
    v45 = *v43;
    v44 = v43[1];
    v46 = v22[12];
    v47 = (a1 + v22[11]);
    v49 = *v47;
    v119 = v47[1];
    v48 = v119;
    v50 = *(a1 + v46);
    v51 = *(a1 + v46 + 8);
    v52 = v22[14];
    v53 = (a1 + v22[13]);
    v55 = v53[1];
    v122 = *v53;
    v54 = v122;
    v121 = v55;
    v56 = a1 + v52;
    v58 = *(a1 + v52);
    v128 = *(v56 + 8);
    v57 = v128;
    v59 = v22[16];
    v60 = (a1 + v22[15]);
    v62 = *v60;
    v120 = v60[1];
    v61 = v120;
    v63 = *(a1 + v59);
    v64 = *(a1 + v22[17]);
    v65 = *(a1 + v22[18]);
    v66 = *(a1 + v22[19]);
    v67 = *(a1 + v22[20]);
    v116 = xmmword_10138C660;
    *v28 = xmmword_10138C660;
    v68 = &v28[v40];
    *v68 = v41;
    v68[1] = v42;
    v69 = &v28[v22[10]];
    *v69 = v45;
    v69[1] = v44;
    v70 = &v28[v22[11]];
    *v70 = v49;
    v70[1] = v48;
    v71 = &v28[v22[12]];
    *v71 = v50;
    v71[1] = v51;
    v72 = &v28[v22[13]];
    *v72 = v54;
    v72[1] = v55;
    v73 = &v28[v22[14]];
    *v73 = v58;
    *(v73 + 1) = v57;
    v74 = &v28[v22[15]];
    *v74 = v62;
    *(v74 + 1) = v61;
    *&v28[v22[16]] = v63;
    *&v28[v22[17]] = v64;
    v28[v22[18]] = v65;
    v28[v22[19]] = v66;
    v28[v22[20]] = v67;
    v75 = *(v145 + 16);
    v76 = &v28[v123];
    v123 = v145 + 16;
    v115 = v75;
    v75(v146, v76, v147);
    sub_100017D5C(v41, v42);
    sub_10002E98C(v45, v44);
    sub_10002E98C(v49, v119);
    sub_100017D5C(v50, v51);
    sub_100017D5C(v122, v121);

    v77 = v125;
    dispatch_group_enter(v125);
    v78 = v131[35];
    v79 = v130;
    sub_100721C9C(a1, v130, type metadata accessor for OwnedBeaconRecord);
    v80 = (*(v124 + 24) + 24) & ~*(v124 + 24);
    v81 = (v129 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    *(v82 + 16) = v77;
    v83 = v82 + v80;
    v84 = v144;
    sub_10002AB74(v79, v83, type metadata accessor for OwnedBeaconRecord);
    v85 = v126;
    *(v82 + v81) = v126;
    *(v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8)) = v84;
    v86 = v77;
    v87 = v85;

    sub_1006DDE30(v28, 0, sub_100717498, v82);

    v88 = v133;
    sub_1000D2A70(v135, v133, &unk_1016B29E0, &unk_1013B70E0);
    v89 = v134;
    v90 = (*(v132 + 48))(v88, 1, v134);
    v131 = v86;
    if (v90 == 1)
    {
      sub_10000B3A8(v88, &unk_1016B29E0, &unk_1013B70E0);
    }

    else
    {
      v91 = v117;
      sub_10002AB74(v88, v117, type metadata accessor for BeaconNamingRecord);
      v92 = v118;
      v93 = v118 + v89[5];
      UUID.init()();
      v115(v92 + v89[6], v146, v147);
      v94 = v89[7];
      v95 = *(v91 + v94);
      v96 = (v91 + v89[8]);
      v97 = *v96;
      v98 = v96[1];
      v99 = (v91 + v89[9]);
      v101 = *v99;
      v100 = v99[1];
      *v92 = v116;
      *(v92 + v94) = v95;
      v102 = (v92 + v89[8]);
      *v102 = v97;
      v102[1] = v98;
      v103 = (v92 + v89[9]);
      *v103 = v101;
      v103[1] = v100;

      dispatch_group_enter(v86);
      v104 = v86;

      sub_100B12C8C(v92, 0, v78, v104, v84);

      sub_100721D04(v92, type metadata accessor for BeaconNamingRecord);
      sub_100721D04(v91, type metadata accessor for BeaconNamingRecord);
    }

    v105 = v142;
    v106 = swift_allocObject();
    v107 = v137;
    v108 = v138;
    v106[2] = v87;
    v106[3] = v107;
    v106[4] = v108;
    v106[5] = v84;
    aBlock[4] = sub_10071758C;
    aBlock[5] = v106;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10162DCF8;
    v109 = _Block_copy(aBlock);

    v110 = v139;
    static DispatchQoS.unspecified.getter();
    v148 = _swiftEmptyArrayStorage;
    sub_100003E8C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v111 = v141;
    v112 = v143;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v113 = v131;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v109);

    (*(v105 + 8))(v111, v112);
    (*(v140 + 8))(v110, v127);
    (*(v145 + 8))(v146, v147);
    sub_100721D04(v28, type metadata accessor for OwnedBeaconRecord);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006D4BC8(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v13 = type metadata accessor for OwnedBeaconGroup(0);
  v39 = *(v13 - 1);
  v14 = *(v39 + 64);
  v15 = __chkstk_darwin(v13);
  v16 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v36[-v17];
  swift_beginAccess();
  if (*(*(a1 + 16) + 16) == *(a2 + 16))
  {
    dispatch_group_enter(a3);
    v38 = *(a4 + 16);
    v37 = *(a4 + 24);
    v19 = v13[6];
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 16))(&v18[v19], a5, v20);
    v21 = v13[7];
    v22 = type metadata accessor for MACAddress();
    (*(*(v22 - 8) + 16))(&v18[v21], a4 + v21, v22);
    LOBYTE(v21) = *(a4 + v13[8]);
    v23 = (a4 + v13[9]);
    v25 = *v23;
    v24 = v23[1];
    swift_beginAccess();
    v26 = *(a1 + 16);
    *v18 = xmmword_10138C660;
    *(v18 + 2) = v38;
    v18[24] = v37;
    v18[v13[8]] = v21;
    v27 = &v18[v13[9]];
    *v27 = v25;
    v27[1] = v24;
    *&v18[v13[10]] = v26;
    v28 = *(v40 + 280);
    sub_100721C9C(v18, v16, type metadata accessor for OwnedBeaconGroup);
    v29 = (*(v39 + 80) + 24) & ~*(v39 + 80);
    v30 = (v14 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 16) = a3;
    sub_10002AB74(v16, v31 + v29, type metadata accessor for OwnedBeaconGroup);
    *(v31 + v30) = a7;

    v32 = a3;

    sub_1006DD0B4(v18, 0, sub_1006FE3BC, v31);

    return sub_100721D04(v18, type metadata accessor for OwnedBeaconGroup);
  }

  else
  {
    type metadata accessor for SPOwnerSessionError(0);
    v42 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v34 = v41;
    swift_willThrow();
    swift_beginAccess();
    v35 = *(a7 + 16);
    *(a7 + 16) = v34;
  }
}

void sub_1006D4F68(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v46 = a2;
  v6 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v43[-v8];
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v43[-v16];
  __chkstk_darwin(v15);
  v19 = &v43[-v18];
  sub_1000D2A70(a1, v9, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v9;
    v47[0] = *v9;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177B7F8);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = _convertErrorToNSError(_:)();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error creating duplicate OwnerBeaconGroup:%{public}@", v24, 0xCu);
      sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);
    }

    v27 = v45;
    swift_beginAccess();
    v28 = *(v27 + 16);
    *(v27 + 16) = v20;
  }

  else
  {
    sub_10002AB74(v9, v19, type metadata accessor for OwnedBeaconGroup);
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177B7F8);
    sub_100721C9C(a3, v17, type metadata accessor for OwnedBeaconGroup);
    sub_100721C9C(v19, v14, type metadata accessor for OwnedBeaconGroup);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47[0] = v45;
      *v32 = 136446466;
      v33 = *(v10 + 24);
      type metadata accessor for UUID();
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v44 = v31;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_100721D04(v17, type metadata accessor for OwnedBeaconGroup);
      v37 = sub_1000136BC(v34, v36, v47);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v38 = &v14[*(v10 + 24)];
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      sub_100721D04(v14, type metadata accessor for OwnedBeaconGroup);
      v42 = sub_1000136BC(v39, v41, v47);

      *(v32 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v30, v44, "Duplicated group %{public}s -> %{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v14, type metadata accessor for OwnedBeaconGroup);
      sub_100721D04(v17, type metadata accessor for OwnedBeaconGroup);
    }

    sub_100721D04(v19, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(v46);
}

void sub_1006D54D0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v56 = a3;
  v57 = a5;
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v60 = &v52[-v9];
  v10 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v52[-v12];
  v14 = type metadata accessor for OwnedBeaconRecord();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v52[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v21 = &v52[-v20];
  __chkstk_darwin(v19);
  v23 = &v52[-v22];
  v24 = swift_projectBox();
  sub_1000D2A70(a1, v13, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = a2;
    v26 = *v13;
    v61[0] = *v13;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177B7F8);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = _convertErrorToNSError(_:)();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Error creating duplicate OwnedBeaconRecord:%{public}@", v30, 0xCu);
      sub_10000B3A8(v31, &qword_10169BB30, &unk_10138B3C0);
    }

    v33 = v57;
    swift_beginAccess();
    isa = v33[2].isa;
    v33[2].isa = v26;

    a2 = v25;
  }

  else
  {
    sub_10002AB74(v13, v23, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000076D4(v35, qword_10177B7F8);
    sub_100721C9C(v56, v21, type metadata accessor for OwnedBeaconRecord);
    sub_100721C9C(v23, v18, type metadata accessor for OwnedBeaconRecord);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v61[0] = v55;
      *v38 = 136446466;
      v39 = v59;
      v54 = v36;
      v40 = *(v59 + 20);
      type metadata accessor for UUID();
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v56 = v24;
      v53 = v37;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v57 = a2;
      sub_100721D04(v21, type metadata accessor for OwnedBeaconRecord);
      v44 = sub_1000136BC(v41, v43, v61);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2082;
      v45 = &v18[*(v39 + 20)];
      v24 = v56;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      a2 = v57;
      sub_100721D04(v18, type metadata accessor for OwnedBeaconRecord);
      v49 = sub_1000136BC(v46, v48, v61);

      *(v38 + 14) = v49;
      v50 = v54;
      _os_log_impl(&_mh_execute_header, v54, v53, "Duplicated %{public}s -> %{public}s", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100721D04(v18, type metadata accessor for OwnedBeaconRecord);
      sub_100721D04(v21, type metadata accessor for OwnedBeaconRecord);
      v39 = v59;
    }

    v51 = v60;
    sub_10002AB74(v23, v60, type metadata accessor for OwnedBeaconRecord);
    (*(v58 + 56))(v51, 0, 1, v39);
    swift_beginAccess();
    sub_10002311C(v51, v24, &unk_1016A9A20, &qword_10138B280);
  }

  dispatch_group_leave(a2);
}

void sub_1006D5B48(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v18 - v8);
  sub_1000D2A70(a1, v18 - v8, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v18[1] = *v9;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177B7F8);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = _convertErrorToNSError(_:)();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Error creating duplicate BeaconNamingRecord:%{public}@", v14, 0xCu);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
    }

    swift_beginAccess();
    v17 = *(a3 + 16);
    *(a3 + 16) = v10;
  }

  else
  {
    sub_10000B3A8(v9, &qword_1016A7808, &qword_1013D6750);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1006D5D9C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a2;
  v4 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v22 - v6);
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for OwnedBeaconRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_projectBox();
  swift_beginAccess();
  sub_1000D2A70(v17, v11, &unk_1016A9A20, &qword_10138B280);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000B3A8(v11, &unk_1016A9A20, &qword_10138B280);
    type metadata accessor for SPOwnerSessionError(0);
    v26 = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v7 = v25;
    swift_storeEnumTagMultiPayload();
    v24(v7);
    return sub_10000B3A8(v7, &unk_1016B15A0, &qword_1013A0900);
  }

  else
  {
    v19 = v24;
    sub_10002AB74(v11, v16, type metadata accessor for OwnedBeaconRecord);
    v20 = v23;
    swift_beginAccess();
    v21 = *(v20 + 16);
    if (v21)
    {
      *v7 = v21;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      swift_errorRetain();
      v19(v7);
    }

    else
    {
      sub_100721C9C(v16, v7, type metadata accessor for OwnedBeaconRecord);
      swift_storeEnumTagMultiPayload();
      v19(v7);
    }

    sub_10000B3A8(v7, &unk_1016B15A0, &qword_1013A0900);
    return sub_100721D04(v16, type metadata accessor for OwnedBeaconRecord);
  }
}

void sub_1006D6124(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (v12 - v8);
  sub_1000D2A70(a1, v12 - v8, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v12[1] = v10;
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    swift_beginAccess();
    v11 = *(a3 + 16);
    *(a3 + 16) = v10;
  }

  else
  {
    sub_10000B3A8(v9, &unk_1016B15A0, &qword_1013A0900);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1006D6264(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a1 + 16);
  if (v7)
  {
    swift_errorRetain();
    a2(v7);
  }

  else
  {
    v9 = *(*(a4 + 280) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    return (a2)(0);
  }
}

uint64_t sub_1006D6324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v8 = type metadata accessor for LocalFindableAccessoryRecord();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = async function pointer to daemon.getter[1];
  v12 = swift_task_alloc();
  v6[11] = v12;
  *v12 = v6;
  v12[1] = sub_1006D6450;

  return daemon.getter();
}

uint64_t sub_1006D6450(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_1006D662C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006D662C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[14] = a1;
  v4[15] = v1;

  if (v1)
  {
    v7 = sub_1006D6C68;
    v8 = 0;
  }

  else
  {
    v9 = v4[12];

    v7 = sub_1006D6764;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1006D6764()
{
  v1 = *(v0[14] + 128);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1006D6804;
  v3 = v0[7];
  v4 = v0[4];

  return sub_100C57B00(v3, v4);
}

uint64_t sub_1006D6804()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1006D6BBC;
  }

  else
  {
    v3 = sub_1006D6918;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006D6918()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = (*(v0[9] + 48))(v2, 1, v1);
  v5 = v0[5];
  v4 = v0[6];
  if (v3 == 1)
  {
    v6 = v0[14];
    sub_10000B3A8(v2, &qword_1016A9A30, &unk_1013BD120);
    type metadata accessor for SPOwnerSessionError(0);
    v0[3] = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v7 = v0[2];
    v5(v7, 1);
  }

  else
  {
    v8 = v0[14];
    v9 = v0[10];
    sub_10002AB74(v2, v9, type metadata accessor for LocalFindableAccessoryRecord);
    v10 = v9 + *(v1 + 52);
    v11 = [objc_allocWithZone(SPPeripheralConnectionMaterial) init];
    v12 = (v10 + *(type metadata accessor for PeripheralConnectionMaterial(0) + 20));
    v13 = *v12;
    v14 = v12[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v11 setIrkData:isa];

    v16 = MACAddress.data.getter();
    v18 = v17;
    v19 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v16, v18);
    [v11 setBtAddressData:v19];

    v20 = MACAddress.bluetoothAddressWithType.getter();
    v22 = v21;
    v23 = Data._bridgeToObjectiveC()().super.isa;
    sub_100016590(v20, v22);
    [v11 setBtAddressWithTypeData:v23];

    v5(v11, 0);

    sub_100721D04(v9, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v24 = v0[10];
  v25 = v0[7];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1006D6BBC()
{
  v1 = v0[14];

  v2 = v0[17];
  v4 = v0[5];
  v3 = v0[6];
  swift_errorRetain();
  v4(v2, 1);

  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006D6C68()
{
  v1 = v0[12];

  v2 = v0[15];
  v4 = v0[5];
  v3 = v0[6];
  swift_errorRetain();
  v4(v2, 1);

  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006D6D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = type metadata accessor for UUID();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v14 = type metadata accessor for LocalFindableAccessoryRecord();
  v6[14] = v14;
  v15 = *(v14 - 8);
  v6[15] = v15;
  v16 = *(v15 + 64) + 15;
  v6[16] = swift_task_alloc();
  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v6[17] = v18;
  *v18 = v6;
  v18[1] = sub_1006D6F04;

  return daemon.getter();
}

uint64_t sub_1006D6F04(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v12 = *v1;
  v3[18] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[19] = v6;
  v7 = type metadata accessor for Daemon();
  v3[20] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v3[21] = v9;
  v10 = sub_100003E8C(&unk_1016AA520, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_1006D70E4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006D70E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {
    v7 = sub_1006D7C64;
    v8 = 0;
  }

  else
  {
    v9 = v4[18];

    v7 = sub_1006D721C;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_1006D721C()
{
  v1 = *(v0[22] + 128);
  v2 = swift_task_alloc();
  v0[24] = v2;
  *v2 = v0;
  v2[1] = sub_1006D72BC;
  v3 = v0[13];
  v4 = v0[4];

  return sub_100C57B00(v3, v4);
}

uint64_t sub_1006D72BC()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1006D75CC;
  }

  else
  {
    v3 = sub_1006D73D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006D73D0()
{
  v1 = v0[13];
  if ((*(v0[15] + 48))(v1, 1, v0[14]) == 1)
  {
    v2 = v0[22];
    v4 = v0[5];
    v3 = v0[6];
    sub_10000B3A8(v1, &qword_1016A9A30, &unk_1013BD120);
    type metadata accessor for SPOwnerSessionError(0);
    v0[3] = 2;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100003E8C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v5 = v0[2];
    v4(v5);

    v6 = v0[16];
    v7 = v0[12];
    v8 = v0[13];
    v9 = v0[9];

    v10 = v0[1];

    return v10();
  }

  else
  {
    sub_10002AB74(v1, v0[16], type metadata accessor for LocalFindableAccessoryRecord);
    v12 = async function pointer to daemon.getter[1];
    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = sub_1006D7678;

    return daemon.getter();
  }
}

uint64_t sub_1006D75CC()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 48);
  (*(v0 + 40))(*(v0 + 200));

  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 72);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1006D7678(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  v5 = *v1;
  v3[27] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[28] = v7;
  v8 = type metadata accessor for PencilPairingService(0);
  v9 = sub_100003E8C(&qword_10169A090, type metadata accessor for PencilPairingService);
  *v7 = v5;
  v7[1] = sub_1006D782C;
  v10 = v3[21];
  v11 = v3[20];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_1006D782C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v5 = *(*v2 + 216);
  v8 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v6 = sub_1006D7D10;
  }

  else
  {
    v6 = sub_1006D7960;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1006D7960()
{
  v1 = v0[12];
  (*(v0[8] + 16))(v0[9], v0[16], v0[7]);
  type metadata accessor for Peripheral();
  Identifier.init(_:)();
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_1006D7A38;
  v3 = v0[29];
  v4 = v0[12];

  return sub_100D75188(v4, 1);
}

uint64_t sub_1006D7A38()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 256) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1006D7DDC;
  }

  else
  {
    v6 = sub_1006D7BA8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1006D7BA8()
{
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[16];

  sub_100721D04(v3, type metadata accessor for LocalFindableAccessoryRecord);
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1006D7C64()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 48);
  (*(v0 + 40))(*(v0 + 184));

  v3 = *(v0 + 128);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 72);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1006D7D10()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);

  sub_100721D04(v2, type metadata accessor for LocalFindableAccessoryRecord);
  v3 = *(v0 + 48);
  (*(v0 + 40))(*(v0 + 240));

  v4 = *(v0 + 128);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 72);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1006D7DDC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  v3 = *(v0 + 128);

  sub_100721D04(v3, type metadata accessor for LocalFindableAccessoryRecord);
  v4 = *(v0 + 48);
  (*(v0 + 40))(*(v0 + 256));

  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1006D7EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = sub_1000BC4D4(&unk_1016A99D0, &unk_1013BB9A0);
  v7[4] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[5] = swift_task_alloc();
  v12 = *(*(type metadata accessor for RawAccessoryMetadata(0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v7[6] = v13;
  type metadata accessor for AccessoryMetadataManager();
  v14 = swift_task_alloc();
  v7[7] = v14;
  *v14 = v7;
  v14[1] = sub_1006D7FE8;
  if (a4)
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  return sub_100368844(v13, a5, v15);
}

uint64_t sub_1006D7FE8()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100721E64;
  }

  else
  {
    v3 = sub_100721DC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006D80FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 240) = a4;
  v8 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  *(v7 + 40) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 48) = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  v11 = *(*(type metadata accessor for RawAccessoryMetadata(0) - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  v12 = type metadata accessor for CentralManager.State();
  *(v7 + 72) = v12;
  v13 = *(v12 - 8);
  *(v7 + 80) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v16 = *(*(type metadata accessor for AccessoryMetadata(0) - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1006D82D4, 0, 0);
}

uint64_t sub_1006D82D4()
{
  v1 = v0[12];
  v0[15] = type metadata accessor for CentralManager();
  v2 = type metadata accessor for CentralManager.Options();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = async function pointer to CentralManager.__allocating_init(options:)[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1006D83C4;
  v5 = v0[12];

  return CentralManager.__allocating_init(options:)(v5);
}

uint64_t sub_1006D83C4(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1006D84C4, 0, 0);
}

uint64_t sub_1006D84C4()
{
  (*(v0[10] + 104))(v0[11], enum case for CentralManager.State.poweredOn(_:), v0[9]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[18] = v2;
  v3 = sub_100003E8C(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_1006D85C0;
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[11];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_1006D85C0()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[10] + 8))(v3[11], v3[9]);

    return _swift_task_switch(sub_100721F38, 0, 0);
  }

  else
  {
    (*(v3[10] + 8))(v3[11], v3[9]);
    v4 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
    v9 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
    v5 = swift_task_alloc();
    v3[20] = v5;
    *v5 = v3;
    v5[1] = sub_1006D8780;
    v6 = v3[17];
    v7 = v3[2];

    return v9(v7);
  }
}

uint64_t sub_1006D8780(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_100721F3C;
  }

  else
  {
    v5 = sub_1006D8894;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006D8894()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 240);
    v4 = type metadata accessor for ConnectUseCase();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_1006D8B40;
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    if (v3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    return sub_1011FC38C(v6, v1, v8, v7);
  }

  else
  {
    v10 = *(v0 + 136);
    v11 = *(v0 + 16);
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_100003E8C(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v12 = swift_allocError();
    v14 = v13;
    v15 = type metadata accessor for MACAddress();
    (*(*(v15 - 8) + 16))(v14, v11, v15);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 24);
    v18 = *(v0 + 32);
    *v17 = v12;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v19(v17);

    sub_10000B3A8(v17, &unk_1016A99C0, &unk_1013BB530);
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);
    v26 = *(v0 + 48);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1006D8B40()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  sub_10000B3A8(*(v2 + 56), &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v5 = sub_1006D8D9C;
  }

  else
  {
    v5 = sub_1006D8C84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006D8C84()
{
  v1 = v0[24];
  sub_100232154(v0[8], v0[13]);
  if (v1)
  {
    v0[27] = v1;
    v2 = v0[21];
    v3 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v9 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    v5 = sub_1006D9024;
  }

  else
  {
    v6 = v0[21];
    v7 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v9 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v4 = swift_task_alloc();
    v0[25] = v4;
    *v4 = v0;
    v5 = sub_1006D8E48;
  }

  v4[1] = v5;

  return v9();
}

uint64_t sub_1006D8D9C()
{
  v0[27] = v0[24];
  v1 = v0[21];
  v2 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1006D9024;

  return v5();
}

uint64_t sub_1006D8E48()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1006D8F5C;
  }

  else
  {
    v3 = sub_100721E90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006D8F5C()
{
  sub_100721D04(v0[13], type metadata accessor for AccessoryMetadata);
  v0[27] = v0[26];
  v1 = v0[21];
  v2 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1006D9024;

  return v5();
}

uint64_t sub_1006D9024()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100721E8C;
  }

  else
  {
    v3 = sub_100721EFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006D9138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = sub_1000BC4D4(&unk_1016A99D0, &unk_1013BB9A0);
  v7[4] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[5] = swift_task_alloc();
  v12 = *(*(type metadata accessor for RawAccessoryMetadata(0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v7[6] = v13;
  type metadata accessor for AccessoryMetadataManager();
  v14 = swift_task_alloc();
  v7[7] = v14;
  *v14 = v7;
  v14[1] = sub_1006D9264;

  return sub_100368844(v13, a4, a5);
}

uint64_t sub_1006D9264()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1006D946C;
  }

  else
  {
    v3 = sub_1006D9378;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006D9378()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  sub_100721C9C(v1, v2, type metadata accessor for RawAccessoryMetadata);
  swift_storeEnumTagMultiPayload();
  v5(v2);
  sub_10000B3A8(v2, &unk_1016A99D0, &unk_1013BB9A0);
  sub_100721D04(v1, type metadata accessor for RawAccessoryMetadata);
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1006D946C()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v4(v2);

  sub_10000B3A8(v2, &unk_1016A99D0, &unk_1013BB9A0);
  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006D952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 240) = a5;
  *(v7 + 16) = a4;
  v8 = sub_1000BC4D4(&unk_1016A99C0, &unk_1013BB530);
  *(v7 + 40) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 48) = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  v11 = *(*(type metadata accessor for RawAccessoryMetadata(0) - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  v12 = type metadata accessor for CentralManager.State();
  *(v7 + 72) = v12;
  v13 = *(v12 - 8);
  *(v7 + 80) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&unk_1016C1200, &qword_1013B6240) - 8) + 64) + 15;
  *(v7 + 96) = swift_task_alloc();
  v16 = *(*(type metadata accessor for AccessoryMetadata(0) - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1006D9704, 0, 0);
}

uint64_t sub_1006D9704()
{
  v1 = v0[12];
  v0[15] = type metadata accessor for CentralManager();
  v2 = type metadata accessor for CentralManager.Options();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = async function pointer to CentralManager.__allocating_init(options:)[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1006D97F4;
  v5 = v0[12];

  return CentralManager.__allocating_init(options:)(v5);
}

uint64_t sub_1006D97F4(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return _swift_task_switch(sub_1006D98F4, 0, 0);
}

uint64_t sub_1006D98F4()
{
  (*(v0[10] + 104))(v0[11], enum case for CentralManager.State.poweredOn(_:), v0[9]);
  v1 = async function pointer to CentralManagerProtocol.await(state:)[1];
  v2 = swift_task_alloc();
  v0[18] = v2;
  v3 = sub_100003E8C(&unk_1016C1160, &type metadata accessor for CentralManager);
  *v2 = v0;
  v2[1] = sub_1006D99F0;
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[11];

  return CentralManagerProtocol.await(state:)(v6, v5, v3);
}

uint64_t sub_1006D99F0()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[10] + 8))(v3[11], v3[9]);

    return _swift_task_switch(sub_1006D9CC4, 0, 0);
  }

  else
  {
    (*(v3[10] + 8))(v3[11], v3[9]);
    v4 = *(&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + 1);
    v9 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
    v5 = swift_task_alloc();
    v3[20] = v5;
    *v5 = v3;
    v5[1] = sub_1006D9BB0;
    v6 = v3[17];
    v7 = v3[2];

    return v9(v7);
  }
}

uint64_t sub_1006D9BB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_1006DA1AC;
  }

  else
  {
    v5 = sub_1006D9DC8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006D9CC4()
{
  v1 = v0[17];

  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  *v3 = v0[19];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10000B3A8(v3, &unk_1016A99C0, &unk_1013BB530);
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1006D9DC8()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = type metadata accessor for ConnectUseCase();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_1006DA068;
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 240);

    return sub_1011FC38C(v5, v1, v7, v6);
  }

  else
  {
    v9 = *(v0 + 136);
    v10 = *(v0 + 16);
    type metadata accessor for AccessoryMetadataManager.Error(0);
    sub_100003E8C(&qword_10169E730, type metadata accessor for AccessoryMetadataManager.Error);
    v11 = swift_allocError();
    v13 = v12;
    v14 = type metadata accessor for MACAddress();
    (*(*(v14 - 8) + 16))(v13, v10, v14);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    v18 = *(v0 + 24);
    v17 = *(v0 + 32);
    *v16 = v11;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v18(v16);

    sub_10000B3A8(v16, &unk_1016A99C0, &unk_1013BB530);
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v24 = *(v0 + 56);
    v23 = *(v0 + 64);
    v25 = *(v0 + 48);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1006DA068()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  sub_10000B3A8(*(v2 + 56), &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v5 = sub_1006DA3C8;
  }

  else
  {
    v5 = sub_1006DA2B0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006DA1AC()
{
  v1 = v0[17];

  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  *v3 = v0[22];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v5(v3);

  sub_10000B3A8(v3, &unk_1016A99C0, &unk_1013BB530);
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1006DA2B0()
{
  v1 = v0[24];
  sub_100232154(v0[8], v0[13]);
  if (v1)
  {
    v0[27] = v1;
    v2 = v0[21];
    v3 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v9 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    v5 = sub_1006DA7B4;
  }

  else
  {
    v6 = v0[21];
    v7 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
    v9 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
    v4 = swift_task_alloc();
    v0[25] = v4;
    *v4 = v0;
    v5 = sub_1006DA474;
  }

  v4[1] = v5;

  return v9();
}

uint64_t sub_1006DA3C8()
{
  v0[27] = v0[24];
  v1 = v0[21];
  v2 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1006DA7B4;

  return v5();
}

uint64_t sub_1006DA474()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1006DA6EC;
  }

  else
  {
    v3 = sub_1006DA588;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006DA588()
{
  v1 = v0[21];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  sub_10002AB74(v4, v3, type metadata accessor for AccessoryMetadata);
  sub_100721C9C(v3, v5, type metadata accessor for AccessoryMetadata);
  swift_storeEnumTagMultiPayload();
  v8(v5);
  sub_10000B3A8(v5, &unk_1016A99C0, &unk_1013BB530);
  sub_100721D04(v3, type metadata accessor for AccessoryMetadata);
  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1006DA6EC()
{
  sub_100721D04(v0[13], type metadata accessor for AccessoryMetadata);
  v0[27] = v0[26];
  v1 = v0[21];
  v2 = *(&async function pointer to dispatch thunk of Peripheral.cancelConnection() + 1);
  v5 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection() + async function pointer to dispatch thunk of Peripheral.cancelConnection());
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1006DA7B4;

  return v5();
}

uint64_t sub_1006DA7B4()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1006DA9EC;
  }

  else
  {
    v3 = sub_1006DA8C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006DA8C8()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[17];
  swift_willThrow();

  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  *v5 = v0[27];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v7(v5);

  sub_10000B3A8(v5, &unk_1016A99C0, &unk_1013BB530);
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1006DA9EC()
{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v0[17];

  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  *v5 = v0[29];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v7(v5);

  sub_10000B3A8(v5, &unk_1016A99C0, &unk_1013BB530);
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1006DAB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v11 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v7[11] = v13;
  *v13 = v7;
  v13[1] = sub_1006DAC40;

  return daemon.getter();
}

uint64_t sub_1006DAC40(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for OwnerCommandService(0);
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&unk_1016B10E0, type metadata accessor for OwnerCommandService);
  *v6 = v12;
  v6[1] = sub_1006DAE1C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006DAE1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_1006DB67C;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_1006DAF38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1006DAF38()
{
  v1 = v0[10];
  v2 = enum case for ConnectUseCase.findMyActionTransient(_:);
  v3 = type metadata accessor for ConnectUseCase();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1006DB078;
  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[2];

  return sub_101217DF4(v8, v7);
}

uint64_t sub_1006DB078(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 128);
  v6 = *(*v3 + 80);
  v9 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  sub_10000B3A8(v6, &qword_101697270, &qword_10138BDD0);
  if (v2)
  {
    v7 = sub_1006DB9A4;
  }

  else
  {
    v7 = sub_1006DB1C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1006DB1C0()
{
  v26 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B7F8);
  (*(v3 + 16))(v1, v4, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v9, v10);
    v17 = sub_1000136BC(v14, v16, &v25);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching metadata for beaconId: %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v11 + 8))(v9, v10);
  }

  v18 = v0[17];
  ObjectType = swift_getObjectType();
  type metadata accessor for AccessoryMetadataManager();
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_1006DB46C;
  v22 = v0[17];
  v21 = v0[18];
  v23 = v0[3];

  return sub_1003699D4(v22, 2, v23, ObjectType, v21);
}

uint64_t sub_1006DB46C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 160);
  v8 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v9 = sub_1006DBCCC;
  }

  else
  {
    *(v6 + 176) = a2;
    *(v6 + 184) = a1;
    v9 = sub_1006DB5A0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1006DB5A0()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[17];
  v4 = v0[14];
  v6 = v0[4];
  v5 = v0[5];
  sub_100017D5C(v1, v2);
  v6(v1, v2, 0);
  sub_100016590(v1, v2);
  sub_100016590(v1, v2);
  swift_unknownObjectRelease();

  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006DB67C()
{
  v31 = v0;
  v1 = v0[12];

  v2 = v0[15];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[2];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B7F8);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v30);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v28 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error fetching metadata for beaconId: %{private,mask.hash}s error: %{public}@", v14, 0x20u);
    sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[4];
  v20 = v0[5];
  sub_1003FD838();
  swift_allocError();
  *v22 = 4;
  v21();

  v24 = v0[9];
  v23 = v0[10];
  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1006DB9A4()
{
  v31 = v0;
  v1 = v0[14];

  v2 = v0[19];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v0[2];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B7F8);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[7];
  v11 = v0[8];
  v13 = v0[6];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v30);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v28 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Error fetching metadata for beaconId: %{private,mask.hash}s error: %{public}@", v14, 0x20u);
    sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v21 = v0[4];
  v20 = v0[5];
  sub_1003FD838();
  swift_allocError();
  *v22 = 4;
  v21();

  v24 = v0[9];
  v23 = v0[10];
  v25 = v0[8];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1006DBCCC()
{
  v32 = v0;
  v1 = v0[17];
  v2 = v0[14];
  swift_unknownObjectRelease();

  v3 = v0[21];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v7 = v0[2];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B7F8);
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_1000136BC(v16, v18, &v31);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    *v29 = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error fetching metadata for beaconId: %{private,mask.hash}s error: %{public}@", v15, 0x20u);
    sub_10000B3A8(v29, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v30);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[4];
  v21 = v0[5];
  sub_1003FD838();
  swift_allocError();
  *v23 = 4;
  v22();

  v25 = v0[9];
  v24 = v0[10];
  v26 = v0[8];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1006DC000(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1006DC094;

  return daemon.getter();
}

uint64_t sub_1006DC094(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for WildModeAssociationRecordsPublisher();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&unk_1016B10D0, type metadata accessor for WildModeAssociationRecordsPublisher);
  *v6 = v12;
  v6[1] = sub_1006DC270;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1006DC270(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = a1;

  v7 = *(v4 + 40);
  if (v1)
  {

    v8 = sub_1006DC3C8;
    v9 = 0;
  }

  else
  {

    v8 = sub_1006DC5A8;
    v9 = a1;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_1006DC3C8()
{
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B7F8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error on publishWildModeRecords, no WildModeAssociationRecordsPublisher object!", v4, 2u);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = type metadata accessor for Daemon.Error();
  sub_100003E8C(&qword_101697368, &type metadata accessor for Daemon.Error);
  v8 = swift_allocError();
  *v9 = 0xD000000000000023;
  v9[1] = 0x800000010135D7E0;
  (*(*(v7 - 8) + 104))(v9, enum case for Daemon.Error.missingService(_:), v7);
  v6(v8, 1);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1006DC5A8()
{
  v1 = *(*(v0 + 56) + 136);
  v2 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v6 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1006DC674;
  v4 = *(v0 + 56);

  return v6(&unk_1013DBEB0, v4);
}

uint64_t sub_1006DC674()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1006DC82C;
  }

  else
  {
    v7 = *(v2 + 56);

    v6 = sub_1006DC7B4;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1006DC7B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  (*(v0 + 16))(0, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006DC82C()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_1006DC894, 0, 0);
}

uint64_t sub_1006DC894()
{
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  swift_errorRetain();
  v4(v1, 1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006DC930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*v3 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_tagCommandManager);
  sub_100892134(a1);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  Future.addSuccess(block:)();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  Future.addFailure(block:)();
}

uint64_t sub_1006DCA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 isInternalBuild];

  if (!v8)
  {
    return a4(0);
  }

  v9 = type metadata accessor for Transaction();
  __chkstk_darwin(v9);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1006DCB4C()
{
  v1 = *(*v0 + 280);
  type metadata accessor for Transaction();
  return static Transaction.named<A>(_:with:)();
}

uint64_t SPBeaconObservationType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6E6E6F637369642ELL;
      }

      goto LABEL_8;
    }

    return 0xD000000000000016;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x7463656E6E6F632ELL;
      }

LABEL_8:
      _StringGuts.grow(_:)(47);

      v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v2);

      return 0xD00000000000002DLL;
    }

    return 0x6E776F6E6B6E752ELL;
  }
}

Swift::Int sub_1006DCE24(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B321B0(v2);
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
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
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
    sub_1006EA1E4(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1006DCF58()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

id sub_1006DD0B4(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v11 = &v36 - v10;
  v12 = type metadata accessor for OwnedBeaconGroup(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v40 = v4;
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saving record. Disk First? %{BOOL}d", v19, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v26 = result;
    v27 = [result aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v24) & 1) == 0))
    {

      return sub_1006E4FAC(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v15, type metadata accessor for OwnedBeaconGroup);
      v28 = *(v40 + 168);
      sub_1009F10FC(v15);
      v37 = a3;
      v38 = a4;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record. Calling completion.", v31, 2u);
      }

      sub_100721C9C(a1, v11, type metadata accessor for OwnedBeaconGroup);
      swift_storeEnumTagMultiPayload();
      v37(v11);
      sub_10000B3A8(v11, &qword_101699398, &qword_101391900);
      if (((v27 != 0) & ~v24) != 0)
      {
        v35 = type metadata accessor for Transaction();
        __chkstk_darwin(v35);
        *(&v36 - 4) = v40;
        *(&v36 - 3) = a1;
        *(&v36 - 2) = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v24;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }
      }

      return sub_100721D04(v15, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DD754(uint64_t a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v42 = a3;
  v41 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v9 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v11 = v40 - v10;
  v12 = type metadata accessor for BeaconNamingRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v43 = a1;
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saving record. Disk First? %{BOOL}d", v19, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v26 = result;
    v27 = [result aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v24) & 1) == 0))
    {
      v31 = v42;
      v30 = v43;

      return sub_1006E547C(v30, v31, a4);
    }

    else
    {
      sub_100721C9C(v43, v15, type metadata accessor for BeaconNamingRecord);
      v28 = *(v5 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v29 = *(v5 + 168);
      sub_1009F0C24(v15);
      v40[1] = a4;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Saved LocalStorageBacked record. Calling completion.", v34, 2u);
      }

      v35 = v43;
      sub_100721C9C(v43, v11, type metadata accessor for BeaconNamingRecord);
      swift_storeEnumTagMultiPayload();
      v42(v11);
      sub_10000B3A8(v11, &qword_1016A7808, &qword_1013D6750);
      if (((v27 != 0) & ~v24) != 0)
      {
        v39 = type metadata accessor for Transaction();
        __chkstk_darwin(v39);
        v40[-4] = v5;
        v40[-3] = v35;
        v40[-2] = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 67109376;
          *(v38 + 4) = v24;
          *(v38 + 8) = 1024;
          *(v38 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v38, 0xEu);
        }
      }

      return sub_100721D04(v15, type metadata accessor for BeaconNamingRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DDE30(uint64_t a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v42 = a3;
  v41 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v9 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v11 = v40 - v10;
  v12 = type metadata accessor for OwnedBeaconRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v43 = a1;
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saving record. Disk First? %{BOOL}d", v19, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v26 = result;
    v27 = [result aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v24) & 1) == 0))
    {
      v31 = v42;
      v30 = v43;

      return sub_1006E5214(v30, v31, a4);
    }

    else
    {
      sub_100721C9C(v43, v15, type metadata accessor for OwnedBeaconRecord);
      v28 = *(v5 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v29 = *(v5 + 168);
      sub_1009F15D4(v15);
      v40[1] = a4;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Saved LocalStorageBacked record. Calling completion.", v34, 2u);
      }

      v35 = v43;
      sub_100721C9C(v43, v11, type metadata accessor for OwnedBeaconRecord);
      swift_storeEnumTagMultiPayload();
      v42(v11);
      sub_10000B3A8(v11, &unk_1016B15A0, &qword_1013A0900);
      if (((v27 != 0) & ~v24) != 0)
      {
        v39 = type metadata accessor for Transaction();
        __chkstk_darwin(v39);
        v40[-4] = v5;
        v40[-3] = v35;
        v40[-2] = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 67109376;
          *(v38 + 4) = v24;
          *(v38 + 8) = 1024;
          *(v38 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v38, 0xEu);
        }
      }

      return sub_100721D04(v15, type metadata accessor for OwnedBeaconRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DE50C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_1000BC4D4(&qword_1016A7810, &qword_1013B66C0);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v11 = &v36 - v10;
  v12 = type metadata accessor for OwnedDeviceKeyRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v40 = v4;
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saving record. Disk First? %{BOOL}d", v19, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v26 = result;
    v27 = [result aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v24) & 1) == 0))
    {

      return sub_1006E56E4(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v15, type metadata accessor for OwnedDeviceKeyRecord);
      v28 = *(v40 + 168);
      sub_1009EFD9C(v15);
      v37 = a3;
      v38 = a4;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record. Calling completion.", v31, 2u);
      }

      sub_100721C9C(a1, v11, type metadata accessor for OwnedDeviceKeyRecord);
      swift_storeEnumTagMultiPayload();
      v37(v11);
      sub_10000B3A8(v11, &qword_1016A7810, &qword_1013B66C0);
      if (((v27 != 0) & ~v24) != 0)
      {
        v35 = type metadata accessor for Transaction();
        __chkstk_darwin(v35);
        *(&v36 - 4) = v40;
        *(&v36 - 3) = a1;
        *(&v36 - 2) = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v24;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }
      }

      return sub_100721D04(v15, type metadata accessor for OwnedDeviceKeyRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DEBAC(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v11 = &v36 - v10;
  v12 = type metadata accessor for LostModeRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v40 = v4;
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saving record. Disk First? %{BOOL}d", v19, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v26 = result;
    v27 = [result aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v24) & 1) == 0))
    {

      return sub_1006E594C(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v15, type metadata accessor for LostModeRecord);
      v28 = *(v40 + 168);
      sub_1009F0274(v15);
      v37 = a3;
      v38 = a4;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record. Calling completion.", v31, 2u);
      }

      sub_100721C9C(a1, v11, type metadata accessor for LostModeRecord);
      swift_storeEnumTagMultiPayload();
      v37(v11);
      sub_10000B3A8(v11, &qword_1016B1840, &qword_1013B68F0);
      if (((v27 != 0) & ~v24) != 0)
      {
        v35 = type metadata accessor for Transaction();
        __chkstk_darwin(v35);
        *(&v36 - 4) = v40;
        *(&v36 - 3) = a1;
        *(&v36 - 2) = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v24;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }
      }

      return sub_100721D04(v15, type metadata accessor for LostModeRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DF24C(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v11 = &v36 - v10;
  v12 = type metadata accessor for ShareRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v40 = v4;
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saving record. Disk First? %{BOOL}d", v19, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v26 = result;
    v27 = [result aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v24) & 1) == 0))
    {

      return sub_1006E5BB4(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v15, type metadata accessor for ShareRecord);
      v28 = *(v40 + 168);
      sub_1009F0E90(v15);
      v37 = a3;
      v38 = a4;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record. Calling completion.", v31, 2u);
      }

      sub_100721C9C(a1, v11, type metadata accessor for ShareRecord);
      swift_storeEnumTagMultiPayload();
      v37(v11);
      sub_10000B3A8(v11, &unk_1016B1650, &unk_1013B1110);
      if (((v27 != 0) & ~v24) != 0)
      {
        v35 = type metadata accessor for Transaction();
        __chkstk_darwin(v35);
        *(&v36 - 4) = v40;
        *(&v36 - 3) = a1;
        *(&v36 - 2) = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v24;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }
      }

      return sub_100721D04(v15, type metadata accessor for ShareRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DF8EC(uint64_t a1, int a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v42 = a3;
  v41 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v9 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v11 = v40 - v10;
  v12 = type metadata accessor for SharedBeaconRecord(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v43 = a1;
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saving record. Disk First? %{BOOL}d", v19, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v26 = result;
    v27 = [result aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v24) & 1) == 0))
    {
      v31 = v42;
      v30 = v43;

      return sub_1006E5E1C(v30, v31, a4);
    }

    else
    {
      sub_100721C9C(v43, v15, type metadata accessor for SharedBeaconRecord);
      v28 = *(v5 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      v29 = *(v5 + 168);
      sub_1009F1368(v15);
      v40[1] = a4;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Saved LocalStorageBacked record. Calling completion.", v34, 2u);
      }

      v35 = v43;
      sub_100721C9C(v43, v11, type metadata accessor for SharedBeaconRecord);
      swift_storeEnumTagMultiPayload();
      v42(v11);
      sub_10000B3A8(v11, &qword_101699BC8, &qword_1013926D8);
      if (((v27 != 0) & ~v24) != 0)
      {
        v39 = type metadata accessor for Transaction();
        __chkstk_darwin(v39);
        v40[-4] = v5;
        v40[-3] = v35;
        v40[-2] = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 67109376;
          *(v38 + 4) = v24;
          *(v38 + 8) = 1024;
          *(v38 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v38, 0xEu);
        }
      }

      return sub_100721D04(v15, type metadata accessor for SharedBeaconRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006DFFC8(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v11 = &v36 - v10;
  v12 = type metadata accessor for SafeLocation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v40 = v4;
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saving record. Disk First? %{BOOL}d", v19, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v26 = result;
    v27 = [result aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v24) & 1) == 0))
    {

      return sub_1006E6084(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v15, type metadata accessor for SafeLocation);
      v28 = *(v40 + 168);
      sub_1009F04E0(v15);
      v37 = a3;
      v38 = a4;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record. Calling completion.", v31, 2u);
      }

      sub_100721C9C(a1, v11, type metadata accessor for SafeLocation);
      swift_storeEnumTagMultiPayload();
      v37(v11);
      sub_10000B3A8(v11, &unk_1016B1480, &qword_1013B6890);
      if (((v27 != 0) & ~v24) != 0)
      {
        v35 = type metadata accessor for Transaction();
        __chkstk_darwin(v35);
        *(&v36 - 4) = v40;
        *(&v36 - 3) = a1;
        *(&v36 - 2) = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v24;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }
      }

      return sub_100721D04(v15, type metadata accessor for SafeLocation);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006E0668(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v11 = &v36 - v10;
  v12 = type metadata accessor for LeashRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v40 = v4;
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saving record. Disk First? %{BOOL}d", v19, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v26 = result;
    v27 = [result aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v24) & 1) == 0))
    {

      return sub_1006E62EC(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v15, type metadata accessor for LeashRecord);
      v28 = *(v40 + 168);
      sub_1009F074C(v15);
      v37 = a3;
      v38 = a4;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record. Calling completion.", v31, 2u);
      }

      sub_100721C9C(a1, v11, type metadata accessor for LeashRecord);
      swift_storeEnumTagMultiPayload();
      v37(v11);
      sub_10000B3A8(v11, &qword_1016A78E0, &qword_1013B6888);
      if (((v27 != 0) & ~v24) != 0)
      {
        v35 = type metadata accessor for Transaction();
        __chkstk_darwin(v35);
        *(&v36 - 4) = v40;
        *(&v36 - 3) = a1;
        *(&v36 - 2) = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v24;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }
      }

      return sub_100721D04(v15, type metadata accessor for LeashRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1006E0D08(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v39 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v11 = &v36 - v10;
  v12 = type metadata accessor for KeyAlignmentRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v40 = v4;
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Saving record. Disk First? %{BOOL}d", v19, 8u);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C218;
  v21 = [objc_opt_self() sharedInstance];
  v22 = [v21 isInternalBuild];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [v20 BOOLForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v26 = result;
    v27 = [result aa_primaryAppleAccount];

    if (v27 && (v27, ((a2 | v24) & 1) == 0))
    {

      return sub_1006E6554(a1, a3, a4);
    }

    else
    {
      sub_100721C9C(a1, v15, type metadata accessor for KeyAlignmentRecord);
      v28 = *(v40 + 168);
      sub_1009F0008(v15);
      v37 = a3;
      v38 = a4;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Saved LocalStorageBacked record. Calling completion.", v31, 2u);
      }

      sub_100721C9C(a1, v11, type metadata accessor for KeyAlignmentRecord);
      swift_storeEnumTagMultiPayload();
      v37(v11);
      sub_10000B3A8(v11, &unk_1016B1690, &qword_1013D6800);
      if (((v27 != 0) & ~v24) != 0)
      {
        v35 = type metadata accessor for Transaction();
        __chkstk_darwin(v35);
        *(&v36 - 4) = v40;
        *(&v36 - 3) = a1;
        *(&v36 - 2) = v15;
        static Transaction.named<A>(_:with:)();
      }

      else
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 67109376;
          *(v34 + 4) = v24;
          *(v34 + 8) = 1024;
          *(v34 + 10) = v27 != 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v34, 0xEu);
        }
      }

      return sub_100721D04(v15, type metadata accessor for KeyAlignmentRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1006E13A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for OwnedBeaconGroup(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for OwnedBeaconGroup);
  sub_100721C9C(a4, v10, type metadata accessor for OwnedBeaconGroup);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for OwnedBeaconGroup);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for OwnedBeaconGroup);

  sub_1006DD0B4(v19, 0, sub_1006FE4FC, v22);
}

uint64_t sub_1006E163C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for OwnedBeaconRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for OwnedBeaconRecord);
  sub_100721C9C(a4, v10, type metadata accessor for OwnedBeaconRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for OwnedBeaconRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for OwnedBeaconRecord);

  sub_1006DDE30(v19, 0, sub_100717734, v22);
}

uint64_t sub_1006E18D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for BeaconNamingRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for BeaconNamingRecord);
  sub_100721C9C(a4, v10, type metadata accessor for BeaconNamingRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for BeaconNamingRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for BeaconNamingRecord);

  sub_1006DD754(v19, 0, sub_100717630, v22);
}

uint64_t sub_1006E1B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for OwnedDeviceKeyRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for OwnedDeviceKeyRecord);
  sub_100721C9C(a4, v10, type metadata accessor for OwnedDeviceKeyRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for OwnedDeviceKeyRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for OwnedDeviceKeyRecord);

  sub_1006DE50C(v19, 0, sub_100717854, v22);
}

uint64_t sub_1006E1DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for LostModeRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for LostModeRecord);
  sub_100721C9C(a4, v10, type metadata accessor for LostModeRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for LostModeRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for LostModeRecord);

  sub_1006DEBAC(v19, 0, sub_100721300, v22);
}

uint64_t sub_1006E208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for ShareRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for ShareRecord);
  sub_100721C9C(a4, v10, type metadata accessor for ShareRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for ShareRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for ShareRecord);

  sub_1006DF24C(v19, 0, sub_10071E318, v22);
}

uint64_t sub_1006E2320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for SharedBeaconRecord);
  sub_100721C9C(a4, v10, type metadata accessor for SharedBeaconRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for SharedBeaconRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for SharedBeaconRecord);

  sub_1006DF8EC(v19, 0, sub_100720D6C, v22);
}

uint64_t sub_1006E25B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for SafeLocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for SafeLocation);
  sub_100721C9C(a4, v10, type metadata accessor for SafeLocation);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for SafeLocation);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for SafeLocation);

  sub_1006DFFC8(v19, 0, sub_100720B2C, v22);
}

uint64_t sub_1006E2848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for LeashRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for LeashRecord);
  sub_100721C9C(a4, v10, type metadata accessor for LeashRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for LeashRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for LeashRecord);

  sub_1006E0668(v19, 0, sub_100720980, v22);
}

uint64_t sub_1006E2ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v6 = type metadata accessor for KeyAlignmentRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177BA08);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Saving record to cloud.", v16, 2u);
  }

  sub_100721C9C(a3, v12, type metadata accessor for KeyAlignmentRecord);
  sub_100721C9C(a4, v10, type metadata accessor for KeyAlignmentRecord);
  v17 = *(v7 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = a3;
  v20 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v17 + v20 + 8) & ~v17;
  v22 = swift_allocObject();
  *(v22 + 16) = v24;
  sub_10002AB74(v12, v22 + v18, type metadata accessor for KeyAlignmentRecord);
  *(v22 + v20) = v25;
  sub_10002AB74(v10, v22 + v21, type metadata accessor for KeyAlignmentRecord);

  sub_1006E0D08(v19, 0, sub_100717A00, v22);
}

void sub_1006E2D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for OwnedBeaconRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v39 - v14);
  Transaction.capture()();
  sub_1000D2A70(a1, v15, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BA08);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39[1] = v16;
      v40 = v21;
      *v20 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000136BC(v22, v23, &v40);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Saving to cloud failed. Saving the status to disk record. %{public}s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    v25 = *(a4 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v26 = *(a4 + 168);
    sub_1009F15D4(a5);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Saved LocalStorageBacked record", v35, 2u);
    }
  }

  else
  {
    sub_10002AB74(v15, v11, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177BA08);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Saved to cloud. Updating local record", v30, 2u);
    }

    v31 = *(a4 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v32 = *(a4 + 168);
    sub_1009F15D4(v11);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Saved LocalStorageBacked record", v38, 2u);
    }

    sub_100721D04(v11, type metadata accessor for OwnedBeaconRecord);
  }
}

void sub_1006E3470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for BeaconNamingRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v39 - v14);
  Transaction.capture()();
  sub_1000D2A70(a1, v15, &qword_1016A7808, &qword_1013D6750);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BA08);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39[1] = v16;
      v40 = v21;
      *v20 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000136BC(v22, v23, &v40);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Saving to cloud failed. Saving the status to disk record. %{public}s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    v25 = *(a4 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v26 = *(a4 + 168);
    sub_1009F0C24(a5);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Saved LocalStorageBacked record", v35, 2u);
    }
  }

  else
  {
    sub_10002AB74(v15, v11, type metadata accessor for BeaconNamingRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177BA08);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Saved to cloud. Updating local record", v30, 2u);
    }

    v31 = *(a4 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v32 = *(a4 + 168);
    sub_1009F0C24(v11);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Saved LocalStorageBacked record", v38, 2u);
    }

    sub_100721D04(v11, type metadata accessor for BeaconNamingRecord);
  }
}

void sub_1006E3B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8, uint64_t (*a9)(void), void (*a10)(uint64_t), uint64_t (*a11)(void))
{
  v16 = a10;
  v17 = a6(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v45 - v19;
  v21 = sub_1000BC4D4(a7, a8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (v45 - v23);
  Transaction.capture()();
  sub_1000D2A70(a1, v24, a7, a8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177BA08);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      v45[1] = v25;
      v46 = v45[0];
      *v29 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v30 = String.init<A>(describing:)();
      v32 = sub_1000136BC(v30, v31, &v46);

      *(v29 + 4) = v32;
      v16 = a10;
      _os_log_impl(&_mh_execute_header, v27, v28, "Saving to cloud failed. Saving the status to disk record. %{public}s", v29, 0xCu);
      sub_100007BAC(v45[0]);
    }

    v33 = *(a4 + 168);
    v16(a5);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Saved LocalStorageBacked record", v41, 2u);
    }
  }

  else
  {
    sub_10002AB74(v24, v20, a9);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177BA08);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Saved to cloud. Updating local record", v37, 2u);
    }

    v38 = *(a4 + 168);
    a10(v20);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Saved LocalStorageBacked record", v44, 2u);
    }

    sub_100721D04(v20, a11);
  }
}

void sub_1006E4214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v39 - v14);
  Transaction.capture()();
  sub_1000D2A70(a1, v15, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BA08);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39[1] = v16;
      v40 = v21;
      *v20 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000136BC(v22, v23, &v40);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Saving to cloud failed. Saving the status to disk record. %{public}s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    v25 = *(a4 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v26 = *(a4 + 168);
    sub_1009F1368(a5);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Saved LocalStorageBacked record", v35, 2u);
    }
  }

  else
  {
    sub_10002AB74(v15, v11, type metadata accessor for SharedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177BA08);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Saved to cloud. Updating local record", v30, 2u);
    }

    v31 = *(a4 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v32 = *(a4 + 168);
    sub_1009F1368(v11);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Saved LocalStorageBacked record", v38, 2u);
    }

    sub_100721D04(v11, type metadata accessor for SharedBeaconRecord);
  }
}

void sub_1006E4914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for KeyAlignmentRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v37 - v14);
  Transaction.capture()();
  sub_1000D2A70(a1, v15, &unk_1016B1690, &qword_1013D6800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000076D4(v17, qword_10177BA08);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[1] = v16;
      v38 = v21;
      *v20 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v22 = String.init<A>(describing:)();
      v24 = sub_1000136BC(v22, v23, &v38);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Saving to cloud failed. Saving the status to disk record. %{public}s", v20, 0xCu);
      sub_100007BAC(v21);
    }

    v25 = *(a4 + 168);
    sub_1009F0008(a5);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Saved LocalStorageBacked record", v33, 2u);
    }
  }

  else
  {
    sub_10002AB74(v15, v11, type metadata accessor for KeyAlignmentRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177BA08);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Saved to cloud. Updating local record", v29, 2u);
    }

    v30 = *(a4 + 168);
    sub_1009F0008(v11);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Saved LocalStorageBacked record", v36, 2u);
    }

    sub_100721D04(v11, type metadata accessor for KeyAlignmentRecord);
  }
}

uint64_t sub_1006E4FAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_1011218E0(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  v13 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconGroup);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_10002AB74(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for OwnedBeaconGroup);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E5214(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OwnedBeaconRecord();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101121B40(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  v13 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_10002AB74(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for OwnedBeaconRecord);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E547C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BeaconNamingRecord();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101121DD0(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  v13 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeaconNamingRecord);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_10002AB74(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for BeaconNamingRecord);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E56E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OwnedDeviceKeyRecord();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101122740(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  v13 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedDeviceKeyRecord);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_10002AB74(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for OwnedDeviceKeyRecord);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E594C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LostModeRecord();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_1011217C0(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  v13 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LostModeRecord);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_10002AB74(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LostModeRecord);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E5BB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ShareRecord();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101121490(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  v13 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareRecord);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_10002AB74(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ShareRecord);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E5E1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SharedBeaconRecord(0);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101122288(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  v13 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedBeaconRecord);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_10002AB74(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SharedBeaconRecord);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E6084(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SafeLocation();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101121764(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  v13 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SafeLocation);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_10002AB74(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SafeLocation);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E62EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LeashRecord();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_101121434(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  v13 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeashRecord);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_10002AB74(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LeashRecord);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E6554(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for KeyAlignmentRecord();
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = objc_autoreleasePoolPush();
  sub_10112202C(a1);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  v13 = *(v4 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_100FD7F1C(v12);

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  Future.addFailure(block:)();

  sub_100721C9C(a1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for KeyAlignmentRecord);
  v15 = (*(v20 + 80) + 24) & ~*(v20 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_10002AB74(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for KeyAlignmentRecord);
  v17 = (v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = a2;
  v17[1] = a3;

  Future.addSuccess(block:)();
}

uint64_t sub_1006E67BC(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v17[1] = a3;
  v18 = a2;
  v8 = sub_1000BC4D4(a4, a5);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (v17 - v10);
  static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  v19 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v13 = String.init<A>(describing:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100008C00();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  os_log(_:dso:log:_:_:)();

  *v11 = a1;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v18(v11);
  return sub_10000B3A8(v11, a4, a5);
}

uint64_t sub_1006E6984(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)();

  sub_100518A90(v15, v13);
  v16 = v21;
  v17 = *(v21 + 72);
  __chkstk_darwin(v18);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v13, v9, type metadata accessor for OwnedBeaconGroup);
  swift_storeEnumTagMultiPayload();
  v24(v9);
  sub_10000B3A8(v9, &qword_101699398, &qword_101391900);
  sub_100A8375C();
  return sub_100721D04(v13, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_1006E6D70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for OwnedBeaconRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)();

  sub_100D5E184(v15, v13);
  v16 = v21;
  v17 = *(v21 + 72);
  __chkstk_darwin(v18);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v13, v9, type metadata accessor for OwnedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  v24(v9);
  sub_10000B3A8(v9, &unk_1016B15A0, &qword_1013A0900);
  sub_100A8375C();
  return sub_100721D04(v13, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_1006E715C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for BeaconNamingRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)();

  sub_100DE08D0(v15, v13);
  v16 = v21;
  v17 = *(v21 + 72);
  __chkstk_darwin(v18);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v13, v9, type metadata accessor for BeaconNamingRecord);
  swift_storeEnumTagMultiPayload();
  v24(v9);
  sub_10000B3A8(v9, &qword_1016A7808, &qword_1013D6750);
  sub_100A8375C();
  return sub_100721D04(v13, type metadata accessor for BeaconNamingRecord);
}

uint64_t sub_1006E7548(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_1016A7810, &qword_1013B66C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for OwnedDeviceKeyRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)();

  sub_101103E74(v15, v13);
  v16 = v21;
  v17 = *(v21 + 72);
  __chkstk_darwin(v18);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v13, v9, type metadata accessor for OwnedDeviceKeyRecord);
  swift_storeEnumTagMultiPayload();
  v24(v9);
  sub_10000B3A8(v9, &qword_1016A7810, &qword_1013B66C0);
  sub_100A8375C();
  return sub_100721D04(v13, type metadata accessor for OwnedDeviceKeyRecord);
}

uint64_t sub_1006E7934(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_1016B1840, &qword_1013B68F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for LostModeRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)();

  sub_100E7815C(v15, v13);
  v16 = v21;
  v17 = *(v21 + 72);
  __chkstk_darwin(v18);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v13, v9, type metadata accessor for LostModeRecord);
  swift_storeEnumTagMultiPayload();
  v24(v9);
  sub_10000B3A8(v9, &qword_1016B1840, &qword_1013B68F0);
  sub_100A8375C();
  return sub_100721D04(v13, type metadata accessor for LostModeRecord);
}

uint64_t sub_1006E7D20(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ShareRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)();

  sub_1001547CC(v15, v13);
  v16 = v21;
  v17 = *(v21 + 72);
  __chkstk_darwin(v18);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v13, v9, type metadata accessor for ShareRecord);
  swift_storeEnumTagMultiPayload();
  v24(v9);
  sub_10000B3A8(v9, &unk_1016B1650, &unk_1013B1110);
  sub_100A8375C();
  return sub_100721D04(v13, type metadata accessor for ShareRecord);
}

uint64_t sub_1006E810C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)();

  v16 = sub_1011D5D0C(v15, v13);
  v17 = v21;
  v18 = *(v21 + 72);
  __chkstk_darwin(v16);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v17;
  *(&v20 - 2) = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v13, v9, type metadata accessor for SharedBeaconRecord);
  swift_storeEnumTagMultiPayload();
  v24(v9);
  sub_10000B3A8(v9, &qword_101699BC8, &qword_1013926D8);
  sub_100A8375C();
  return sub_100721D04(v13, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_1006E84F8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&unk_1016B1480, &qword_1013B6890);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for SafeLocation();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)();

  sub_100EE51B8(v15, v13);
  v16 = v21;
  v17 = *(v21 + 72);
  __chkstk_darwin(v18);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v13, v9, type metadata accessor for SafeLocation);
  swift_storeEnumTagMultiPayload();
  v24(v9);
  sub_10000B3A8(v9, &unk_1016B1480, &qword_1013B6890);
  sub_100A8375C();
  return sub_100721D04(v13, type metadata accessor for SafeLocation);
}

uint64_t sub_1006E88E4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&qword_1016A78E0, &qword_1013B6888);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for LeashRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)();

  sub_101251FDC(v15, v13);
  v16 = v21;
  v17 = *(v21 + 72);
  __chkstk_darwin(v18);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v13, v9, type metadata accessor for LeashRecord);
  swift_storeEnumTagMultiPayload();
  v24(v9);
  sub_10000B3A8(v9, &qword_1016A78E0, &qword_1013B6888);
  sub_100A8375C();
  return sub_100721D04(v13, type metadata accessor for LeashRecord);
}

uint64_t sub_1006E8CD0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v20 = a3;
  v21 = a2;
  v6 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for KeyAlignmentRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  v22 = xmmword_101385D80;
  *(v14 + 16) = xmmword_101385D80;
  *(v14 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v14 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr);
  *(v14 + 32) = a1;
  v15 = a1;
  os_log(_:dso:log:_:_:)();

  sub_100150FC8(v15, v13);
  v16 = v21;
  v17 = *(v21 + 72);
  __chkstk_darwin(v18);
  *(&v20 - 4) = v20;
  *(&v20 - 3) = v16;
  *(&v20 - 2) = v13;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100721C9C(v13, v9, type metadata accessor for KeyAlignmentRecord);
  swift_storeEnumTagMultiPayload();
  v24(v9);
  sub_10000B3A8(v9, &unk_1016B1690, &qword_1013D6800);
  sub_100A8375C();
  return sub_100721D04(v13, type metadata accessor for KeyAlignmentRecord);
}

void sub_1006E90BC(uint64_t *a1, char a2, uint64_t (*a3)(), uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v52 = a5;
  v53 = a6;
  v54 = a1;
  v49 = a3;
  v50 = a4;
  v47 = sub_1000BC4D4(&qword_1016A7808, &qword_1013D6750);
  v7 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v48 = &v43 - v8;
  v9 = type metadata accessor for BeaconNamingRecord();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v12 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v43 - v13;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  v16 = v15;
  v43 = xmmword_101385D80;
  *(v15 + 16) = xmmword_101385D80;
  if (a2)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (a2)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  v44 = v14;
  os_log(_:dso:log:_:_:)();

  v19 = objc_autoreleasePoolPush();
  v20 = v54;
  sub_101121DD0(v54);
  if (a2)
  {
    v22 = v21;
    objc_autoreleasePoolPop(v19);
    v55[0] = v22;
    v23 = v46;
    sub_100721C9C(v20, v46, type metadata accessor for BeaconNamingRecord);
    (v49)(v23);
    sub_1006E9E68(v55, v23);
    v24 = v51;
    v25 = *(v51 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v26 = *(v24 + 168);
    sub_1009F0C24(v23);
    QueueSynchronizer.conditionalSync<A>(_:)();
    sub_100A8306C(8);
    v40 = v48;
    sub_100721C9C(v23, v48, type metadata accessor for BeaconNamingRecord);
    swift_storeEnumTagMultiPayload();
    v52(v40);
    sub_10000B3A8(v40, &qword_1016A7808, &qword_1013D6750);
    v41 = type metadata accessor for Transaction();
    __chkstk_darwin(v41);
    *(&v43 - 4) = v24;
    *(&v43 - 3) = v55;
    *(&v43 - 2) = v42;
    static Transaction.named<A>(_:with:)();
    sub_100721D04(v23, type metadata accessor for BeaconNamingRecord);
  }

  else
  {
    v27 = v21;
    v48 = v21;
    objc_autoreleasePoolPop(v19);
    v28 = v51;
    v29 = *(v51 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    sub_100721C9C(v20, v12, type metadata accessor for BeaconNamingRecord);
    v30 = *(v45 + 80);
    v31 = swift_allocObject();
    v32 = v50;
    *(v31 + 16) = v49;
    *(v31 + 24) = v32;
    v49 = type metadata accessor for BeaconNamingRecord;
    sub_10002AB74(v12, v31 + ((v30 + 32) & ~v30), type metadata accessor for BeaconNamingRecord);

    sub_100FDCA40(v27, sub_10071F670, v31);

    v33 = swift_allocObject();
    v34 = v52;
    v35 = v53;
    *(v33 + 16) = v52;
    *(v33 + 24) = v35;

    Future.addFailure(block:)();

    sub_100721C9C(v54, v12, type metadata accessor for BeaconNamingRecord);
    v36 = (v30 + 16) & ~v30;
    v37 = (v10 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    sub_10002AB74(v12, v38 + v36, v49);
    *(v38 + v37) = v28;
    v39 = (v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v39 = v34;
    v39[1] = v35;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_1006E9804(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v17 = a4;
  v7 = type metadata accessor for BeaconNamingRecord();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = *(a2 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v11 = v18;
  v12 = *a3;
  sub_100FDC2D8(v12, v11);

  sub_100721C9C(v17, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BeaconNamingRecord);
  v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  sub_10002AB74(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for BeaconNamingRecord);
  *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  Future.addCompletion(block:)();
}

void sub_1006E9A14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for BeaconNamingRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  Transaction.capture()();
  if (a2)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_101385D80;
    v20 = a2;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100008C00();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)();
  }

  else if (a1)
  {
    v16 = a1;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v17 = v16;
    sub_100DE08D0(v17, v11);
    v18 = *(a5 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v19 = *(a5 + 168);
    sub_1009F0C24(v11);
    sub_100721D04(v11, type metadata accessor for BeaconNamingRecord);
  }
}