void sub_100E4EA98(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v106 = &v99 - v8;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v110 = &v99 - v11;
  v12 = type metadata accessor for UUID();
  v111 = *(v12 - 8);
  v13 = *(v111 + 64);
  __chkstk_darwin(v12);
  v107 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OwnedBeaconGroup(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v116 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v104 = &v99 - v20;
  v21 = __chkstk_darwin(v19);
  v105 = &v99 - v22;
  __chkstk_darwin(v21);
  v109 = &v99 - v23;
  v24 = type metadata accessor for String.Encoding();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v114 = v16;
  v26 = type metadata accessor for Logger();
  v27 = sub_1000076D4(v26, qword_10177C418);
  sub_100017D5C(a1, a2);
  v113 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  sub_100016590(a1, a2);
  v30 = os_log_type_enabled(v28, v29);
  v117 = a3;
  v118 = v12;
  v115 = v15;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v120[0] = v32;
    *v31 = 141558275;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    static String.Encoding.utf8.getter();
    v33 = String.init(data:encoding:)();
    if (v34)
    {
      v35 = v34;
      v36 = a1;
      v37 = a2;
    }

    else
    {
      v36 = a1;
      v37 = a2;
      v33 = Data.hexString.getter();
      v35 = v38;
    }

    v39 = sub_1000136BC(v33, v35, v120);

    *(v31 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "Clean up pending pairing for %{private,mask.hash}s", v31, 0x16u);
    sub_100007BAC(v32);

    v15 = v115;
    a2 = v37;
    a1 = v36;
    a3 = v117;
  }

  else
  {
  }

  v40 = swift_allocBox();
  sub_100E6A94C(a3, v41, type metadata accessor for OwnedBeaconGroup);
  if (sub_100519780(a1, a2))
  {
    v102 = a1;
    v103 = a2;
    v42 = dispatch_group_create();
    dispatch_group_enter(v42);
    isa = v108[4].isa;
    v101 = swift_allocObject();
    *(v101 + 16) = v42;

    v108 = v42;
    static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_101385D80;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = sub_100008C00();
    *(v44 + 32) = 0x65736C6166;
    *(v44 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)();

    v45 = objc_autoreleasePoolPush();
    sub_1011218E0(a3);
    v47 = v46;
    v100 = v46;
    objc_autoreleasePoolPop(v45);
    v48 = *(isa + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    v116 = isa;
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v99 = type metadata accessor for OwnedBeaconGroup;
    v49 = v109;
    sub_100E6A94C(a3, v109, type metadata accessor for OwnedBeaconGroup);
    v50 = *(v114 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1001DA00C;
    *(v51 + 24) = v40;
    v52 = a3;
    v112 = v40;
    sub_100E6ADA4(v49, v51 + ((v50 + 32) & ~v50), type metadata accessor for OwnedBeaconGroup);

    sub_100FDCA40(v47, sub_1001DA038, v51);

    v53 = swift_allocObject();
    v54 = v101;
    *(v53 + 16) = sub_100E691D0;
    *(v53 + 24) = v54;

    Future.addFailure(block:)();

    sub_100E6A94C(v52, v49, v99);
    v55 = (v50 + 16) & ~v50;
    v56 = (v17 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    sub_100E6ADA4(v49, v57 + v55, type metadata accessor for OwnedBeaconGroup);
    *(v57 + v56) = v116;
    v58 = (v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v58 = sub_100E691D0;
    v58[1] = v54;

    Future.addSuccess(block:)();

    v59 = v108;
    OS_dispatch_group.wait()();
    v60 = v110;
    sub_100519BCC(v102, v103, v110);
    v61 = v111;
    v62 = v118;
    if ((*(v111 + 48))(v60, 1, v118) == 1)
    {

      v63 = &qword_1016980D0;
      v64 = &unk_10138F3B0;
    }

    else
    {
      v79 = v107;
      (*(v61 + 32))(v107, v60, v62);
      v60 = v106;
      sub_100AC53EC(v79, v106);
      if ((*(v114 + 48))(v60, 1, v115) != 1)
      {
        v80 = v105;
        sub_100E6ADA4(v60, v105, type metadata accessor for OwnedBeaconGroup);
        v81 = sub_100B93B5C(v80);
        if (v81)
        {
          v82 = v81;
          v83 = v104;
          sub_100E6A94C(v80, v104, type metadata accessor for OwnedBeaconGroup);
          swift_errorRetain();
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = v61;
            v87 = swift_slowAlloc();
            v120[0] = swift_slowAlloc();
            *v87 = 141558531;
            *(v87 + 4) = 1752392040;
            *(v87 + 12) = 2081;
            v88 = *(v115 + 24);
            sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
            v89 = dispatch thunk of CustomStringConvertible.description.getter();
            v90 = v83;
            v91 = v89;
            v93 = v92;
            sub_100E6A9B4(v90, type metadata accessor for OwnedBeaconGroup);
            v94 = sub_1000136BC(v91, v93, v120);

            *(v87 + 14) = v94;
            *(v87 + 22) = 2082;
            v119 = v82;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v95 = String.init<A>(describing:)();
            v97 = sub_1000136BC(v95, v96, v120);

            *(v87 + 24) = v97;
            _os_log_impl(&_mh_execute_header, v84, v85, "Failed to delete pending record %{private,mask.hash}s due to %{public}s", v87, 0x20u);
            swift_arrayDestroy();

            sub_100E6A9B4(v105, type metadata accessor for OwnedBeaconGroup);
            (*(v86 + 8))(v79, v118);
            goto LABEL_28;
          }

          sub_100E6A9B4(v83, type metadata accessor for OwnedBeaconGroup);
          v98 = v80;
        }

        else
        {

          v98 = v80;
        }

        sub_100E6A9B4(v98, type metadata accessor for OwnedBeaconGroup);
        (*(v61 + 8))(v79, v62);
        goto LABEL_28;
      }

      (*(v61 + 8))(v79, v62);

      v63 = &unk_1016AF8B0;
      v64 = &unk_1013A0700;
    }

    sub_10000B3A8(v60, v63, v64);
LABEL_28:

    return;
  }

  v65 = a3;
  v66 = v116;
  sub_100E6A94C(v65, v116, type metadata accessor for OwnedBeaconGroup);
  sub_100017D5C(a1, a2);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  sub_100016590(a1, a2);
  if (!os_log_type_enabled(v67, v68))
  {

    sub_100E6A9B4(v66, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_28;
  }

  v69 = swift_slowAlloc();
  v120[0] = swift_slowAlloc();
  *v69 = 141558531;
  *(v69 + 4) = 1752392040;
  *(v69 + 12) = 2081;
  static String.Encoding.utf8.getter();
  v70 = String.init(data:encoding:)();
  if (!v71)
  {
    v70 = Data.hexString.getter();
  }

  v72 = sub_1000136BC(v70, v71, v120);

  *(v69 + 14) = v72;
  *(v69 + 22) = 2080;
  v73 = *(v15 + 24);
  sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
  v74 = v116;
  v75 = dispatch thunk of CustomStringConvertible.description.getter();
  v77 = v76;
  sub_100E6A9B4(v74, type metadata accessor for OwnedBeaconGroup);
  v78 = sub_1000136BC(v75, v77, v120);

  *(v69 + 24) = v78;
  _os_log_impl(&_mh_execute_header, v67, v68, "Unable to unpair %{private,mask.hash}s from %s!", v69, 0x20u);
  swift_arrayDestroy();
}

void sub_100E4F89C(uint64_t a1, NSObject *a2)
{
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v35 - v13);
  sub_1000D2A70(a1, &v35 - v13, &qword_101699398, &qword_101391900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C418);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v15;
      v36 = v20;
      *v19 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000136BC(v21, v22, &v36);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to modify existing group. Error %{public}s", v19, 0xCu);
      sub_100007BAC(v20);
    }

    else
    {
    }
  }

  else
  {
    sub_100E6ADA4(v14, v10, type metadata accessor for OwnedBeaconGroup);
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v25 = sub_1000076D4(v24, qword_10177C418);
    sub_100E6A94C(v10, v8, type metadata accessor for OwnedBeaconGroup);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      v30 = *(v4 + 24);
      type metadata accessor for UUID();
      sub_100E62554(&qword_101696930, 255, &type metadata accessor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_100E6A9B4(v8, type metadata accessor for OwnedBeaconGroup);
      v34 = sub_1000136BC(v31, v33, &v36);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Successfully modified existing group %{private,mask.hash}s", v28, 0x16u);
      sub_100007BAC(v29);
    }

    else
    {

      sub_100E6A9B4(v8, type metadata accessor for OwnedBeaconGroup);
    }

    sub_1005160CC(v25);
    sub_100E6A9B4(v10, type metadata accessor for OwnedBeaconGroup);
  }

  dispatch_group_leave(a2);
}

uint64_t sub_100E4FD64(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_1016950D0 == -1)
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
  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177C418);
  sub_100017D5C(a1, a2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v14, v15))
  {
    sub_100016590(a1, a2);
LABEL_16:

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = a1;
    v24[4] = a2;
    v25 = sub_1000BC4D4(&qword_101699378, &unk_1013B60B0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_100017D5C(a1, a2);
    return Future.init(_:)();
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v17 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v17 != 2)
    {
      v18 = 0;
      goto LABEL_15;
    }

    v20 = *(a1 + 16);
    v19 = *(a1 + 24);
    v21 = __OFSUB__(v19, v20);
    v18 = v19 - v20;
    if (!v21)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v17)
  {
    v18 = BYTE6(a2);
LABEL_15:
    *(result + 4) = v18;
    v22 = result;
    sub_100016590(a1, a2);
    _os_log_impl(&_mh_execute_header, v14, v15, "didNotify data length %ld", v22, 0xCu);

    goto LABEL_16;
  }

  LODWORD(v18) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v18 = v18;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_100E50044(void (*a1)(__int128 *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v99 = a2;
  v100 = a1;
  v7 = type metadata accessor for BinaryDecodingError();
  v98 = *(v7 - 8);
  v8 = *(v98 + 64);
  __chkstk_darwin(v7);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BinaryDecoder();
  v93 = *(v11 - 8);
  v12 = *(v93 + 64);
  __chkstk_darwin(v11);
  v92 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Bit();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v94 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v86 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    LOBYTE(v109) = 11;
    v110 = 1;
    v100(&v106);
    return sub_10000B3A8(&v106, &qword_101699380, &unk_1013918F0);
  }

  v22 = Strong;
  v89 = v15;
  v90 = v14;
  v23 = *(Strong + 144);
  v24 = v22[19];
  if (v24 >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = 0xC000000000000000;
  if (v24 >> 60 != 15)
  {
    v26 = v22[19];
  }

  v104 = v25;
  v105 = v26;
  sub_10002E98C(v23, v24);
  sub_100017D5C(a4, a5);
  v97 = a4;
  sub_100ED428C(1, a4, a5, &v106);
  v27 = v106;
  Data.append(_:)();
  sub_100016590(v27, *(&v27 + 1));
  v28 = v104;
  v29 = v105;
  v30 = v22[18];
  v31 = v22[19];
  v22[18] = v104;
  v22[19] = v29;
  sub_100017D5C(v28, v29);
  sub_100006654(v30, v31);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v95 = sub_1000076D4(v32, qword_10177C418);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  v35 = os_log_type_enabled(v33, v34);
  v96 = v10;
  v88 = v20;
  v87 = v11;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v106 = v86;
    *v36 = 136315138;
    swift_beginAccess();
    v37 = a5;
    v91 = v7;
    v39 = v104;
    v38 = v105;
    sub_100017D5C(v104, v105);
    v40 = Data.description.getter();
    v42 = v41;
    v43 = v39;
    a5 = v37;
    sub_100016590(v43, v38);
    v44 = sub_1000136BC(v40, v42, &v106);

    *(v36 + 4) = v44;
    v7 = v91;
    _os_log_impl(&_mh_execute_header, v33, v34, "localReadBuffer %s", v36, 0xCu);
    sub_100007BAC(v86);
  }

  v45 = v97;
  v46 = sub_100017C08(v97, a5);
  if ((v46 & 0x100) != 0)
  {
    goto LABEL_17;
  }

  LOBYTE(v106) = v46;
  sub_1000198E8();
  v47 = FixedWidthInteger.bits()();
  if (!*(v47 + 16))
  {

LABEL_17:
    sub_100E6259C();
    v61 = swift_allocError();
    *v62 = 2;
    swift_willThrow();
    goto LABEL_18;
  }

  v91 = v7;
  v48 = v89;
  v49 = v88;
  v50 = v90;
  (*(v89 + 16))(v88, v47 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v90);

  v51 = v94;
  (*(v48 + 104))(v94, enum case for Bit.one(_:), v50);
  sub_100E62554(&qword_101698660, 255, &type metadata accessor for Bit);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v52 = *(v48 + 8);
  v52(v51, v50);
  if (v106 == LOBYTE(v101[0]))
  {
    v94 = v52;
    v53 = v49;
    v54 = v92;
    BinaryDecoder.init()();
    swift_beginAccess();
    v55 = v22[26];
    sub_1000035D0(v22 + 22, v22[25]);
    v56 = sub_1010A4E28();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_beginAccess();
    v58 = v104;
    v59 = v105;
    v102 = v56;
    v103 = AssociatedConformanceWitness;
    sub_1000280DC(v101);
    sub_100017D5C(v58, v59);
    v60 = *(AssociatedConformanceWitness + 8);
    BinaryDecoder.decode<A>(_:from:)();
    sub_100016590(v58, v59);
    v79 = v22[18];
    v80 = v22[19];
    *(v22 + 9) = xmmword_10138BBF0;
    sub_100006654(v79, v80);
    v81 = v102;
    v82 = v103;
    v83 = sub_1000035D0(v101, v102);
    *(&v107 + 1) = v81;
    v108 = *(v82 + 8);
    v109 = *(v82 + 16);
    v84 = sub_1000280DC(&v106);
    (*(*(v81 - 8) + 16))(v84, v83, v81);
    v110 = 0;
    v100(&v106);

    (*(v93 + 8))(v54, v87);
    (v94)(v53, v90);
    sub_10000B3A8(&v106, &qword_101699380, &unk_1013918F0);
    sub_100007BAC(v101);
    return sub_100016590(v104, v105);
  }

  sub_100E62554(&qword_101696E30, 255, &type metadata accessor for BinaryDecodingError);
  v77 = v91;
  v61 = swift_allocError();
  (*(v98 + 104))(v78, enum case for BinaryDecodingError.insufficientData(_:), v77);
  swift_willThrow();
  v52(v49, v50);
  v7 = v77;
LABEL_18:
  sub_100016590(v104, v105);
  *&v106 = v61;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v63 = v96;
  if (!swift_dynamicCast())
  {
LABEL_24:

    sub_100017D5C(v45, a5);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    sub_100016590(v45, a5);
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v106 = v71;
      *v70 = 136446210;
      v72 = Data.description.getter();
      v74 = sub_1000136BC(v72, v73, &v106);

      *(v70 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v68, v69, "Failed to decode data %{public}s", v70, 0xCu);
      sub_100007BAC(v71);
    }

    v75 = v22[18];
    v76 = v22[19];
    *(v22 + 9) = xmmword_10138BBF0;
    sub_100006654(v75, v76);
    *&v106 = v61;
    LOBYTE(v109) = 10;
    v110 = 1;
    swift_errorRetain();
    v100(&v106);

    return sub_10000B3A8(&v106, &qword_101699380, &unk_1013918F0);
  }

  v64 = v98;
  if ((*(v98 + 88))(v63, v7) != enum case for BinaryDecodingError.insufficientData(_:))
  {
    (*(v64 + 8))(v63, v7);
    goto LABEL_24;
  }

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "insufficientData. Keep reading...", v67, 2u);
  }
}

uint64_t sub_100E50C0C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 16);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = swift_allocObject();
    swift_weakInit();
    sub_10001F280(a1, v19);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    sub_10000A748(v19, v14 + 24);
    *(v14 + 64) = a2;
    v15 = sub_1000BC4D4(&qword_1016BCD40, &unk_1013EAD48);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();

    return Future.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E50DD0(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for BinaryEncoder();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v54 = 0;
    memset(v53, 0, sizeof(v53));
    v55 = 267;
    a1(v53);
    return sub_10000B3A8(v53, &qword_1016BCD38, &qword_1013EAD40);
  }

  v15 = Strong;
  v16 = *(Strong + 128);
  v17 = *(Strong + 136);
  v52 = a1;
  *(Strong + 128) = a1;
  *(Strong + 136) = a2;

  sub_1000BB27C(v16);
  BinaryEncoder.init()();
  v18 = a4[4];
  sub_1000035D0(a4, a4[3]);
  v19 = *(v18 + 16);
  v20 = 0;
  v21 = BinaryEncoder.encode<A>(_:)();
  v51 = v23;
  v52 = v21;
  v49 = a5;
  v24 = *(*(v15 + 64) + OBJC_IVAR____TtC12searchpartyd10Peripheral_lock);
  __chkstk_darwin(v21);
  *&v46[-16] = v25;
  v26 = v25;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  v27 = *&v53[0];
  if (__OFSUB__(*&v53[0], 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = Data.chunked(into:)();
  if (qword_1016950D0 != -1)
  {
LABEL_11:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177C418);
  swift_retain_n();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v47 = v30;
    v32 = v31;
    v48 = swift_slowAlloc();
    *&v53[0] = v48;
    *v32 = 136315906;
    v33 = Array.description.getter();
    v50 = v10;
    v35 = sub_1000136BC(v33, v34, v53);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2048;
    *(v32 + 14) = v27;
    *(v32 + 22) = 2048;
    swift_beginAccess();
    v36 = *(*(v15 + 160) + 16);

    *(v32 + 24) = v36;

    *(v32 + 32) = 2080;
    v37 = *(v15 + 160);

    v38 = Array.description.getter();
    v39 = v13;
    v41 = v40;

    v42 = v38;
    v10 = v50;
    v43 = sub_1000136BC(v42, v41, v53);
    v13 = v39;

    *(v32 + 34) = v43;
    _os_log_impl(&_mh_execute_header, v29, v47, "Enqueuing %s. MTU %ld. Current queue [%ld] %s", v32, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v44 = v49;
  v45 = sub_1001D97CC(v20);

  swift_beginAccess();
  sub_100398324(v45);
  swift_endAccess();
  sub_100E51428(v44, a4);
  sub_100016590(v52, v51);

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100E51428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchTime();
  v78 = *(v6 - 8);
  isa = v78[8].isa;
  v8 = __chkstk_darwin(v6);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v71 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v3[2];
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_4:
    v22 = type metadata accessor for Logger();
    v23 = sub_1000076D4(v22, qword_10177C418);
    sub_100017D5C(v17, v6);

    v73 = v23;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    sub_100016590(v17, v6);

    v26 = os_log_type_enabled(v24, v25);
    v79 = v17;
    v77 = a1;
    if (v26)
    {
      v27 = swift_slowAlloc();
      *&v85 = swift_slowAlloc();
      *v27 = 136315394;
      v28 = Data.hexString.getter();
      v30 = sub_1000136BC(v28, v29, &v85);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      v32 = sub_100A5AADC(v31);
      v34 = sub_1000136BC(v32, v33, &v85);

      *(v27 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "processQueuedUpdates: writing %s. Characteristic %{public}s.", v27, 0x16u);
      swift_arrayDestroy();
      v17 = v79;
    }

    v35 = swift_allocObject();
    *(v35 + 16) = 0u;
    v36 = v35 + 16;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 0;
    *(v35 + 56) = 267;
    v37 = dispatch_group_create();
    dispatch_group_enter(v37);
    v76 = v6;
    *&v85 = sub_100A59B98(v17, v6);
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    *(v38 + 24) = v37;
    v75 = v35;

    v39 = v37;
    sub_1000BC4D4(&qword_1016C4520, &unk_1013B6090);
    sub_1000041A4(&qword_101699348, &qword_1016C4520, &unk_1013B6090);
    Publisher.oneshot(_:)();

    static DispatchTime.now()();
    + infix(_:_:)();
    v40 = v78[1].isa;
    v41 = v74;
    v40(v10, v74);
    v78 = v39;
    OS_dispatch_group.wait(timeout:)();
    v40(v12, v41);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Timed out waiting for writeFuture", v44, 2u);
      }
    }

    swift_beginAccess();
    sub_1000D2A70(v36, &v85, &qword_1016B1CA0, &qword_1013918C0);
    if ((v87 & 1) == 0)
    {

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v81[0] = v64;
        *v63 = 134218242;
        *(v63 + 4) = *(v3[20] + 16);

        *(v63 + 12) = 2080;
        v65 = v3[20];

        v66 = Array.description.getter();
        v68 = v67;

        v69 = sub_1000136BC(v66, v68, v81);

        *(v63 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v61, v62, "writeFuture success. writeQueue [%ld] %s", v63, 0x16u);
        sub_100007BAC(v64);
      }

      else
      {
      }

      v70 = v76;
      sub_100E51428(v77, v72);

      sub_100016590(v79, v70);
    }

    v83 = v85;
    v84[0] = *v86;
    *(v84 + 9) = *&v86[9];
    sub_100101AA8(&v83, v81);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v76;
    if (v47)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v80 = v50;
      *v49 = 136446210;
      v51 = sub_1013181BC();
      v53 = v52;
      sub_100101B04(v81);
      v54 = sub_1000136BC(v51, v53, &v80);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "writeFuture error: %{public}s", v49, 0xCu);
      sub_100007BAC(v50);

      v55 = v3[16];
      if (v55)
      {
LABEL_13:
        v56 = v3[17];
        sub_100101B58();
        v57 = swift_allocError();
        sub_100101AA8(&v83, v58);
        v81[0] = v57;
        v82 = 256;

        v55(v81);
        sub_1000BB27C(v55);

        sub_100016590(v79, v48);
        sub_10000B3A8(v81, &qword_1016BCD38, &qword_1013EAD40);
LABEL_20:
        sub_100101B04(&v83);
      }
    }

    else
    {

      sub_100101B04(v81);
      v55 = v3[16];
      if (v55)
      {
        goto LABEL_13;
      }
    }

    sub_100016590(v79, v48);

    goto LABEL_20;
  }

  result = swift_beginAccess();
  v21 = v3[20];
  if (v21[2])
  {
    v74 = v6;
    v72 = a2;
    swift_beginAccess();
    v17 = v21[4];
    v6 = v21[5];
    sub_100017D5C(v17, v6);
    sub_100A077EC(0, 1);
    swift_endAccess();
    if (qword_1016950D0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v59 = v3[16];
  if (v59)
  {
    v60 = v3[17];
    sub_10001F280(a2, &v85);
    v87 = 0;

    v59(&v85);
    sub_1000BB27C(v59);
    return sub_10000B3A8(&v85, &qword_1016BCD38, &qword_1013EAD40);
  }

  return result;
}

uint64_t sub_100E51DD4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 16);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_1016950D0 == -1)
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
  sub_1000076D4(v9, qword_10177C418);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Creating new AirPodsLEPairingManager.", v12, 2u);
  }

  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = *(v1 + 72);
  v16 = *(*(*(v1 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  type metadata accessor for AirPodsLEPairingManager();
  swift_allocObject();

  v17 = sub_1001C0AA4(v13, v14, v15, v16);
  v18 = *(v1 + 216);
  *(v1 + 216) = v17;

  return v17;
}

uint64_t sub_100E52024(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v9 = type metadata accessor for MACAddress();
  v2[21] = v9;
  v10 = *(v9 - 8);
  v2[22] = v10;
  v2[23] = *(v10 + 64);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100E521B0, 0, 0);
}

uint64_t sub_100E521B0()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v3 = async function pointer to daemon.getter[1];
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v4[1] = sub_100E522CC;

    return daemon.getter();
  }

  else
  {
    v6 = v0[24];
    v5 = v0[25];
    v7 = v0[20];
    v8 = v0[17];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100E522CC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  v12 = *v1;
  *(v3 + 224) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 232) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E62554(&qword_10169F450, 255, type metadata accessor for StandaloneBeaconService);
  *v6 = v12;
  v6[1] = sub_100E524B0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E524B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 232);
  v7 = *v2;
  *(v5 + 240) = a1;
  *(v5 + 248) = v1;

  v8 = *(v4 + 224);
  if (v1)
  {

    v9 = sub_100E52608;
    v10 = 0;
  }

  else
  {

    v9 = sub_100E52750;
    v10 = a1;
  }

  return _swift_task_switch(v9, v10, 0);
}

uint64_t sub_100E52608()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[26];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing StandaloneBeaconService!", v6, 2u);
  }

  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[20];
  v10 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100E52750()
{
  v1 = v0[31];
  sub_100F85A4C(v0[14], *(v0[30] + 128));
  v0[32] = v1;
  if (v1)
  {
    v2 = sub_100E52C84;
  }

  else
  {
    v0[33] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v2 = sub_100E527F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E527F4()
{
  v48 = v0;
  v1 = v0[33];
  if (*(v1 + 16))
  {
    v2 = v0[33];
    if (qword_1016950D0 != -1)
    {
      swift_once();
      v44 = v0[33];
    }

    v3 = v0[24];
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[14];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177C418);
    (*(v4 + 16))(v3, v6, v5);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[33];
    v12 = v0[24];
    v14 = v0[21];
    v13 = v0[22];
    if (v10)
    {
      v15 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v15 = 134218242;
      *(v15 + 4) = *(v1 + 16);

      *(v15 + 12) = 2082;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_1000136BC(v16, v18, &v47);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Found %ld beacons matching %{public}s", v15, 0x16u);
      sub_100007BAC(v46);
    }

    else
    {
      v25 = v0[33];

      (*(v13 + 8))(v12, v14);
    }

    v26 = v0[33];

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[33];
    v31 = v0[30];
    v32 = v0[26];
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 136315138;
      type metadata accessor for StandaloneBeacon();
      v35 = Array.description.getter();
      v37 = v36;

      v38 = sub_1000136BC(v35, v37, &v47);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "Existing standalone beacons: %s", v33, 0xCu);
      sub_100007BAC(v34);
    }

    else
    {
    }

    v40 = v0[24];
    v39 = v0[25];
    v41 = v0[20];
    v42 = v0[17];

    v43 = v0[1];

    return v43();
  }

  else
  {
    v20 = v0[26];
    v21 = v0[33];

    v22 = async function pointer to unsafeBlocking<A>(_:)[1];

    v23 = swift_task_alloc();
    v0[34] = v23;
    *v23 = v0;
    v23[1] = sub_100E52E90;
    v24 = v0[26];

    return unsafeBlocking<A>(_:)(v0 + 35, sub_100E693CC, v24, &type metadata for Bool);
  }
}

uint64_t sub_100E52C84()
{
  v21 = v0;
  v1 = v0[30];
  v2 = v0[26];

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v3 = v0[32];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C418);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[32];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    v0[11] = v8;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to startStandaloneLEPairing due to %{public}s", v9, 0xCu);
    sub_100007BAC(v10);
  }

  else
  {
  }

  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[20];
  v17 = v0[17];

  v18 = v0[1];

  return v18();
}

uint64_t sub_100E52E90()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 208);
  v4 = *v0;

  return _swift_task_switch(sub_100E52FA8, 0, 0);
}

uint64_t sub_100E52FA8()
{
  if (v0[35])
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177AD08);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[30];
    v6 = v0[26];
    if (v4)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "AirPods Pairing in progress. Not pairing.", v7, 2u);
    }
  }

  else
  {
    v9 = v0[25];
    v8 = v0[26];
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];
    v28 = v0[30];
    v29 = v0[19];
    v30 = v0[18];
    v24 = v0[20];
    v25 = v0[17];
    v13 = v0[15];
    v26 = *(v8 + 16);
    v27 = v0[16];
    (*(v11 + 16))(v9, v0[14], v12);
    v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    (*(v11 + 32))(v15 + v14, v9, v12);
    v0[6] = sub_100E693D4;
    v0[7] = v15;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006684;
    v0[5] = &unk_101652DC8;
    v16 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[12] = _swiftEmptyArrayStorage;
    sub_100E62554(&qword_1016A30B0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);

    (*(v27 + 8))(v25, v13);
    (*(v29 + 8))(v24, v30);

    v17 = v0[7];
  }

  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[20];
  v21 = v0[17];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100E53348@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = QueueSynchronizer.conditionalSync<A>(_:)();
  if (v7)
  {
    v5 = 1;
  }

  else
  {
    result = QueueSynchronizer.conditionalSync<A>(_:)();
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

void sub_100E533EC(char *a1, int a2, int a3)
{
  v111 = a3;
  v120 = a1;
  v5 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v113 = &v105 - v7;
  v8 = sub_1000BC4D4(&qword_1016B5608, &qword_1013D6BE8);
  v115 = *(v8 - 8);
  v9 = *(v115 + 64);
  __chkstk_darwin(v8);
  v114 = &v105 - v10;
  v11 = type metadata accessor for Endianness();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v107 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MACAddress();
  v118 = *(v14 - 8);
  v119 = v14;
  v15 = *(v118 + 64);
  v16 = __chkstk_darwin(v14);
  v112 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v110 = &v105 - v18;
  v19 = __chkstk_darwin(v17);
  v116 = &v105 - v20;
  v21 = __chkstk_darwin(v19);
  v106 = &v105 - v22;
  __chkstk_darwin(v21);
  v24 = &v105 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = (&v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v3 + 16);
  *v29 = v30;
  (*(v26 + 104))(v29, enum case for DispatchPredicate.onQueue(_:), v25);
  v31 = v30;
  v32 = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v29, v25);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v108 = v31;
  v117 = a2;
  v33 = *(v3 + 80);
  v34 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
  v35 = *(v33 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v36 = *(v35 + 112);
  v121 = v3;
  v109 = v8;
  if (v36 >> 60 == 15)
  {
    v37 = 0;
  }

  else
  {
    v38 = *(v35 + 104);
    sub_100017D5C(v38, v36);
    v37 = sub_100DE6630(v38, v36);
    sub_100006654(v38, v36);
  }

  My = type metadata accessor for Feature.FindMy();
  v124 = My;
  v40 = sub_100E62554(&qword_1016AF950, 255, &type metadata accessor for Feature.FindMy);
  v125 = v40;
  v41 = sub_1000280DC(v123);
  v42 = *(*(My - 8) + 104);
  v42(v41, enum case for Feature.FindMy.smilingWheel(_:), My);
  v43 = isFeatureEnabled(_:)();
  sub_100007BAC(v123);
  if ((v43 & 1) != 0 && v37)
  {
    sub_100E674F8(v120);
    return;
  }

  v124 = My;
  v125 = v40;
  v44 = sub_1000280DC(v123);
  v42(v44, enum case for Feature.FindMy.magneticCow(_:), My);
  v45 = isFeatureEnabled(_:)();
  sub_100007BAC(v123);
  if (v45)
  {
    if (qword_1016950D0 == -1)
    {
LABEL_10:
      v46 = type metadata accessor for Logger();
      sub_1000076D4(v46, qword_10177C418);
      v48 = v118;
      v47 = v119;
      v49 = v120;
      (*(v118 + 16))(v24, v120, v119);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v123[0] = v53;
        *v52 = 141558275;
        *(v52 + 4) = 1752392040;
        *(v52 + 12) = 2081;
        sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        (*(v48 + 8))(v24, v47);
        v57 = sub_1000136BC(v54, v56, v123);

        *(v52 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v50, v51, "UPA pairing for %{private,mask.hash}s.", v52, 0x16u);
        sub_100007BAC(v53);
      }

      else
      {

        (*(v48 + 8))(v24, v47);
      }

      sub_100E66E68(v49, v117 & 1);
      return;
    }

LABEL_37:
    swift_once();
    goto LABEL_10;
  }

  v58 = *(v33 + v34);
  v59 = *(v58 + 112);
  v60 = v121;
  v61 = v116;
  if (v59 >> 60 != 15)
  {
    v62 = *(v58 + 104);
    sub_100017D5C(v62, *(v58 + 112));
    if (sub_100313A28(v62, v59) == 76)
    {
      sub_100313B54(v62, v59);
      static Endianness.current.getter();
      sub_10012BF24();
      FixedWidthInteger.init(data:ofEndianness:)();
      sub_100006654(v62, v59);
      if ((v123[0] & 0x100000000) == 0 && LODWORD(v123[0]) == 8233)
      {
        if (qword_1016950D0 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_1000076D4(v63, qword_10177C418);
        v65 = v118;
        v64 = v119;
        v66 = v106;
        (*(v118 + 16))(v106, v120, v119);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v123[0] = v70;
          *v69 = 141558275;
          *(v69 + 4) = 1752392040;
          *(v69 + 12) = 2081;
          sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
          v71 = dispatch thunk of CustomStringConvertible.description.getter();
          v73 = v72;
          (*(v65 + 8))(v66, v64);
          v74 = sub_1000136BC(v71, v73, v123);

          *(v69 + 14) = v74;
          _os_log_impl(&_mh_execute_header, v67, v68, "Skipping BA pairing for %{private,mask.hash}s, FeatureFlag is not enabled.", v69, 0x16u);
          sub_100007BAC(v70);
        }

        else
        {

          (*(v65 + 8))(v66, v64);
        }

        sub_100E31E64(0, 1);
        return;
      }
    }

    else
    {
      sub_100006654(v62, v59);
    }
  }

  v75 = sub_100E51DD4();
  if (v75)
  {
    v76 = v75;
    v77 = *(v60 + 64);
    sub_100A22DF0(v61);
    v78 = v110;
    sub_100A22DF0(v110);
    v79 = sub_100E22864();
    if (*(v79 + 16) && (v80 = sub_1007723C0(v78), (v81 & 1) != 0))
    {
      v82 = (*(v79 + 56) + 16 * v80);
      v83 = v78;
      v84 = *v82;
      v85 = v82[1];
      sub_100017D5C(*v82, v85);
      v86 = v118;
      v87 = *(v118 + 8);
      v87(v83, v119);
    }

    else
    {

      v86 = v118;
      v87 = *(v118 + 8);
      v87(v78, v119);
      v84 = 0;
      v85 = 0xF000000000000000;
    }

    v88 = sub_1001C1394();
    sub_100006654(v84, v85);
    v87(v61, v119);
    v89 = v108;
    v122 = v108;
    v123[0] = v88;
    v90 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v91 = *(*(v90 - 8) + 56);
    v118 = v76;
    v92 = v113;
    v91(v113, 1, 1, v90);
    v93 = v89;
    sub_1000BC4D4(&qword_1016B2A78, &qword_1013EACA0);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016B2A80, &qword_1016B2A78, &qword_1013EACA0);
    sub_1004682F0();
    v94 = v114;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v92, &unk_1016B0FE0, &unk_101391980);

    v95 = swift_allocObject();
    swift_weakInit();
    v96 = v112;
    v97 = v119;
    (*(v86 + 16))(v112, v120, v119);
    v98 = (*(v86 + 80) + 24) & ~*(v86 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = v95;
    (*(v86 + 32))(v99 + v98, v96, v97);
    sub_1000041A4(&qword_1016B5640, &qword_1016B5608, &qword_1013D6BE8);
    v100 = v109;
    Publisher<>.sink(receiveValue:)();

    (*(v115 + 8))(v94, v100);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v101 = type metadata accessor for Logger();
    sub_1000076D4(v101, qword_10177C418);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "Unable to create pairing manager to start LE pairing!", v104, 2u);
    }
  }
}

uint64_t sub_100E54140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C418);
    (*(v5 + 16))(v8, a3, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_1000136BC(v16, v18, &v26);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "LE Pairing completed for %{private,mask.hash}s", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v20 = v10[15];
    v22 = *(*(v10[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
    v26 = v10[8];
    v21 = v26;
    v27 = v22;

    v23 = v21;
    PassthroughSubject.send(_:)();

    v24 = v10[27];
    v10[27] = 0;
  }

  return result;
}

uint64_t sub_100E54460(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = a8;
  *(v8 + 208) = v31;
  *(v8 + 184) = a5;
  *(v8 + 192) = a7;
  *(v8 + 90) = a6;
  *(v8 + 168) = a3;
  *(v8 + 176) = a4;
  *(v8 + 89) = a2;
  *(v8 + 160) = a1;
  v9 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v10 = type metadata accessor for MACAddress();
  *(v8 + 248) = v10;
  v11 = *(v10 - 8);
  *(v8 + 256) = v11;
  *(v8 + 264) = *(v11 + 64);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v12 = type metadata accessor for PairingCoordinatorState();
  *(v8 + 312) = v12;
  v13 = *(v12 - 8);
  *(v8 + 320) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_1016B7D38, &qword_1013DD8C8) - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v16 = sub_1000BC4D4(&qword_1016B7D40, &qword_1013DD8D0);
  *(v8 + 360) = v16;
  v17 = *(v16 - 8);
  *(v8 + 368) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v19 = *(*(sub_1000BC4D4(&qword_1016B76F0, &unk_1013DD160) - 8) + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  v20 = type metadata accessor for ObservationStreams();
  *(v8 + 392) = v20;
  v21 = *(v20 - 8);
  *(v8 + 400) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  v23 = sub_1000BC4D4(&qword_1016B7D30, &unk_1013EACD0);
  *(v8 + 416) = v23;
  v24 = *(v23 - 8);
  *(v8 + 424) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  v26 = type metadata accessor for PairingContext();
  *(v8 + 440) = v26;
  v27 = *(v26 - 8);
  *(v8 + 448) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();

  return _swift_task_switch(sub_100E5483C, 0, 0);
}

uint64_t sub_100E5483C()
{
  v1 = *(v0 + 160);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 464) = v3;
  *v3 = v0;
  v3[1] = sub_100E548FC;
  v4 = *(v0 + 160);

  return unsafeBlocking<A>(_:)(v3, sub_100E689A8, v4, &type metadata for () + 8);
}

uint64_t sub_100E548FC()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_100E54A14, 0, 0);
}

uint64_t sub_100E54A14()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 472) = v2;
  *v2 = v0;
  v2[1] = sub_100E54AA4;

  return daemon.getter();
}

uint64_t sub_100E54AA4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 472);
  v12 = *v1;
  *(v3 + 480) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 488) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for PairingService();
  v9 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E62554(&unk_1016B1120, 255, &type metadata accessor for PairingService);
  *v6 = v12;
  v6[1] = sub_100E54C88;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E54C88(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 488);
  v8 = *v2;
  v3[62] = a1;
  v3[63] = v1;

  if (v1)
  {
    v5 = sub_100E570E0;
  }

  else
  {
    v6 = v3[60];

    v5 = sub_100E54DA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E54DA4()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 440);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  if (*(v0 + 89) == 1)
  {
    v6 = *(v0 + 168);
    v7 = *(sub_1000BC4D4(&qword_1016B7758, &unk_1013DD1A0) + 48);
    *(v1 + 24) = &type metadata for SPDAccessoryType;
    *(v1 + 32) = sub_100BB8DB8();
    *v1 = 2;
    (*(v5 + 16))(v1 + v7, v6, v4);
    (*(v2 + 104))(v1, enum case for PairingContext.bluetoothStandalone(_:), v3);
  }

  else
  {
    v29 = *(v0 + 90);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v27 = *(v0 + 168);
    v10 = sub_1000BC4D4(&qword_1016B7728, &unk_1013DD190);
    v11 = v10[12];
    v28 = v3;
    v12 = (v1 + v10[16]);
    v13 = v10[20];
    *(v1 + 24) = &type metadata for SPDAccessoryType;
    *(v1 + 32) = sub_100BB8DB8();
    *v1 = 2;
    (*(v5 + 16))(v1 + v11, v27, v4);
    *v12 = v9;
    v12[1] = v8;
    *(v1 + v13) = v29;
    (*(v2 + 104))(v1, enum case for PairingContext.bluetoothMultiPart(_:), v28);
    sub_10002E98C(v9, v8);
  }

  v14 = *(v0 + 448);
  v15 = *(v0 + 456);
  v16 = *(v0 + 440);
  v17 = *(v0 + 384);
  v18 = *(v0 + 192);
  sub_1000BC4D4(&qword_1016B2BA8, &unk_1013EACE0);
  v19 = swift_allocObject();
  *(v0 + 512) = v19;
  *(v19 + 16) = xmmword_101385D80;
  *(v19 + 56) = type metadata accessor for AirPodsLEAccessory(0);
  *(v19 + 64) = sub_100E62554(&qword_1016BCD30, 255, type metadata accessor for AirPodsLEAccessory);
  v20 = sub_1000280DC((v19 + 32));
  sub_100E6A94C(v18, v20, type metadata accessor for AirPodsLEAccessory);
  (*(v14 + 16))(v17, v15, v16);
  (*(v14 + 56))(v17, 0, 1, v16);
  v21 = *(&async function pointer to dispatch thunk of PairingService.pairAccessories(_:context:) + 1);
  v30 = (&async function pointer to dispatch thunk of PairingService.pairAccessories(_:context:) + async function pointer to dispatch thunk of PairingService.pairAccessories(_:context:));
  v22 = swift_task_alloc();
  *(v0 + 520) = v22;
  *v22 = v0;
  v22[1] = sub_100E550B0;
  v23 = *(v0 + 496);
  v24 = *(v0 + 408);
  v25 = *(v0 + 384);

  return v30(v24, v19, v25);
}

uint64_t sub_100E550B0()
{
  v2 = *(*v1 + 520);
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 384);
  v7 = *v1;
  *(*v1 + 528) = v0;

  sub_10000B3A8(v4, &qword_1016B76F0, &unk_1013DD160);

  if (v0)
  {
    v5 = sub_100E57404;
  }

  else
  {
    v5 = sub_100E55214;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E55214()
{
  v1 = *(v0 + 432);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 392);
  ObservationStreams.pairingStream.getter();
  (*(v3 + 8))(v2, v4);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  *(v0 + 536) = sub_1000076D4(v5, qword_10177C418);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Started pairing session", v8, 2u);
  }

  v9 = *(v0 + 432);
  v10 = *(v0 + 416);
  v11 = *(v0 + 376);

  AsyncStream.makeAsyncIterator()();
  *(v0 + 92) = enum case for PairingCoordinatorState.failed(_:);
  *(v0 + 108) = enum case for PairingCoordinatorState.interrupted(_:);
  *(v0 + 124) = enum case for PairingCoordinatorState.finished(_:);
  v12 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v13 = swift_task_alloc();
  *(v0 + 544) = v13;
  *v13 = v0;
  v13[1] = sub_100E553E8;
  v14 = *(v0 + 376);
  v15 = *(v0 + 352);
  v16 = *(v0 + 360);

  return AsyncStream.Iterator.next(isolation:)(v15, 0, 0, v16);
}

uint64_t sub_100E553E8()
{
  v1 = *(*v0 + 544);
  v3 = *v0;

  return _swift_task_switch(sub_100E554E4, 0, 0);
}

uint64_t sub_100E554E4()
{
  v132 = v0;
  v1 = *(v0 + 352);
  v2 = sub_1000BC4D4(&qword_1016B7D48, &qword_1013DD8D8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 496);
    v5 = *(v0 + 448);
    v4 = *(v0 + 456);
    v7 = *(v0 + 432);
    v6 = *(v0 + 440);
    v8 = *(v0 + 416);
    v9 = *(v0 + 424);
    v11 = *(v0 + 368);
    v10 = *(v0 + 376);
    v12 = *(v0 + 360);

    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v13 = *(v0 + 456);
    v14 = *(v0 + 432);
    v15 = *(v0 + 408);
    v17 = *(v0 + 376);
    v16 = *(v0 + 384);
    v18 = *(v0 + 344);
    v19 = *(v0 + 352);
    v21 = *(v0 + 328);
    v20 = *(v0 + 336);
    v22 = *(v0 + 304);
    v113 = *(v0 + 296);
    v115 = *(v0 + 288);
    log = *(v0 + 280);
    v119 = *(v0 + 272);
    v121 = *(v0 + 240);
    v123 = *(v0 + 232);
    v125 = *(v0 + 224);
    v128 = *(v0 + 216);

    v23 = *(v0 + 8);

    return v23();
  }

  v26 = *(v0 + 336);
  v25 = *(v0 + 344);
  v28 = *(v0 + 312);
  v27 = *(v0 + 320);
  v122 = *(v0 + 304);
  v124 = *(v0 + 536);
  v30 = *(v0 + 248);
  v29 = *(v0 + 256);
  v31 = *(v0 + 200);
  v32 = *v1;

  (*(v27 + 32))(v25, &v1[*(v2 + 48)], v28);
  v126 = *(v27 + 16);
  v126(v26, v25, v28);
  v33 = *(v29 + 16);
  *(v0 + 552) = v33;
  *(v0 + 560) = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v120 = v33;
  v33(v122, v31, v30);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 336);
  v39 = *(v0 + 312);
  v38 = *(v0 + 320);
  v40 = *(v0 + 304);
  v42 = *(v0 + 248);
  v41 = *(v0 + 256);
  if (v36)
  {
    loga = v34;
    v43 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *v43 = 136315651;
    sub_100E62554(&unk_1016B7D50, 255, &type metadata accessor for PairingCoordinatorState);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v116 = v35;
    v46 = v45;
    v114 = v42;
    v47 = v40;
    v48 = *(v38 + 8);
    v48(v37, v39);
    v49 = sub_1000136BC(v44, v46, &v131);

    *(v43 + 4) = v49;
    *(v43 + 12) = 2160;
    *(v43 + 14) = 1752392040;
    *(v43 + 22) = 2081;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    v53 = *(v41 + 8);
    v53(v47, v114);
    v54 = sub_1000136BC(v50, v52, &v131);
    v55 = v48;

    *(v43 + 24) = v54;
    _os_log_impl(&_mh_execute_header, loga, v116, "PairingService: state = %s, accessory %{private,mask.hash}s.", v43, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v53 = *(v41 + 8);
    v53(v40, v42);
    v55 = *(v38 + 8);
    v55(v37, v39);
  }

  *(v0 + 568) = v55;
  v56 = *(v0 + 92);
  v58 = *(v0 + 320);
  v57 = *(v0 + 328);
  v59 = *(v0 + 312);
  v126(v57, *(v0 + 344), v59);
  v60 = (*(v58 + 88))(v57, v59);
  if (v60 == v56)
  {
    v61 = *(v0 + 536);
    v62 = *(v0 + 328);
    v63 = *(v0 + 296);
    v64 = *(v0 + 248);
    v65 = *(v0 + 200);
    (*(*(v0 + 320) + 96))(v62, *(v0 + 312));
    *(v0 + 584) = *v62;
    v120(v63, v65, v64);
    swift_errorRetain();
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 296);
    v70 = *(v0 + 248);
    if (v68)
    {
      v127 = *(v0 + 256) + 8;
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v131 = v129;
      *v71 = 141558531;
      *(v71 + 4) = 1752392040;
      *(v71 + 12) = 2081;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v53;
      v75 = v73;
      v77 = v76;
      v74(v69, v70);
      v78 = sub_1000136BC(v75, v77, &v131);

      *(v71 + 14) = v78;
      *(v71 + 22) = 2114;
      swift_errorRetain();
      v79 = _swift_stdlib_bridgeErrorToNSError();
      *(v71 + 24) = v79;
      *v72 = v79;
      _os_log_impl(&_mh_execute_header, v66, v67, "Pairing failed for macAddress: %{private,mask.hash}s with error %{public}@", v71, 0x20u);
      sub_10000B3A8(v72, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v129);
    }

    else
    {

      v53(v69, v70);
    }

    v92 = *(v0 + 160);
    v93 = async function pointer to unsafeBlocking<A>(_:)[1];

    v94 = swift_task_alloc();
    *(v0 + 592) = v94;
    *v94 = v0;
    v94[1] = sub_100E56520;
    v95 = *(v0 + 160);
LABEL_22:

    return unsafeBlocking<A>(_:)(v94, sub_100E689C4, v95, &type metadata for () + 8);
  }

  if (v60 == *(v0 + 108))
  {
    v80 = *(v0 + 536);
    v120(*(v0 + 272), *(v0 + 200), *(v0 + 248));
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();
    v83 = os_log_type_enabled(v81, v82);
    v84 = *(v0 + 272);
    v85 = *(v0 + 248);
    if (v83)
    {
      v130 = *(v0 + 256) + 8;
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v131 = v87;
      *v86 = 141558275;
      *(v86 + 4) = 1752392040;
      *(v86 + 12) = 2081;
      sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      v53(v84, v85);
      v91 = sub_1000136BC(v88, v90, &v131);

      *(v86 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v81, v82, "Pairing has been interrupted for macAddress: %{private,mask.hash}s", v86, 0x16u);
      sub_100007BAC(v87);
    }

    else
    {

      v53(v84, v85);
    }

    v103 = *(v0 + 160);
    v104 = async function pointer to unsafeBlocking<A>(_:)[1];

    v94 = swift_task_alloc();
    *(v0 + 600) = v94;
    *v94 = v0;
    v94[1] = sub_100E56A48;
    v95 = *(v0 + 160);
    goto LABEL_22;
  }

  if (v60 == *(v0 + 124))
  {
    v96 = *(v0 + 536);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v131 = v100;
      *v99 = 136315138;
      *(v99 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v131);
      _os_log_impl(&_mh_execute_header, v97, v98, "%s Pairing has been completed for all serial numbers.", v99, 0xCu);
      sub_100007BAC(v100);
    }

    v101 = *(v0 + 160);
    v102 = async function pointer to unsafeBlocking<A>(_:)[1];

    v94 = swift_task_alloc();
    *(v0 + 576) = v94;
    *v94 = v0;
    v94[1] = sub_100E560E0;
    v95 = *(v0 + 160);
    goto LABEL_22;
  }

  v105 = *(v0 + 328);
  v106 = *(v0 + 312);
  v107 = *(v0 + 320) + 8;
  v55(*(v0 + 344), v106);
  v55(v105, v106);
  v108 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v109 = swift_task_alloc();
  *(v0 + 544) = v109;
  *v109 = v0;
  v109[1] = sub_100E553E8;
  v110 = *(v0 + 376);
  v111 = *(v0 + 352);
  v112 = *(v0 + 360);

  return AsyncStream.Iterator.next(isolation:)(v111, 0, 0, v112);
}

uint64_t sub_100E560E0()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_100E561F8, 0, 0);
}

uint64_t sub_100E561F8()
{
  v1 = *(v0 + 160);
  v2 = v1[15];
  v3 = v1[8];
  LOBYTE(v1) = *(*(v1[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  *(v0 + 128) = v3;
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  *(v0 + 136) = v1;

  v6 = v3;
  PassthroughSubject.send(_:)();

  v7 = type metadata accessor for TaskPriority();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v5, 1, 1, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1000D2A70(v5, v4, &qword_101698C00, &qword_10138B570);
  LODWORD(v4) = (*(v8 + 48))(v4, 1, v7);

  v10 = *(v0 + 232);
  if (v4 == 1)
  {
    sub_10000B3A8(*(v0 + 232), &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v8 + 8))(v10, v7);
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_10000B3A8(*(v0 + 240), &qword_101698C00, &qword_10138B570);
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1013EAD10;
  *(v16 + 24) = v9;
  if (v15 | v13)
  {
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = v13;
    *(v0 + 72) = v15;
  }

  v17 = *(v0 + 568);
  v18 = *(v0 + 344);
  v19 = *(v0 + 312);
  v20 = *(v0 + 320) + 8;
  swift_task_create();

  v17(v18, v19);
  v21 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v22 = swift_task_alloc();
  *(v0 + 544) = v22;
  *v22 = v0;
  v22[1] = sub_100E553E8;
  v23 = *(v0 + 376);
  v24 = *(v0 + 352);
  v25 = *(v0 + 360);

  return AsyncStream.Iterator.next(isolation:)(v24, 0, 0, v25);
}

uint64_t sub_100E56520()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_100E56638, 0, 0);
}

uint64_t sub_100E56638()
{
  v1 = v0;
  v44 = v0[73];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[36];
  v42 = v0[33];
  v40 = v0[35];
  v41 = v0[32];
  v5 = v0[31];
  v6 = v0[28];
  v37 = v6;
  v45 = v0[27];
  v43 = v0[26];
  v7 = v0[20];
  v38 = v0[21];
  v39 = v0[25];
  v8 = v7[15];
  v9 = v7[8];
  LOBYTE(v7) = *(*(v7[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  v0[14] = v9;
  v10 = v0 + 14;
  *(v10 + 8) = v7;

  v11 = v9;
  PassthroughSubject.send(_:)();

  v35 = type metadata accessor for TaskPriority();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v6, 1, 1, v35);
  v3(v4, v38, v5);
  v3(v40, v39, v5);
  v12 = *(v41 + 80);
  v13 = (v12 + 48) & ~v12;
  v14 = (v42 + v12 + v13) & ~v12;
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v44;
  *(v15 + 5) = v43;
  v16 = *(v41 + 32);
  v16(&v15[v13], v4, v5);
  v16(&v15[v14], v40, v5);
  sub_1000D2A70(v37, v45, &qword_101698C00, &qword_10138B570);
  LODWORD(v5) = (*(v36 + 48))(v45, 1, v35);
  swift_errorRetain();

  v17 = v1[27];
  if (v5 == 1)
  {
    sub_10000B3A8(v1[27], &qword_101698C00, &qword_10138B570);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v36 + 8))(v17, v35);
  }

  v19 = *(v15 + 2);
  v18 = *(v15 + 3);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  sub_10000B3A8(v1[28], &qword_101698C00, &qword_10138B570);
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1013EACF8;
  *(v23 + 24) = v15;
  if (v22 | v20)
  {
    v24 = v10 - 12;
    *v24 = 0;
    v24[1] = 0;
    v1[4] = v20;
    v1[5] = v22;
  }

  v25 = v1[73];
  v26 = v1[43];
  v27 = v1[39];
  v28 = v1[40];
  swift_task_create();

  (*(v28 + 8))(v26, v27);
  v29 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v30 = swift_task_alloc();
  v1[68] = v30;
  *v30 = v1;
  v30[1] = sub_100E553E8;
  v31 = v1[47];
  v32 = v1[44];
  v33 = v1[45];

  return AsyncStream.Iterator.next(isolation:)(v32, 0, 0, v33);
}

uint64_t sub_100E56A48()
{
  v1 = *(*v0 + 600);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_100E56B60, 0, 0);
}

uint64_t sub_100E56B60()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 160);
  v5 = *(v0 + 320) + 8;
  v6 = v4[15];
  v7 = v4[8];
  v8 = *(*(v4[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  *(v0 + 96) = v7;
  *(v0 + 104) = v8;

  v9 = v7;
  PassthroughSubject.send(_:)();

  v1(v2, v3);
  v10 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v11 = swift_task_alloc();
  *(v0 + 544) = v11;
  *v11 = v0;
  v11[1] = sub_100E553E8;
  v12 = *(v0 + 376);
  v13 = *(v0 + 352);
  v14 = *(v0 + 360);

  return AsyncStream.Iterator.next(isolation:)(v13, 0, 0, v14);
}

uint64_t sub_100E56CA0()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return _swift_task_switch(sub_100E56DB8, 0, 0);
}

uint64_t sub_100E56DB8()
{
  v36 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 608);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 608);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v35);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s error: %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  v10 = *(v0 + 608);
  v11 = *(v0 + 160);
  v12 = v11[15];
  v13 = v11[8];
  LOBYTE(v11) = *(*(v11[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  *(v0 + 80) = v13;
  *(v0 + 88) = v11;

  v14 = v13;
  PassthroughSubject.send(_:)();

  v15 = *(v0 + 456);
  v16 = *(v0 + 432);
  v17 = *(v0 + 408);
  v19 = *(v0 + 376);
  v18 = *(v0 + 384);
  v20 = *(v0 + 344);
  v21 = *(v0 + 352);
  v23 = *(v0 + 328);
  v22 = *(v0 + 336);
  v24 = *(v0 + 304);
  v27 = *(v0 + 296);
  v28 = *(v0 + 288);
  v29 = *(v0 + 280);
  v30 = *(v0 + 272);
  v31 = *(v0 + 240);
  v32 = *(v0 + 232);
  v33 = *(v0 + 224);
  v34 = *(v0 + 216);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100E570E0()
{
  v1 = v0[60];

  v2 = v0[63];
  v0[18] = v2;
  v0[76] = v2;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v3 = v0[19];
    if (v3 == 0x800000000000000ELL)
    {

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000076D4(v4, qword_10177C418);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Existing pairing session in progress!", v7, 2u);
      }

      v8 = v0[18];

      v9 = v0[57];
      v10 = v0[54];
      v11 = v0[51];
      v13 = v0[47];
      v12 = v0[48];
      v14 = v0[43];
      v15 = v0[44];
      v17 = v0[41];
      v16 = v0[42];
      v18 = v0[38];
      v26 = v0[37];
      v27 = v0[36];
      v28 = v0[35];
      v29 = v0[34];
      v30 = v0[30];
      v31 = v0[29];
      v32 = v0[28];
      v33 = v0[27];

      v19 = v0[1];

      return v19();
    }

    sub_100101814(v3);
  }

  v21 = v0[20];
  v22 = v0[18];

  v23 = async function pointer to unsafeBlocking<A>(_:)[1];

  v24 = swift_task_alloc();
  v0[77] = v24;
  *v24 = v0;
  v24[1] = sub_100E56CA0;
  v25 = v0[20];

  return unsafeBlocking<A>(_:)(v24, sub_100E689C4, v25, &type metadata for () + 8);
}

uint64_t sub_100E57404()
{
  v1 = v0[62];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[55];

  (*(v3 + 8))(v2, v4);
  v5 = v0[66];
  v0[18] = v5;
  v0[76] = v5;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v6 = v0[19];
    if (v6 == 0x800000000000000ELL)
    {

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000076D4(v7, qword_10177C418);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Existing pairing session in progress!", v10, 2u);
      }

      v11 = v0[18];

      v12 = v0[57];
      v13 = v0[54];
      v14 = v0[51];
      v16 = v0[47];
      v15 = v0[48];
      v17 = v0[43];
      v18 = v0[44];
      v20 = v0[41];
      v19 = v0[42];
      v21 = v0[38];
      v29 = v0[37];
      v30 = v0[36];
      v31 = v0[35];
      v32 = v0[34];
      v33 = v0[30];
      v34 = v0[29];
      v35 = v0[28];
      v36 = v0[27];

      v22 = v0[1];

      return v22();
    }

    sub_100101814(v6);
  }

  v24 = v0[20];
  v25 = v0[18];

  v26 = async function pointer to unsafeBlocking<A>(_:)[1];

  v27 = swift_task_alloc();
  v0[77] = v27;
  *v27 = v0;
  v27[1] = sub_100E56CA0;
  v28 = v0[20];

  return unsafeBlocking<A>(_:)(v27, sub_100E689C4, v28, &type metadata for () + 8);
}

uint64_t sub_100E57748()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100E577D8;

  return daemon.getter();
}

uint64_t sub_100E577D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v12 = *v1;
  *(v3 + 24) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E62554(&unk_1016B1030, 255, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_100E579BC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E579BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  v4[5] = a1;
  v4[6] = v1;

  if (v1)
  {
    v7 = sub_100E580F0;
    v8 = 0;
  }

  else
  {
    v9 = v4[3];

    v7 = sub_100E57AF4;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100E57AF4()
{
  v1 = *(*(v0 + 40) + 136);
  v2 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v6 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_100E57BC0;
  v4 = *(v0 + 40);

  return v6(&unk_1013EAD28, v4);
}

uint64_t sub_100E57BC0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_100E57E80;
  }

  else
  {
    v7 = *(v2 + 40);

    v6 = sub_100E57D00;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100E57D00()
{
  v11 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 40);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Removed all analytics after pairing completed.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100E57E80()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_100E57EE8, 0, 0);
}

uint64_t sub_100E57EE8()
{
  v13 = v0;
  v1 = v0[5];

  v2 = v0[8];
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C418);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Error removing analytics: %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100E580F0()
{
  v13 = v0;
  v1 = v0[3];

  v2 = v0[6];
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C418);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Error removing analytics: %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100E582F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = type metadata accessor for AccessoryPairingAnalytics();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v7[13] = *(v9 + 64);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v10 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  v7[17] = v10;
  v11 = *(v10 - 8);
  v7[18] = v11;
  v12 = *(v11 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v13 = type metadata accessor for MACAddress();
  v7[21] = v13;
  v14 = *(v13 - 8);
  v7[22] = v14;
  v7[23] = *(v14 + 64);
  v7[24] = swift_task_alloc();
  v15 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v7[25] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v17 = type metadata accessor for OwnedBeaconGroup(0);
  v7[27] = v17;
  v18 = *(v17 - 8);
  v7[28] = v18;
  v19 = *(v18 + 64) + 15;
  v7[29] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_1016B7D88, &qword_1013EAD30) - 8) + 64) + 15;
  v7[30] = swift_task_alloc();
  v21 = type metadata accessor for PairingCoordinatorError();
  v7[31] = v21;
  v22 = *(v21 - 8);
  v7[32] = v22;
  v23 = *(v22 + 64) + 15;
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();

  return _swift_task_switch(sub_100E585E0, 0, 0);
}

uint64_t sub_100E585E0()
{
  v39 = v0;
  v0[5] = v0[7];
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v6 = v0[33];
    v7 = v0[34];
    v8 = v0[31];
    v9 = v0[32];
    v10 = v0[30];
    v5(v10, 0, 1, v8);
    (*(v9 + 32))(v7, v10, v8);
    sub_100E62554(&qword_1016B31E0, 255, &type metadata accessor for PairingCoordinatorError);
    v11 = Error.code.getter();
    (*(v9 + 104))(v6, enum case for PairingCoordinatorError.pairedToAnotherAccount(_:), v8);
    v12 = Error.code.getter();
    v13 = *(v9 + 8);
    v13(v6, v8);
    if (v11 == v12)
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000076D4(v14, qword_10177C418);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = v0[34];
      v19 = v0[31];
      if (v17)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v38 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v38);
        _os_log_impl(&_mh_execute_header, v15, v16, "%s Locked to another account. Analytic is handled by executor.", v20, 0xCu);
        sub_100007BAC(v21);
      }

      v13(v18, v19);
      v23 = v0[33];
      v22 = v0[34];
      v25 = v0[29];
      v24 = v0[30];
      v26 = v0[26];
      v27 = v0[24];
      v29 = v0[19];
      v28 = v0[20];
      v31 = v0[15];
      v30 = v0[16];
      v37 = v0[14];

      v32 = v0[1];

      return v32();
    }

    v13(v0[34], v0[31]);
  }

  else
  {
    v34 = v0[30];
    v5(v34, 1, 1, v0[31]);
    sub_10000B3A8(v34, &qword_1016B7D88, &qword_1013EAD30);
  }

  v35 = async function pointer to daemon.getter[1];
  v36 = swift_task_alloc();
  v0[35] = v36;
  *v36 = v0;
  v36[1] = sub_100E589F4;

  return daemon.getter();
}

uint64_t sub_100E589F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v12 = *v1;
  v3[36] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[37] = v6;
  v7 = type metadata accessor for Daemon();
  v3[38] = v7;
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v3[39] = v9;
  v10 = sub_100E62554(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100E58BE8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E58BE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v8 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {
    v5 = sub_100E5A9C0;
  }

  else
  {
    v6 = v3[36];

    v5 = sub_100E58D04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E58D04()
{
  v33 = v0;
  v1 = v0[8];
  v0[42] = v1[11];
  v2 = v1[12];
  v0[43] = v2;
  if (v2 && (v3 = v1[13], v0[44] = v3, v4 = v1[14], v0[45] = v4, v4 >> 60 != 15))
  {
    v30 = v0[40];

    sub_10002E98C(v3, v4);

    return _swift_task_switch(sub_100E59148, v30, 0);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C418);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v32[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, v32);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Missing systemVersion/productData", v8, 0xCu);
      sub_100007BAC(v9);
    }

    v10 = v0[40];
    sub_100E6259C();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v5, qword_10177C418);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, v32);
      *(v14 + 12) = 2114;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v17;
      *v15 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s Failure writing to pairing event local storage: %{public}@", v14, 0x16u);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v16);
    }

    else
    {
    }

    v19 = v0[33];
    v18 = v0[34];
    v21 = v0[29];
    v20 = v0[30];
    v22 = v0[26];
    v23 = v0[24];
    v25 = v0[19];
    v24 = v0[20];
    v27 = v0[15];
    v26 = v0[16];
    v31 = v0[14];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_100E59148()
{
  v1 = v0[40];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[9];
  v7 = *(v5 + 16);
  v0[46] = v7;
  v0[47] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v6, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v0[48] = v9;
  *(v9 + 16) = v1;
  (*(v5 + 32))(v9 + v8, v2, v4);
  v10 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v11 = swift_task_alloc();
  v0[49] = v11;
  *v11 = v0;
  v11[1] = sub_100E592B4;
  v13 = v0[25];
  v12 = v0[26];

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100102120, v9, v13);
}

uint64_t sub_100E592B4()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return _swift_task_switch(sub_100E593CC, 0, 0);
}

uint64_t sub_100E593CC()
{
  v67 = v0;
  v1 = *(v0 + 208);
  if ((*(*(v0 + 224) + 48))(v1, 1, *(v0 + 216)) == 1)
  {
    v2 = *(v0 + 344);

    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
LABEL_7:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177C418);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v66[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, v66);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s Missing group/partId", v19, 0xCu);
      sub_100007BAC(v20);
    }

    v22 = *(v0 + 352);
    v21 = *(v0 + 360);
    v23 = *(v0 + 320);
    sub_100E6259C();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
    sub_100006654(v22, v21);

    goto LABEL_24;
  }

  v3 = *(v0 + 80);
  sub_100E6ADA4(v1, *(v0 + 232), type metadata accessor for OwnedBeaconGroup);
  v4 = sub_10051578C(v3);
  *(v0 + 480) = v4;
  if ((v4 & 0x100) != 0)
  {
    v15 = *(v0 + 344);
    sub_100E6A9B4(*(v0 + 232), type metadata accessor for OwnedBeaconGroup);

    goto LABEL_7;
  }

  v5 = *(v0 + 232);
  v6 = sub_100522DB8(v4);
  *(v0 + 400) = v6;
  *(v0 + 408) = v7;
  if (v7 >> 60 == 15)
  {
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 344);
    v11 = *(v0 + 320);
    v12 = *(v0 + 232);

    sub_100E6259C();
    swift_allocError();
    *v13 = 7;
    swift_willThrow();
    sub_100006654(v9, v8);

    v14 = v12;
LABEL_23:
    sub_100E6A9B4(v14, type metadata accessor for OwnedBeaconGroup);
LABEL_24:
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_10177C418);
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v66[0] = v51;
      *v49 = 136315394;
      *(v49 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, v66);
      *(v49 + 12) = 2114;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 14) = v52;
      *v50 = v52;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s Failure writing to pairing event local storage: %{public}@", v49, 0x16u);
      sub_10000B3A8(v50, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v51);
    }

    else
    {
    }

    v54 = *(v0 + 264);
    v53 = *(v0 + 272);
    v56 = *(v0 + 232);
    v55 = *(v0 + 240);
    v57 = *(v0 + 208);
    v58 = *(v0 + 192);
    v60 = *(v0 + 152);
    v59 = *(v0 + 160);
    v62 = *(v0 + 120);
    v61 = *(v0 + 128);
    v65 = *(v0 + 112);

    v63 = *(v0 + 8);

    return v63();
  }

  v25 = v6;
  v26 = v7;
  v27 = *(*(v0 + 64) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  if (!*(v27 + 16))
  {
LABEL_18:
    v35 = *(v0 + 344);

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177C418);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v66[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, v66);
      _os_log_impl(&_mh_execute_header, v37, v38, "%s Missing multipartInfo", v39, 0xCu);
      sub_100007BAC(v40);
    }

    v42 = *(v0 + 352);
    v41 = *(v0 + 360);
    v43 = *(v0 + 320);
    v44 = *(v0 + 232);
    sub_100E6259C();
    swift_allocError();
    *v45 = 3;
    swift_willThrow();
    sub_100006654(v42, v41);
    sub_100006654(v25, v26);

    v14 = v44;
    goto LABEL_23;
  }

  v28 = *(*(v0 + 64) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);

  v29 = sub_100771E30(v25, v26);
  if ((v30 & 1) == 0)
  {

    goto LABEL_18;
  }

  v32 = *(v0 + 152);
  v31 = *(v0 + 160);
  sub_100E6A94C(*(v27 + 56) + *(*(v0 + 144) + 72) * v29, v32, type metadata accessor for MultipartAccessoryPairingInfo);

  sub_100E6ADA4(v32, v31, type metadata accessor for MultipartAccessoryPairingInfo);
  v33 = async function pointer to daemon.getter[1];
  v34 = swift_task_alloc();
  *(v0 + 416) = v34;
  *v34 = v0;
  v34[1] = sub_100E59B74;

  return daemon.getter();
}

uint64_t sub_100E59B74(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 416);
  v5 = *v1;
  v3[53] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[54] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100E62554(&unk_1016B1030, 255, type metadata accessor for LocalStorageService);
  *v7 = v5;
  v7[1] = sub_100E59D2C;
  v10 = v3[39];
  v11 = v3[38];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100E59D2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  v7 = v3[53];
  if (v1)
  {
    v8 = v4[43];

    v9 = sub_100E5AC44;
  }

  else
  {

    v9 = sub_100E59E78;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100E59E78()
{
  v35 = *(v0 + 440);
  v31 = *(v0 + 400);
  v32 = *(v0 + 408);
  v28 = *(v0 + 480);
  v27 = *(v0 + 376);
  v25 = *(v0 + 368);
  v34 = *(v0 + 360);
  v33 = *(v0 + 352);
  v29 = *(v0 + 336);
  v30 = *(v0 + 344);
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 128);
  v22 = *(v0 + 136);
  v6 = *(v0 + 88);
  v23 = *(v0 + 72);
  v24 = *(v0 + 160);
  v26 = *(v0 + 56);
  UUID.init()();
  v7 = v6[5];
  v8 = *(v2 + 24);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5 + v7, v1 + v8, v9);
  (*(v10 + 56))(v5 + v7, 0, 1, v9);
  LOBYTE(v1) = *(v24 + *(v22 + 28));
  v11 = v6[12];
  v25(v5 + v11, v23, v3);
  (*(v4 + 56))(v5 + v11, 0, 1, v3);
  swift_getErrorValue();
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = Error.localizedDescription.getter();
  *(v5 + v6[6]) = v28;
  v16 = (v5 + v6[7]);
  *v16 = v31;
  v16[1] = v32;
  v17 = (v5 + v6[8]);
  *v17 = v29;
  v17[1] = v30;
  v18 = (v5 + v6[9]);
  *v18 = v33;
  v18[1] = v34;
  *(v5 + v6[10]) = 2;
  *(v5 + v6[11]) = v1;
  v19 = (v5 + v6[13]);
  *v19 = v15;
  v19[1] = v20;
  static Date.trustedNow.getter(v5 + v6[14]);

  return _swift_task_switch(sub_100E5A0AC, v35, 0);
}

uint64_t sub_100E5A0AC()
{
  v1 = v0[55];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = *(v1 + 136);
  sub_100E6A94C(v0[16], v2, type metadata accessor for AccessoryPairingAnalytics);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[57] = v7;
  *(v7 + 16) = v1;
  sub_100E6ADA4(v2, v7 + v6, type metadata accessor for AccessoryPairingAnalytics);
  v8 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v11 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v9 = swift_task_alloc();
  v0[58] = v9;
  *v9 = v0;
  v9[1] = sub_100E5A1F8;

  return v11(&unk_1013EAD38, v7);
}

uint64_t sub_100E5A1F8()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;
  v2[59] = v0;

  v5 = v2[57];
  if (v0)
  {
    v6 = v2[55];

    v7 = sub_100E5A6B4;
    v8 = v6;
  }

  else
  {

    v7 = sub_100E5A340;
    v8 = 0;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100E5A340()
{
  v34 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[14];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C418);
  sub_100E6A94C(v1, v2, type metadata accessor for AccessoryPairingAnalytics);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[55];
  v8 = v0[40];
  v9 = v0[29];
  v10 = v0[20];
  v11 = v0[16];
  v12 = v0[14];
  if (v6)
  {
    v13 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v33);
    *(v13 + 12) = 2080;
    v30 = v11;
    v31 = v10;
    v14 = sub_10111CE44();
    v16 = v15;
    sub_100E6A9B4(v12, type metadata accessor for AccessoryPairingAnalytics);
    v17 = sub_1000136BC(v14, v16, &v33);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Inserted %s", v13, 0x16u);
    swift_arrayDestroy();

    sub_100E6A9B4(v30, type metadata accessor for AccessoryPairingAnalytics);
    sub_100E6A9B4(v31, type metadata accessor for MultipartAccessoryPairingInfo);
  }

  else
  {

    sub_100E6A9B4(v12, type metadata accessor for AccessoryPairingAnalytics);
    sub_100E6A9B4(v11, type metadata accessor for AccessoryPairingAnalytics);
    sub_100E6A9B4(v10, type metadata accessor for MultipartAccessoryPairingInfo);
  }

  sub_100E6A9B4(v9, type metadata accessor for OwnedBeaconGroup);
  v19 = v0[33];
  v18 = v0[34];
  v21 = v0[29];
  v20 = v0[30];
  v22 = v0[26];
  v23 = v0[24];
  v25 = v0[19];
  v24 = v0[20];
  v27 = v0[15];
  v26 = v0[16];
  v32 = v0[14];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100E5A6D0()
{
  v28 = v0;
  v1 = v0[55];
  v2 = v0[40];
  v3 = v0[29];
  v4 = v0[20];
  v5 = v0[16];

  sub_100E6A9B4(v5, type metadata accessor for AccessoryPairingAnalytics);
  sub_100E6A9B4(v4, type metadata accessor for MultipartAccessoryPairingInfo);
  sub_100E6A9B4(v3, type metadata accessor for OwnedBeaconGroup);
  v6 = v0[59];
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C418);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v27);
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Failure writing to pairing event local storage: %{public}@", v10, 0x16u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
  }

  v15 = v0[33];
  v14 = v0[34];
  v17 = v0[29];
  v16 = v0[30];
  v18 = v0[26];
  v19 = v0[24];
  v21 = v0[19];
  v20 = v0[20];
  v23 = v0[15];
  v22 = v0[16];
  v26 = v0[14];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100E5A9C0()
{
  v24 = v0;
  v1 = v0[36];

  v2 = v0[41];
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C418);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v23);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Failure writing to pairing event local storage: %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  else
  {
  }

  v11 = v0[33];
  v10 = v0[34];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[26];
  v15 = v0[24];
  v17 = v0[19];
  v16 = v0[20];
  v19 = v0[15];
  v18 = v0[16];
  v22 = v0[14];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100E5AC44()
{
  v28 = v0;
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[40];
  v4 = v0[29];
  v5 = v0[20];
  sub_100006654(v0[44], v0[45]);
  sub_100006654(v1, v2);

  sub_100E6A9B4(v5, type metadata accessor for MultipartAccessoryPairingInfo);
  sub_100E6A9B4(v4, type metadata accessor for OwnedBeaconGroup);
  v6 = v0[56];
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C418);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371FC0, &v27);
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Failure writing to pairing event local storage: %{public}@", v10, 0x16u);
    sub_10000B3A8(v11, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v12);
  }

  else
  {
  }

  v15 = v0[33];
  v14 = v0[34];
  v17 = v0[29];
  v16 = v0[30];
  v18 = v0[26];
  v19 = v0[24];
  v21 = v0[19];
  v20 = v0[20];
  v23 = v0[15];
  v22 = v0[16];
  v26 = v0[14];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100E5AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for MACAddress();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = *(v7 + 64);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_100E5B000, 0, 0);
}

uint64_t sub_100E5B000()
{
  v1 = *(v0 + 64);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_100E5B0C0;
  v4 = *(v0 + 64);

  return unsafeBlocking<A>(_:)(v3, sub_100E689A8, v4, &type metadata for () + 8);
}

uint64_t sub_100E5B0C0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100E5B1D8, 0, 0);
}

uint64_t sub_100E5B1D8()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_100E5B268;

  return daemon.getter();
}

uint64_t sub_100E5B268(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v12 = *v1;
  *(v3 + 160) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 168) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AirPodsLEPairingService();
  v9 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E62554(&unk_1016B1150, 255, type metadata accessor for AirPodsLEPairingService);
  *v6 = v12;
  v6[1] = sub_100E5B44C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E5B44C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v8 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {
    v5 = sub_100E5C834;
  }

  else
  {
    v6 = v3[20];

    v5 = sub_100E5B568;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E5B568()
{
  v1 = *(v0 + 176);
  *(v0 + 26) = *(*(v0 + 64) + 72);
  return _swift_task_switch(sub_100E5B590, v1, 0);
}

uint64_t sub_100E5B590()
{
  v1 = v0[22];
  if (*(v1 + 273) == 1)
  {
    sub_100100904();
    v2 = swift_allocError();
    *v3 = 0x800000000000000ELL;
    v0[27] = v2;
    swift_willThrow();

    return _swift_task_switch(sub_100E5B7F0, 0, 0);
  }

  else
  {
    *(v1 + 273) = 1;
    type metadata accessor for CentralManager();
    v4 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_100E5B6BC;

    return static CentralManager.pairingCentralManager.getter();
  }
}

uint64_t sub_100E5B6BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = v1;

  v7 = *(v3 + 176);
  if (v1)
  {
    v8 = sub_100E5BD88;
  }

  else
  {
    v8 = sub_100E5BA38;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100E5B7F0()
{
  v1 = v0[22];

  v2 = v0[27];
  v0[6] = v2;
  v0[32] = v2;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v3 = v0[7];
    if (v3 == 0x800000000000000ELL)
    {

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000076D4(v4, qword_10177C418);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Existing pairing session in progress!", v7, 2u);
      }

      v8 = v0[6];

      v10 = v0[16];
      v9 = v0[17];

      v11 = v0[1];

      return v11();
    }

    sub_100101814(v3);
  }

  v13 = v0[8];
  v14 = v0[6];

  v15 = async function pointer to unsafeBlocking<A>(_:)[1];

  v16 = swift_task_alloc();
  v0[33] = v16;
  *v16 = v0;
  v16[1] = sub_100E5C4B4;
  v17 = v0[8];

  return unsafeBlocking<A>(_:)(v16, sub_100E689C4, v17, &type metadata for () + 8);
}

uint64_t sub_100E5BA38()
{
  v25 = *(v0 + 26);
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v21 = v3;
  v22 = *(v0 + 200);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  v23 = *(v0 + 88);
  v24 = *(v0 + 96);
  v20 = *(v0 + 80);
  v7 = *(v0 + 72);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(v4 + 16);
  v9(v3, v7, v6);
  v9(v2, v20, v6);
  v10 = *(v4 + 80);
  v11 = (v10 + 32) & ~v10;
  v12 = (v5 + v10 + v11) & ~v10;
  v13 = swift_allocObject();
  *(v0 + 224) = v13;
  *(v13 + 16) = v8;
  *(v13 + 24) = v22;
  v14 = *(v4 + 32);
  v14(v13 + v11, v21, v6);
  v14(v13 + v12, v2, v6);
  v15 = v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v23;
  *(v15 + 8) = v24;
  *(v15 + 16) = v25;
  *(v15 + 17) = 0;

  sub_10002E98C(v23, v24);
  v16 = async function pointer to withTimeout<A>(_:block:)[1];
  v17 = swift_task_alloc();
  *(v0 + 232) = v17;
  v18 = sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  *v17 = v0;
  v17[1] = sub_100E5BC60;

  return withTimeout<A>(_:block:)(v0 + 25, 0x40AAD21B3B700000, 3, &unk_1013A3580, v13, v18);
}

uint64_t sub_100E5BC60()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = *(v2 + 176);
    v5 = sub_100E5C300;
  }

  else
  {
    v6 = *(v2 + 224);
    v7 = *(v2 + 176);

    v5 = sub_100E5BF28;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100E5BD88()
{
  v1 = v0[26];
  *(v0[22] + 273) = 0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_101696FF8);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "AirPodsLEPairingService pairAirPods failed with error: %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[27] = v1;
  swift_willThrow();

  return _swift_task_switch(sub_100E5B7F0, 0, 0);
}

uint64_t sub_100E5BF28()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);

  *(v2 + 273) = 0;

  return _swift_task_switch(sub_100E5BF98, 0, 0);
}

uint64_t sub_100E5BF98()
{
  v1 = *(v0 + 64);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_100E5C058;
  v4 = *(v0 + 64);

  return unsafeBlocking<A>(_:)(v3, sub_100E689E0, v4, &type metadata for () + 8);
}

uint64_t sub_100E5C058()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100E5C170, 0, 0);
}

uint64_t sub_100E5C170()
{
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C418);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pairing has been completed for all serial numbers.", v4, 2u);
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 64);

  v7 = v6[15];
  v8 = v6[8];
  v9 = *(*(v6[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  *(v0 + 32) = v8;
  *(v0 + 40) = v9;

  v10 = v8;
  PassthroughSubject.send(_:)();

  v12 = *(v0 + 128);
  v11 = *(v0 + 136);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100E5C300()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[30];
  *(v0[22] + 273) = 0;
  if (qword_101694440 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_101696FF8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "AirPodsLEPairingService pairAirPods failed with error: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  v0[27] = v3;
  swift_willThrow();

  return _swift_task_switch(sub_100E5B7F0, 0, 0);
}

uint64_t sub_100E5C4B4()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100E5C5CC, 0, 0);
}

uint64_t sub_100E5C5CC()
{
  v20 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C418);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 256);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000136BC(0xD000000000000040, 0x8000000101371F70, &v19);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s error: %{public}@", v6, 0x16u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);
  }

  v10 = *(v0 + 256);
  v11 = *(v0 + 64);
  v12 = v11[15];
  v13 = v11[8];
  LOBYTE(v11) = *(*(v11[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo) + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_skippedClassic);
  *(v0 + 16) = v13;
  *(v0 + 24) = v11;

  v14 = v13;
  PassthroughSubject.send(_:)();

  v16 = *(v0 + 128);
  v15 = *(v0 + 136);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100E5C834()
{
  v1 = v0[20];

  v2 = v0[23];
  v0[6] = v2;
  v0[32] = v2;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if (swift_dynamicCast())
  {
    v3 = v0[7];
    if (v3 == 0x800000000000000ELL)
    {

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000076D4(v4, qword_10177C418);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Existing pairing session in progress!", v7, 2u);
      }

      v8 = v0[6];

      v10 = v0[16];
      v9 = v0[17];

      v11 = v0[1];

      return v11();
    }

    sub_100101814(v3);
  }

  v13 = v0[8];
  v14 = v0[6];

  v15 = async function pointer to unsafeBlocking<A>(_:)[1];

  v16 = swift_task_alloc();
  v0[33] = v16;
  *v16 = v0;
  v16[1] = sub_100E5C4B4;
  v17 = v0[8];

  return unsafeBlocking<A>(_:)(v16, sub_100E689C4, v17, &type metadata for () + 8);
}

void sub_100E5CA7C(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v69 = a4;
  v65 = a3;
  v68 = a2;
  v73 = a1;
  v6 = type metadata accessor for MACAddress();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  __chkstk_darwin(v6);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016BCD20, &qword_1013EAC90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v64 = &v63 - v11;
  v12 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v70 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v66 = &v63 - v17;
  __chkstk_darwin(v16);
  v19 = &v63 - v18;
  v20 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v63 - v22;
  v24 = type metadata accessor for OwnedBeaconGroup(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v71 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = (&v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v5[2];
  *v32 = v33;
  (*(v29 + 104))(v32, enum case for DispatchPredicate.onQueue(_:), v28);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v32, v28);
  if (v33)
  {
    if (qword_1016950D0 == -1)
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
  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177C418);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v63 = v35;
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Starting LE pairing", v38, 2u);
    v35 = v63;
  }

  v39 = v5[3];
  QueueSynchronizer.conditionalSync<A>(_:)();
  if (v75 & 1) != 0 || (QueueSynchronizer.conditionalSync<A>(_:)(), (v74))
  {
    if (qword_1016946F0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v35, qword_10177AD08);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_12;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "LE Pairing in progress. Not pairing.";
    goto LABEL_11;
  }

  v44 = v5[4];
  sub_100AC5D4C(v73, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10000B3A8(v23, &unk_1016AF8B0, &unk_1013A0700);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_12;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Missing beacon group to start LE pairing!";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);

LABEL_12:

    return;
  }

  v45 = v71;
  sub_100E6ADA4(v23, v71, type metadata accessor for OwnedBeaconGroup);
  v46 = v69;
  v47 = v69 >> 60;
  if (v69 >> 60 == 15)
  {
    v51 = sub_100520038();
    v52 = v64;
    sub_10112CB48(v51, v64);

    v53 = sub_1000BC4D4(&qword_1016BCD28, &qword_1013EAC98);
    v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
    v49 = v72;
    if (v54 == 1)
    {
      sub_10000B3A8(v52, &qword_1016BCD20, &qword_1013EAC90);
      v55 = 1;
      v50 = v70;
      v56 = v66;
    }

    else
    {
      sub_100016590(*v52, *(v52 + 1));
      v57 = &v52[*(v53 + 48)];
      v56 = v66;
      (*(v49 + 32))(v66, v57, v6);
      v55 = 0;
      v50 = v70;
    }

    (*(v49 + 56))(v56, v55, 1, v6);
    sub_1000D2AD8(v56, v19, &qword_1016A40D0, &unk_10138BE70);
  }

  else
  {
    v48 = v65;
    sub_100017D5C(v65, v69);
    sub_10051A590(v48, v46, v19);
    sub_100006654(v48, v46);
    v49 = v72;
    v50 = v70;
  }

  sub_1000D2A70(v19, v50, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v49 + 48))(v50, 1, v6) == 1)
  {
    sub_10000B3A8(v50, &qword_1016A40D0, &unk_10138BE70);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Invalid state. No MAC address to start LE pairing", v60, 2u);
    }
  }

  else
  {
    v61 = v47 < 0xF;
    v62 = v67;
    (*(v49 + 32))(v67, v50, v6);
    sub_100E533EC(v62, v61, v68 & 1);
    (*(v49 + 8))(v62, v6);
  }

  sub_10000B3A8(v19, &qword_1016A40D0, &unk_10138BE70);
  sub_100E6A9B4(v45, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_100E5D36C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v45 = a4;
  v44 = a3;
  v40 = a1;
  v41 = a2;
  v5 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v43 = *(v5 - 8);
  v42 = *(v43 + 64);
  __chkstk_darwin(v5 - 8);
  v46 = &v35 - v6;
  v7 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v35 - v9;
  v36 = &v35 - v9;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - v13;
  v38 = &v35 - v13;
  v15 = type metadata accessor for MACAddress();
  v35 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v35 - v20;
  v22 = *(*(v4 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
  v23 = *(v4 + 64);

  v37 = v21;
  sub_100A22DF0(v21);
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  sub_1000D2A70(v40, v10, &unk_1016A9A20, &qword_10138B280);
  (*(v16 + 16))(v19, v21, v15);
  sub_1000D2A70(v41, v46, &unk_1016AF8B0, &unk_1013A0700);
  v25 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v26 = (v8 + *(v16 + 80) + v25) & ~*(v16 + 80);
  v27 = (v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v43 + 80) + v27 + 8) & ~*(v43 + 80);
  v29 = v28 + v42;
  v30 = (v28 + v42) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  sub_1000D2AD8(v36, v31 + v25, &unk_1016A9A20, &qword_10138B280);
  v32 = v31 + v26;
  v33 = v35;
  (*(v16 + 32))(v32, v19, v35);
  *(v31 + v27) = v22;
  sub_1000D2AD8(v46, v31 + v28, &unk_1016AF8B0, &unk_1013A0700);
  *(v31 + v29) = v44;
  *(v31 + v30 + 8) = v45;

  swift_errorRetain();
  sub_10025EDD4(0, 0, v38, &unk_1013EAC88, v31);

  return (*(v16 + 8))(v37, v33);
}

uint64_t sub_100E5D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = a7;
  *(v8 + 96) = v26;
  *(v8 + 408) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v11 = type metadata accessor for AccessoryPairingAnalytics();
  *(v8 + 120) = v11;
  v12 = *(v11 - 8);
  *(v8 + 128) = v12;
  *(v8 + 136) = *(v12 + 64);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v13 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v14 = type metadata accessor for MultipartAccessoryPairingInfo(0);
  *(v8 + 184) = v14;
  v15 = *(v14 - 8);
  *(v8 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  *(v8 + 216) = v17;
  v18 = *(v17 - 8);
  *(v8 + 224) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v20 = type metadata accessor for MACAddress();
  *(v8 + 256) = v20;
  v21 = *(v20 - 8);
  *(v8 + 264) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v23 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_100E5DAE4, 0, 0);
}

uint64_t sub_100E5DAE4()
{
  v41 = v0;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[8];
  v5 = v0[9];
  v7 = type metadata accessor for Logger();
  v0[38] = sub_1000076D4(v7, qword_10177C418);
  sub_1000D2A70(v6, v1, &unk_1016A9A20, &qword_10138B280);
  v8 = *(v3 + 16);
  v0[39] = v8;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v5, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[37];
  if (v11)
  {
    v13 = v0[36];
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v14 = 136315394;
    sub_1000D2A70(v12, v13, &unk_1016A9A20, &qword_10138B280);
    v15 = type metadata accessor for OwnedBeaconRecord();
    v16 = (*(*(v15 - 8) + 48))(v13, 1, v15);
    v17 = v0[36];
    if (v16 == 1)
    {
      sub_10000B3A8(v17, &unk_1016A9A20, &qword_10138B280);
      v18 = 0xE700000000000000;
      v19 = 0x6E776F6E6B6E55;
    }

    else
    {
      v23 = v0[31];
      v24 = v0[27];
      v25 = v0[28];
      v26 = v17 + *(v15 + 20);
      v27 = v0[36];
      (*(v25 + 16))(v23, v26, v24);
      sub_100E6A9B4(v27, type metadata accessor for OwnedBeaconRecord);
      v19 = UUID.uuidString.getter();
      v18 = v28;
      (*(v25 + 8))(v23, v24);
    }

    v30 = v0[33];
    v29 = v0[34];
    v31 = v0[32];
    sub_10000B3A8(v0[37], &unk_1016A9A20, &qword_10138B280);
    v32 = sub_1000136BC(v19, v18, &v40);

    *(v14 + 4) = v32;
    *(v14 + 12) = 2082;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v30 + 8))(v29, v31);
    v36 = sub_1000136BC(v33, v35, &v40);

    *(v14 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v9, v10, "Writing pairing event for %s %{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = v0[33];
    v20 = v0[34];
    v22 = v0[32];

    (*(v21 + 8))(v20, v22);
    sub_10000B3A8(v12, &unk_1016A9A20, &qword_10138B280);
  }

  v37 = async function pointer to daemon.getter[1];
  v38 = swift_task_alloc();
  v0[41] = v38;
  *v38 = v0;
  v38[1] = sub_100E5DF0C;

  return daemon.getter();
}

uint64_t sub_100E5DF0C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 328);
  v12 = *v1;
  *(v3 + 336) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 344) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100E62554(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100E62554(&unk_1016B1030, 255, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_100E5E0F0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100E5E0F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v8 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v5 = sub_100E5F52C;
  }

  else
  {
    v6 = v3[42];

    v5 = sub_100E5E20C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E5E20C()
{
  v123 = v0;
  v1 = v0[10];
  v2 = v1[12];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v1[14];
  if (v3 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v4 = v1[11];
  v5 = v1[13];
  v6 = (v1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessorySerialNumber);
  v7 = *v6;
  v0[46] = *v6;
  v8 = v6[1];
  v0[47] = v8;
  if (v8 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v0[5] = v7;
  v0[6] = v8;

  sub_10002E98C(v5, v3);
  sub_10002E98C(v7, v8);
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100006654(v7, v8);
    sub_100006654(v5, v3);

LABEL_6:
    v9 = v0[44];
    sub_100E6259C();
    swift_allocError();
    *v10 = 3;
    swift_willThrow();
LABEL_7:

    v11 = v0[38];
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failure writing to pairing event local storage: %{public}@", v14, 0xCu);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v18 = v0[36];
    v17 = v0[37];
    v20 = v0[34];
    v19 = v0[35];
    v22 = v0[30];
    v21 = v0[31];
    v23 = v0[29];
    v24 = v0[25];
    v25 = v0[26];
    v26 = v0[22];
    v107 = v0[21];
    v110 = v0[20];
    v113 = v0[19];
    v115 = v0[18];
    v117 = v0[14];
    v120 = v0[13];

    v27 = v0[1];

    return v27();
  }

  v116 = v4;
  v29 = v0[38];
  v30 = v0[10];
  v121 = Data.trimmed.getter();
  v32 = v31;
  v33 = *(v30 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v106 = v0;
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v0[23];
    v118 = v32;
    v37 = swift_slowAlloc();
    v122[0] = swift_slowAlloc();
    *v37 = 136315394;
    *(v37 + 4) = sub_1000136BC(0xD000000000000041, 0x8000000101371ED0, v122);
    *(v37 + 12) = 2080;
    sub_100101BAC();
    v38 = Dictionary.description.getter();
    v40 = v5;
    v41 = sub_1000136BC(v38, v39, v122);

    *(v37 + 14) = v41;
    v5 = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "%sserialNumbersAndAccessoryInfo %s", v37, 0x16u);
    swift_arrayDestroy();

    v32 = v118;
  }

  if (!*(v33 + 16) || (v42 = sub_100771E30(v121, v32), (v43 & 1) == 0))
  {
    v0 = v106;
    v56 = v106[38];

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = v32;
      v61 = swift_slowAlloc();
      v122[0] = v61;
      *v59 = 136315138;
      *(v59 + 4) = sub_1000136BC(0xD000000000000041, 0x8000000101371ED0, v122);
      _os_log_impl(&_mh_execute_header, v57, v58, "%s Missing multipartInfo!", v59, 0xCu);
      sub_100007BAC(v61);
      v32 = v60;
    }

    v62 = v106[44];
    sub_100E6259C();
    swift_allocError();
    *v63 = 7;
    swift_willThrow();
    sub_100016590(v121, v32);
    sub_100006654(v7, v8);
    sub_100006654(v5, v3);
    goto LABEL_7;
  }

  v119 = v32;
  v114 = v5;
  v44 = v106[35];
  v46 = v106[25];
  v45 = v106[26];
  v47 = v106[8];
  sub_100E6A94C(*(v33 + 56) + *(v106[24] + 72) * v42, v46, type metadata accessor for MultipartAccessoryPairingInfo);

  sub_100E6ADA4(v46, v45, type metadata accessor for MultipartAccessoryPairingInfo);
  sub_1000D2A70(v47, v44, &unk_1016A9A20, &qword_10138B280);
  v48 = type metadata accessor for OwnedBeaconRecord();
  v49 = (*(*(v48 - 8) + 48))(v44, 1, v48);
  v50 = v106[35];
  v51 = v106[30];
  v52 = v106[27];
  v53 = v106[28];
  v54 = v106[22];
  if (v49 != 1)
  {
    v64 = v50 + *(v48 + 20);
    v65 = v106[35];
    (*(v53 + 16))(v106[22], v64, v106[27]);
    sub_100E6A9B4(v65, type metadata accessor for OwnedBeaconRecord);
    v111 = *(v53 + 56);
    v111(v54, 0, 1, v52);
    (*(v53 + 32))(v51, v54, v52);
    goto LABEL_24;
  }

  sub_10000B3A8(v50, &unk_1016A9A20, &qword_10138B280);
  v111 = *(v53 + 56);
  v111(v54, 1, 1, v52);
  UUID.init()();
  if ((*(v53 + 48))(v54, 1, v52) == 1)
  {
LABEL_24:
    v55 = v106;
    goto LABEL_25;
  }

  v55 = v106;
  sub_10000B3A8(v106[22], &qword_1016980D0, &unk_10138F3B0);
LABEL_25:
  v66 = v55[14];
  v67 = v55[11];
  v68 = *(v55[28] + 16);
  v68(v55[29], v55[30], v55[27]);
  sub_1000D2A70(v67, v66, &unk_1016AF8B0, &unk_1013A0700);
  v69 = type metadata accessor for OwnedBeaconGroup(0);
  if ((*(*(v69 - 8) + 48))(v66, 1, v69) == 1)
  {
    sub_10000B3A8(v55[14], &unk_1016AF8B0, &unk_1013A0700);
    v70 = 1;
  }

  else
  {
    v71 = v55[14];
    v68(v55[21], v71 + *(v69 + 24), v55[27]);
    sub_100E6A9B4(v71, type metadata accessor for OwnedBeaconGroup);
    v70 = 0;
  }

  v102 = v55[39];
  v103 = v55[40];
  v72 = v55[32];
  v73 = v55[33];
  v74 = v55[26];
  v75 = v55[23];
  v76 = v55[13];
  v108 = v55[12];
  v77 = v55[28] + 56;
  v78 = v55[9];
  v79 = v55[10];
  v111(v55[21], v70, 1, v55[27]);
  v80 = v79 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId;
  v81 = *(v79 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  v104 = *(v80 + 1);
  v112 = *(v74 + *(v75 + 28));
  v102(v76, v78, v72);
  (*(v73 + 56))(v76, 0, 1, v72);
  if (v108)
  {
    v82 = v55[12];
    swift_getErrorValue();
    v84 = v55[2];
    v83 = v55[3];
    v85 = v55[4];
    v109 = Error.localizedDescription.getter();
    v87 = v86;
  }

  else
  {
    v109 = 0;
    v87 = 0;
  }

  if (v104)
  {
    v88 = 0;
  }

  else
  {
    v88 = v81;
  }

  v105 = v55[44];
  v90 = v55[28];
  v89 = v55[29];
  v91 = v55[27];
  v92 = v55;
  v93 = v55[21];
  v94 = v92[20];
  v95 = v92[15];
  v96 = v92[13];
  v97 = *(v92 + 408);
  (*(v90 + 32))(v94, v89, v91);
  sub_1000D2AD8(v93, v94 + v95[5], &qword_1016980D0, &unk_10138F3B0);
  *(v94 + v95[6]) = v88;
  v98 = (v94 + v95[7]);
  *v98 = v121;
  v98[1] = v119;
  v99 = (v94 + v95[8]);
  *v99 = v116;
  v99[1] = v2;
  v100 = (v94 + v95[9]);
  *v100 = v114;
  v100[1] = v3;
  *(v94 + v95[10]) = v97;
  *(v94 + v95[11]) = v112;
  sub_1000D2AD8(v96, v94 + v95[12], &qword_1016A40D0, &unk_10138BE70);
  v101 = (v94 + v95[13]);
  *v101 = v109;
  v101[1] = v87;
  static Date.trustedNow.getter(v94 + v95[14]);

  return _swift_task_switch(sub_100E5ECC0, v105, 0);
}

uint64_t sub_100E5ECC0()
{
  v1 = v0[44];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = *(v1 + 136);
  sub_100E6A94C(v0[20], v2, type metadata accessor for AccessoryPairingAnalytics);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[48] = v7;
  *(v7 + 16) = v1;
  sub_100E6ADA4(v2, v7 + v6, type metadata accessor for AccessoryPairingAnalytics);
  v8 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v11 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v9 = swift_task_alloc();
  v0[49] = v9;
  *v9 = v0;
  v9[1] = sub_100E5EE0C;

  return v11(&unk_1013A5208, v7);
}

uint64_t sub_100E5EE0C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  v2[50] = v0;

  v5 = v2[48];
  if (v0)
  {
    v6 = v2[44];

    v7 = sub_100E5F280;
    v8 = v6;
  }

  else
  {

    v7 = sub_100E5EF54;
    v8 = 0;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100E5EF54()
{
  v44 = v0;
  v1 = v0[38];
  sub_100E6A94C(v0[20], v0[18], type metadata accessor for AccessoryPairingAnalytics);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[47];
  v6 = v0[44];
  v41 = v0[46];
  v7 = v0[30];
  v8 = v0[27];
  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[20];
  v12 = v0[18];
  if (v4)
  {
    v38 = v0[26];
    v13 = swift_slowAlloc();
    v36 = v8;
    v14 = swift_slowAlloc();
    v43 = v14;
    *v13 = 136315138;
    v32 = v5;
    v33 = v11;
    v15 = sub_10111CE44();
    v17 = v16;
    sub_100E6A9B4(v12, type metadata accessor for AccessoryPairingAnalytics);
    v18 = sub_1000136BC(v15, v17, &v43);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v2, v3, "Inserted %s", v13, 0xCu);
    sub_100007BAC(v14);

    sub_100006654(v41, v32);
    sub_100E6A9B4(v33, type metadata accessor for AccessoryPairingAnalytics);
    (*(v9 + 8))(v7, v36);
    v19 = v38;
  }

  else
  {

    sub_100006654(v41, v5);
    sub_100E6A9B4(v12, type metadata accessor for AccessoryPairingAnalytics);
    sub_100E6A9B4(v11, type metadata accessor for AccessoryPairingAnalytics);
    (*(v9 + 8))(v7, v8);
    v19 = v10;
  }

  sub_100E6A9B4(v19, type metadata accessor for MultipartAccessoryPairingInfo);
  v21 = v0[36];
  v20 = v0[37];
  v23 = v0[34];
  v22 = v0[35];
  v25 = v0[30];
  v24 = v0[31];
  v26 = v0[29];
  v27 = v0[25];
  v28 = v0[26];
  v29 = v0[22];
  v34 = v0[21];
  v35 = v0[20];
  v37 = v0[19];
  v39 = v0[18];
  v40 = v0[14];
  v42 = v0[13];

  v30 = v0[1];

  return v30();
}

uint64_t sub_100E5F29C()
{
  v1 = v0[46];
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[20];

  sub_100006654(v1, v2);
  sub_100E6A9B4(v8, type metadata accessor for AccessoryPairingAnalytics);
  (*(v6 + 8))(v4, v5);
  sub_100E6A9B4(v7, type metadata accessor for MultipartAccessoryPairingInfo);
  v9 = v0[50];
  v10 = v0[38];
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "Failure writing to pairing event local storage: %{public}@", v13, 0xCu);
    sub_10000B3A8(v14, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v17 = v0[36];
  v16 = v0[37];
  v19 = v0[34];
  v18 = v0[35];
  v21 = v0[30];
  v20 = v0[31];
  v22 = v0[29];
  v23 = v0[25];
  v24 = v0[26];
  v25 = v0[22];
  v28 = v0[21];
  v29 = v0[20];
  v30 = v0[19];
  v31 = v0[18];
  v32 = v0[14];
  v33 = v0[13];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100E5F52C()
{
  v1 = v0[42];

  v2 = v0[45];
  v3 = v0[38];
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure writing to pairing event local storage: %{public}@", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = v0[36];
  v9 = v0[37];
  v12 = v0[34];
  v11 = v0[35];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  v16 = v0[25];
  v17 = v0[26];
  v18 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[14];
  v26 = v0[13];

  v19 = v0[1];

  return v19();
}

void sub_100E5F74C(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v2[2];
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (qword_1016950D0 == -1)
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
  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C418);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "pairingCompleteAnalyticsEvent", v15, 2u);
  }

  v16 = v2[29];
  if (v16)
  {
    v32 = *(v2[10] + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    v17 = v32;
    type metadata accessor for Transaction();
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v17;
    v18[4] = v4;
    swift_retain_n();
    swift_retain_n();
    static Transaction.asyncTask(name:block:)();

    v19 = type metadata accessor for AnalyticsEvent(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v22 + 14) = sub_100907BEC(_swiftEmptyArrayStorage);
    UUID.init()();
    v23 = OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_startTime;
    v24 = type metadata accessor for DispatchTime();
    v25 = *(*(v24 - 8) + 56);
    v25(&v22[v23], 1, 1, v24);
    v25(&v22[OBJC_IVAR____TtC12searchpartyd14AnalyticsEvent_endTime], 1, 1, v24);
    *(v22 + 15) = 0xD00000000000002CLL;
    *(v22 + 16) = 0x800000010134D0D0;
    v26 = v2[29];
    v2[29] = v22;

    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    *(v27 + 24) = a1 & 1;

    static Transaction.asyncTask(name:block:)();
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "No analytics event!", v30, 2u);
    }
  }
}

uint64_t sub_100E5FBBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100E5FBDC, 0, 0);
}

uint64_t sub_100E5FBDC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return _swift_task_switch(sub_100E5FC48, v2, 0);
}

uint64_t sub_100E5FC48()
{
  sub_10117DE84(v0[2], v0[3]);
  v1 = v0[3];

  type metadata accessor for AnalyticsPublisher();
  v0[4] = swift_allocObject();
  swift_defaultActor_initialize();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1001D84D8;
  v3 = v0[2];

  return sub_101163F78(v3);
}

void sub_100E5FD24(uint64_t a1)
{
  v2 = v1;
  v80 = *v1;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v76 - v6;
  v8 = type metadata accessor for MACAddress();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v90 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v12;
  __chkstk_darwin(v11);
  v92 = &v76 - v13;
  v14 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v86 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v17;
  __chkstk_darwin(v16);
  v91 = &v76 - v18;
  v19 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v81 = *(v19 - 8);
  v20 = *(v81 + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v82 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v89 = &v76 - v22;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = (&v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = v2[2];
  *v27 = v28;
  (*(v24 + 104))(v27, enum case for DispatchPredicate.onQueue(_:), v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if (v28)
  {
    if (qword_1016950D0 == -1)
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
  v79 = v9;
  v30 = type metadata accessor for Logger();
  sub_1000076D4(v30, qword_10177C418);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v87 = v8;
  v88 = a1;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = v7;
    v36 = swift_slowAlloc();
    v93 = a1;
    v94 = v36;
    *v34 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v37 = String.init<A>(describing:)();
    v39 = sub_1000136BC(v37, v38, &v94);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v31, v32, "pairingFailureAnalyticsEvent %{public}s", v34, 0xCu);
    sub_100007BAC(v36);
    v7 = v35;
  }

  v40 = v2[29];
  if (v40)
  {
    v41 = v2[10];
    v42 = OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo;
    v43 = *(v41 + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    type metadata accessor for Transaction();
    v44 = swift_allocObject();
    v44[2] = v40;
    v44[3] = v43;
    v45 = v88;
    v46 = v80;
    v44[4] = v88;
    v44[5] = v46;

    swift_errorRetain();

    v80 = v43;

    static Transaction.asyncTask(name:block:)();

    v47 = v2[29];
    v2[29] = 0;

    v94 = v45;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    type metadata accessor for SPPairingSessionError(0);
    v48 = swift_dynamicCast();
    v78 = v40;
    if (v48)
    {
      v49 = v93;
      v94 = v93;
      sub_100E62554(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
      _BridgedStoredNSError.code.getter();

      if (v93 == 18)
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }
    }

    else
    {
      v50 = 2;
    }

    v77 = v50;
    v54 = type metadata accessor for OwnedBeaconRecord();
    v55 = v89;
    (*(*(v54 - 8) + 56))(v89, 1, 1, v54);
    v56 = type metadata accessor for OwnedBeaconGroup(0);
    v57 = v91;
    (*(*(v56 - 8) + 56))(v91, 1, 1, v56);
    v76 = *(v41 + v42);
    v58 = v2[8];

    v59 = v92;
    sub_100A22DF0(v92);
    v60 = type metadata accessor for TaskPriority();
    (*(*(v60 - 8) + 56))(v7, 1, 1, v60);
    v61 = v55;
    v62 = v82;
    sub_1000D2A70(v61, v82, &unk_1016A9A20, &qword_10138B280);
    v63 = v79;
    (*(v79 + 16))(v90, v59, v87);
    v64 = v57;
    v65 = v86;
    sub_1000D2A70(v64, v86, &unk_1016AF8B0, &unk_1013A0700);
    v66 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v67 = (v20 + *(v63 + 80) + v66) & ~*(v63 + 80);
    v68 = &v85[v67 + 7] & 0xFFFFFFFFFFFFFFF8;
    v69 = *(v83 + 80);
    v85 = v7;
    v70 = (v69 + v68 + 8) & ~v69;
    v71 = v70 + v84;
    v72 = (v70 + v84) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    *(v73 + 16) = 0;
    *(v73 + 24) = 0;
    sub_1000D2AD8(v62, v73 + v66, &unk_1016A9A20, &qword_10138B280);
    v74 = v73 + v67;
    v75 = v87;
    (*(v63 + 32))(v74, v90, v87);
    *(v73 + v68) = v76;
    sub_1000D2AD8(v65, v73 + v70, &unk_1016AF8B0, &unk_1013A0700);
    *(v73 + v71) = v77;
    *(v73 + v72 + 8) = v88;
    swift_errorRetain();

    sub_10025EDD4(0, 0, v85, &unk_1013EAC58, v73);

    (*(v63 + 8))(v92, v75);
    sub_10000B3A8(v91, &unk_1016AF8B0, &unk_1013A0700);
    sub_10000B3A8(v89, &unk_1016A9A20, &qword_10138B280);
  }

  else
  {
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "No analytics event!", v53, 2u);
    }
  }
}

uint64_t sub_100E606C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100E606E4, 0, 0);
}

uint64_t sub_100E606E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  swift_errorRetain();

  return _swift_task_switch(sub_100E60758, v3, 0);
}

uint64_t sub_100E60758()
{
  sub_10117DEC4(v0[2], v0[3], v0[4]);
  v2 = v0[3];
  v1 = v0[4];

  type metadata accessor for AnalyticsPublisher();
  v0[5] = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1001D9120;
  v4 = v0[2];

  return sub_101163F78(v4);
}

void sub_100E60864(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = Data.subdata(in:)();
  v8 = v7;
  v32 = v6;
  v33 = v7;
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v34 = v2;
    v17 = Data.trimmed.getter();
    v19 = v18;
    v20 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_23;
      }

      v23 = *(v5 + 16);
      v22 = *(v5 + 24);
      v21 = v22 - v23;
      if (!__OFSUB__(v22, v23))
      {
LABEL_16:
        if (v21 >= 20)
        {
          v24 = Data.subdata(in:)();
          v26 = v25;
          v32 = v24;
          v33 = v25;
          v27 = DataProtocol.intValue.getter();
          if ((v27 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v28 = v27;
            if (v27 <= 0xFF)
            {
              v29 = *a2;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v32 = *a2;
              *a2 = 0x8000000000000000;
              sub_101001740(v28, v17, v19, isUniquelyReferenced_nonNull_native);
              sub_100016590(v24, v26);
              sub_100016590(v6, v8);
              sub_100016590(v17, v19);
              v31 = *a2;
              *a2 = v32;

              return;
            }
          }

          __break(1u);
          goto LABEL_22;
        }

LABEL_23:
        __break(1u);
        return;
      }

      __break(1u);
    }

    else if (!v20)
    {
      v21 = BYTE6(v4);
      goto LABEL_16;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v21 = HIDWORD(v5) - v5;
    goto LABEL_16;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_10177C418);
  sub_100017D5C(v6, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  sub_100016590(v6, v8);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v14 = Data.hexString.getter();
    v16 = sub_1000136BC(v14, v15, &v32);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Invalid serial number %{private,mask.hash}s", v12, 0x16u);
    sub_100007BAC(v13);

    sub_100016590(v6, v8);
  }

  else
  {

    sub_100016590(v6, v8);
  }
}

void sub_100E60B78(uint64_t *a1, uint64_t a2)
{
  v47[3] = a2;
  v4 = sub_1000BC4D4(&qword_1016998A8, &qword_1013EADC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v41 - v6;
  v8 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v16 = *a1;
  v15 = a1[1];
  v17 = Data.subdata(in:)();
  v19 = v18;
  v47[0] = v17;
  v47[1] = v18;
  sub_1000E0A3C();
  if ((DataProtocol.isNull.getter() & 1) == 0)
  {
    v28 = Data.trimmed.getter();
    v30 = v29;
    v31 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_24;
      }

      v34 = *(v16 + 16);
      v33 = *(v16 + 24);
      v32 = v33 - v34;
      if (!__OFSUB__(v33, v34))
      {
LABEL_16:
        if (v32 >= 20)
        {
          v41 = v30;
          v42 = v28;
          v43 = v19;
          v44 = v2;
          v35 = Data.subdata(in:)();
          v37 = v36;
          sub_100017D5C(v35, v36);
          MACAddress.init(data:type:)();
          sub_1000D2A70(v14, v12, &qword_1016A40D0, &unk_10138BE70);
          v38 = type metadata accessor for MACAddress();
          v39 = *(v38 - 8);
          if ((*(v39 + 48))(v12, 1, v38) == 1)
          {
            sub_10000B3A8(v12, &qword_1016A40D0, &unk_10138BE70);
          }

          else
          {
            v40 = MACAddress.isNull.getter();
            (*(v39 + 8))(v12, v38);
            if ((v40 & 1) == 0)
            {
              sub_1000D2A70(v14, v7, &qword_1016A40D0, &unk_10138BE70);
              goto LABEL_22;
            }
          }

          (*(v39 + 56))(v7, 1, 1, v38);
LABEL_22:
          (*(v45 + 56))(v7, 0, 1, v46);
          sub_1001DD3D8(v7, v42, v41);
          sub_100016590(v35, v37);
          sub_100016590(v17, v43);
          sub_10000B3A8(v14, &qword_1016A40D0, &unk_10138BE70);
          return;
        }

LABEL_24:
        __break(1u);
        return;
      }

      __break(1u);
    }

    else if (!v31)
    {
      v32 = BYTE6(v15);
      goto LABEL_16;
    }

    if (__OFSUB__(HIDWORD(v16), v16))
    {
      __break(1u);
      goto LABEL_24;
    }

    v32 = HIDWORD(v16) - v16;
    goto LABEL_16;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000076D4(v20, qword_10177C418);
  sub_100017D5C(v17, v19);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  sub_100016590(v17, v19);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v47[0] = v24;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    v25 = Data.hexString.getter();
    v27 = sub_1000136BC(v25, v26, v47);

    *(v23 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Invalid serial number %{private,mask.hash}s", v23, 0x16u);
    sub_100007BAC(v24);

    sub_100016590(v17, v19);
  }

  else
  {

    sub_100016590(v17, v19);
  }
}

uint64_t sub_100E61058@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v206 = a2;
  v5 = type metadata accessor for String.Encoding();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v201 = &v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v199 = &v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v202 = &v197 - v12;
  v207 = type metadata accessor for UUID();
  v211 = *(v207 - 8);
  v13 = *(v211 + 64);
  v14 = __chkstk_darwin(v207);
  v203 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v204 = &v197 - v16;
  v17 = type metadata accessor for StableIdentifier();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for OwnedBeaconRecord();
  v21 = *(v205 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v205);
  v25 = &v197 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v200 = &v197 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v197 - v29;
  __chkstk_darwin(v28);
  v208 = &v197 - v31;
  v32 = *a1;
  v33 = a1[1];
  v209 = sub_100AA372C(v32, v33);

  sub_100E21E68(&v209);
  if (v2)
  {
    goto LABEL_78;
  }

  if (!v209[2])
  {

    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000076D4(v64, qword_10177C418);
    sub_100017D5C(v32, v33);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    sub_100016590(v32, v33);
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v209 = v68;
      *v67 = 141558275;
      *(v67 + 4) = 1752392040;
      *(v67 + 12) = 2081;
      sub_100017D5C(v32, v33);
      static String.Encoding.utf8.getter();
      v69 = String.init(data:encoding:)();
      if (!v70)
      {
        v69 = Data.hexString.getter();
      }

      v71 = v69;
      v72 = v70;
      sub_100016590(v32, v33);
      v73 = sub_1000136BC(v71, v72, &v209);

      *(v67 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v65, v66, "Missing beacon record for %{private,mask.hash}s.", v67, 0x16u);
      sub_100007BAC(v68);
    }

    v74 = v207;
    v75 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
    v76 = v206;
    (*(v211 + 56))(v206 + v75[7], 1, 1, v74);
    *v76 = xmmword_10138BBF0;
    *(v76 + 1) = xmmword_10138BBF0;
    v76[4] = v32;
    v76[5] = v33;
    v77 = (v76 + v75[8]);
    *v77 = 0;
    v77[1] = 0;
    v78 = (v76 + v75[9]);
    *v78 = 0;
    v78[1] = 0;
    (*(*(v75 - 1) + 56))(v76, 0, 1, v75);
    return sub_100017D5C(v32, v33);
  }

  sub_100E6A94C(v209 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v30, type metadata accessor for OwnedBeaconRecord);

  v34 = v208;
  sub_100E6ADA4(v30, v208, type metadata accessor for OwnedBeaconRecord);
  sub_100E6A94C(v34 + *(v205 + 24), v20, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v80 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v81 = &v20[v80[12]];
    v83 = *v81;
    v82 = *(v81 + 1);
    v84 = &v20[v80[16]];
    v85 = *v84;
    v86 = *(v84 + 1);
    v87 = &v20[v80[20]];
    v89 = *v87;
    v88 = *(v87 + 1);
    v90 = v207;
    (*(v211 + 32))(v203, v20, v207);
    v209 = v85;
    v210 = v86;
    sub_1000DF96C();
    v91 = Data.init<A>(hexString:)();
    if (v92 >> 60 == 15)
    {

LABEL_28:

LABEL_29:
      v115 = v208;
      (*(v211 + 8))(v203, v90);
      sub_100E6A9B4(v115, type metadata accessor for OwnedBeaconRecord);
      v116 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
      return (*(*(v116 - 8) + 56))(v206, 1, 1, v116);
    }

    v111 = v91;
    v112 = v92;
    v209 = v83;
    v210 = v82;
    v113 = Data.init<A>(hexString:)();
    if (v114 >> 60 == 15)
    {
      sub_100006654(v111, v112);
      goto LABEL_28;
    }

    v121 = v113;
    v122 = v114;
    v209 = v89;
    v210 = v88;
    v123 = Data.init<A>(hexString:)();
    if (v124 >> 60 == 15)
    {
      sub_100006654(v111, v112);
      sub_100006654(v121, v122);
      goto LABEL_29;
    }

    v153 = v123;
    v204 = v124;
    v154 = v211;
    v155 = v199;
    (*(v211 + 16))(v199, v203, v90);
    (*(v154 + 56))(v155, 0, 1, v90);
    v156 = v208;
    v157 = sub_100D5F668();
    v205 = v153;
    if (v158 >> 60 == 15)
    {
      v159 = 0;
      v201 = 0;
    }

    else
    {
      v171 = v157;
      v172 = v158;
      v173 = sub_100313B54(v157, v158);
      v175 = v174;
      sub_100006654(v171, v172);
      v159 = Data.hexString.getter();
      v201 = v176;
      v177 = v173;
      v3 = 0;
      v153 = v205;
      v156 = v208;
      sub_100016590(v177, v175);
    }

    v178 = sub_100D5F668();
    v202 = v159;
    if (v179 >> 60 == 15)
    {
      v200 = 0;
      v180 = 0;
LABEL_74:
      (*(v211 + 8))(v203, v207);
      sub_100E6A9B4(v156, type metadata accessor for OwnedBeaconRecord);
      v191 = v206;
      *v206 = v111;
      v191[1] = v112;
      v191[2] = v121;
      v191[3] = v122;
      v192 = v204;
      v191[4] = v153;
      v191[5] = v192;
      v193 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
      sub_1000D2AD8(v199, v191 + v193[7], &qword_1016980D0, &unk_10138F3B0);
      v194 = (v191 + v193[8]);
      v195 = v201;
      *v194 = v202;
      v194[1] = v195;
      v196 = (v191 + v193[9]);
      *v196 = v200;
      v196[1] = v180;
      return (*(*(v193 - 1) + 56))(v191, 0, 1, v193);
    }

    v181 = v179 >> 62;
    v198 = v3;
    if ((v179 >> 62) > 1)
    {
      if (v181 != 2)
      {
        goto LABEL_72;
      }

      v185 = *(v178 + 16);
      v184 = *(v178 + 24);
      v151 = __OFSUB__(v184, v185);
      v186 = v184 - v185;
      if (!v151)
      {
LABEL_70:
        v183 = v179;
        v182 = v178;
        if (v186 >= -1)
        {
          goto LABEL_73;
        }

        __break(1u);
LABEL_72:
        v183 = v179;
        v182 = v178;
        goto LABEL_73;
      }

      __break(1u);
    }

    else if (!v181)
    {
      v182 = v178;
      v183 = v179;
LABEL_73:
      v187 = Data.subdata(in:)();
      v189 = v188;
      sub_100006654(v182, v183);
      v200 = Data.hexString.getter();
      v180 = v190;
      sub_100016590(v187, v189);
      v156 = v208;
      v153 = v205;
      goto LABEL_74;
    }

    LODWORD(v186) = HIDWORD(v178) - v178;
    if (__OFSUB__(HIDWORD(v178), v178))
    {
LABEL_77:
      __break(1u);
LABEL_78:

      __break(1u);
      return result;
    }

    v186 = v186;
    goto LABEL_70;
  }

  v36 = v207;
  if (EnumCaseMultiPayload == 2)
  {
    v37 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v38 = &v20[v37[12]];
    v40 = *v38;
    v39 = *(v38 + 1);
    v41 = &v20[v37[16]];
    v43 = *v41;
    v42 = *(v41 + 1);
    v44 = &v20[v37[20]];
    v45 = *v44;
    v46 = *(v44 + 1);
    v47 = *&v20[v37[28] + 8];

    (*(v211 + 32))(v204, v20, v36);
    v209 = v45;
    v210 = v46;
    sub_1000DF96C();
    v48 = Data.init<A>(hexString:)();
    if (v49 >> 60 == 15)
    {

      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000076D4(v50, qword_10177C418);
      v51 = v208;
      v52 = v200;
      sub_100E6A94C(v208, v200, type metadata accessor for OwnedBeaconRecord);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v209 = v56;
        *v55 = 141558275;
        *(v55 + 4) = 1752392040;
        *(v55 + 12) = 2081;
        v57 = v52 + *(v205 + 24);
        v58 = sub_1010DA578();
        v59 = v52;
        v61 = v60;
        sub_100E6A9B4(v59, type metadata accessor for OwnedBeaconRecord);
        v62 = sub_1000136BC(v58, v61, &v209);

        *(v55 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "Invalid serialNumber for %{private,mask.hash}s", v55, 0x16u);
        sub_100007BAC(v56);

        (*(v211 + 8))(v204, v36);
        v63 = v208;
      }

      else
      {

        sub_100E6A9B4(v52, type metadata accessor for OwnedBeaconRecord);
        (*(v211 + 8))(v204, v36);
        v63 = v51;
      }

      sub_100E6A9B4(v63, type metadata accessor for OwnedBeaconRecord);
      v119 = v206;
      v120 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
      return (*(*(v120 - 8) + 56))(v119, 1, 1, v120);
    }

    v104 = v48;
    v105 = v49;
    if (v42)
    {
      v209 = v43;
      v210 = v42;
      v106 = Data.init<A>(hexString:)();
      v108 = v107;
      if (v39)
      {
LABEL_25:
        v209 = v40;
        v210 = v39;
        v109 = Data.init<A>(hexString:)();
        v203 = v110;
LABEL_38:
        v198 = 0;
        v125 = v211;
        v126 = v202;
        (*(v211 + 16))(v202, v204, v36);
        (*(v125 + 56))(v126, 0, 1, v36);
        v127 = v208;
        v128 = sub_100D5F668();
        v205 = v108;
        if (v129 >> 60 == 15)
        {
          v130 = 0;
          v131 = 0;
        }

        else
        {
          v132 = v128;
          v133 = v129;
          v134 = sub_100313B54(v128, v129);
          v135 = v109;
          v137 = v136;
          sub_100006654(v132, v133);
          v130 = Data.hexString.getter();
          v131 = v138;
          v139 = v137;
          v109 = v135;
          v127 = v208;
          sub_100016590(v134, v139);
        }

        v140 = sub_100D5F668();
        v201 = v131;
        if (v141 >> 60 == 15)
        {
          v142 = v104;
          v104 = v106;
          v143 = 0;
          v144 = 0;
LABEL_57:
          (*(v211 + 8))(v204, v207);
          sub_100E6A9B4(v127, type metadata accessor for OwnedBeaconRecord);
          v164 = v205;
          v165 = v206;
          *v206 = v104;
          v165[1] = v164;
          v166 = v203;
          v165[2] = v109;
          v165[3] = v166;
          v165[4] = v142;
          v165[5] = v105;
          v167 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
          sub_1000D2AD8(v202, v165 + v167[7], &qword_1016980D0, &unk_10138F3B0);
          v168 = (v165 + v167[8]);
          v169 = v201;
          *v168 = v130;
          v168[1] = v169;
          v170 = (v165 + v167[9]);
          *v170 = v143;
          v170[1] = v144;
          return (*(*(v167 - 1) + 56))(v165, 0, 1, v167);
        }

        v145 = v141 >> 62;
        v200 = v130;
        if ((v141 >> 62) > 1)
        {
          if (v145 != 2)
          {
            goto LABEL_55;
          }

          v150 = *(v140 + 16);
          v149 = *(v140 + 24);
          v151 = __OFSUB__(v149, v150);
          v152 = v149 - v150;
          if (!v151)
          {
            v142 = v104;
LABEL_53:
            v146 = v109;
            v104 = v106;
            v148 = v141;
            v147 = v140;
            if (v152 >= -1)
            {
              goto LABEL_56;
            }

            __break(1u);
LABEL_55:
            v146 = v109;
            v142 = v104;
            v104 = v106;
            v148 = v141;
            v147 = v140;
            goto LABEL_56;
          }

          __break(1u);
        }

        else
        {
          if (!v145)
          {
            v146 = v109;
            v142 = v104;
            v104 = v106;
            v147 = v140;
            v148 = v141;
LABEL_56:
            v160 = Data.subdata(in:)();
            v162 = v161;
            sub_100006654(v147, v148);
            v143 = Data.hexString.getter();
            v144 = v163;
            sub_100016590(v160, v162);
            v127 = v208;
            v109 = v146;
            v130 = v200;
            goto LABEL_57;
          }

          LODWORD(v152) = HIDWORD(v140) - v140;
          if (!__OFSUB__(HIDWORD(v140), v140))
          {
            v142 = v104;
            v152 = v152;
            goto LABEL_53;
          }
        }

        __break(1u);
        goto LABEL_77;
      }
    }

    else
    {
      v106 = 0;
      v108 = 0xF000000000000000;
      if (v39)
      {
        goto LABEL_25;
      }
    }

    v109 = 0;
    v203 = 0xF000000000000000;
    goto LABEL_38;
  }

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for Logger();
  sub_1000076D4(v93, qword_10177C418);
  sub_100E6A94C(v34, v25, type metadata accessor for OwnedBeaconRecord);
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v209 = v97;
    *v96 = 141558275;
    *(v96 + 4) = 1752392040;
    *(v96 + 12) = 2081;
    v98 = &v25[*(v205 + 24)];
    v99 = sub_1010DA578();
    v101 = v100;
    v198 = 0;
    sub_100E6A9B4(v25, type metadata accessor for OwnedBeaconRecord);
    v102 = sub_1000136BC(v99, v101, &v209);

    *(v96 + 14) = v102;
    _os_log_impl(&_mh_execute_header, v94, v95, "Invalid beacon %{private,mask.hash}s", v96, 0x16u);
    sub_100007BAC(v97);

    v103 = v208;
  }

  else
  {

    sub_100E6A9B4(v25, type metadata accessor for OwnedBeaconRecord);
    v103 = v34;
  }

  sub_100E6A9B4(v103, type metadata accessor for OwnedBeaconRecord);
  v117 = v206;
  v118 = type metadata accessor for AirPodsUnpairData.DeviceUnpairData(0);
  (*(*(v118 - 8) + 56))(v117, 1, 1, v118);
  return sub_100E6A9B4(v20, type metadata accessor for StableIdentifier);
}

uint64_t sub_100E62284()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100E606C0(v2, v3, v5);
}

uint64_t sub_100E62330(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for MACAddress() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700) - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v9);
  v16 = *(v1 + (v12 & 0xFFFFFFFFFFFFFFF8) + 8);
  v17 = *(v1 + v12);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100014744;

  return sub_100E5D7B4(a1, v13, v14, v1 + v5, v1 + v8, v15, v1 + v11, v17);
}

uint64_t sub_100E62554(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100E6259C()
{
  result = qword_1016BCD18;
  if (!qword_1016BCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BCD18);
  }

  return result;
}

Swift::Int sub_100E625F0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for OwnedBeaconRecord();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for OwnedBeaconRecord() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100E633EC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100E6271C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100E6271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v108 = &v99 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v99 - v16;
  __chkstk_darwin(v15);
  v113 = &v99 - v18;
  v125 = type metadata accessor for Date();
  v19 = *(v125 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v125);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v124 = &v99 - v24;
  v117 = type metadata accessor for OwnedBeaconRecord();
  v25 = *(*(v117 - 8) + 64);
  v26 = __chkstk_darwin(v117);
  v116 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v127 = (&v99 - v29);
  result = __chkstk_darwin(v28);
  v33 = (&v99 - v32);
  v101 = a2;
  if (a3 != a2)
  {
    v107 = v12;
    v123 = (v19 + 56);
    v126 = (v19 + 48);
    v34 = *a4;
    v106 = (v19 + 32);
    v119 = (v19 + 8);
    v35 = *(v31 + 72);
    v36 = v34 + v35 * (a3 - 1);
    v114 = -v35;
    v115 = v34;
    v37 = a1 - a3;
    v100 = v35;
    v38 = v34 + v35 * a3;
    v109 = xmmword_101385D80;
    v112 = v17;
    v39 = v113;
    v118 = v23;
    v120 = (&v99 - v32);
    do
    {
      v105 = a3;
      v102 = v38;
      v40 = v38;
      v103 = v37;
      v41 = v37;
      v104 = v36;
      while (1)
      {
        v122 = v41;
        sub_100E6A94C(v40, v33, type metadata accessor for OwnedBeaconRecord);
        sub_100E6A94C(v36, v127, type metadata accessor for OwnedBeaconRecord);
        v42 = objc_autoreleasePoolPush();
        v43 = *v33;
        v44 = v33[1];
        v45 = v44 >> 62;
        v121 = v40;
        if ((v44 >> 62) > 1)
        {
          if (v45 != 2 || *(v43 + 16) == *(v43 + 24))
          {
LABEL_18:
            v54 = v125;
LABEL_22:
            v64 = *v123;
            (*v123)(v39, 1, 1, v54);
            goto LABEL_23;
          }
        }

        else if (v45)
        {
          if (v43 == v43 >> 32)
          {
            goto LABEL_18;
          }
        }

        else if ((v44 & 0xFF000000000000) == 0)
        {
          goto LABEL_18;
        }

        v46 = objc_autoreleasePoolPush();
        v47 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v43, v44);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v128 = 0;
        v49 = [v47 initForReadingFromData:isa error:&v128];

        if (!v49)
        {
          v57 = v128;
          v58 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v43, v44);
          static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v59 = swift_allocObject();
          *(v59 + 16) = v109;
          v128 = v58;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v60 = String.init<A>(describing:)();
          v62 = v61;
          *(v59 + 56) = &type metadata for String;
          *(v59 + 64) = sub_100008C00();
          *(v59 + 32) = v60;
          *(v59 + 40) = v62;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v49 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v110 = 0;
LABEL_21:
          v39 = v113;
          v54 = v125;

          objc_autoreleasePoolPop(v46);
          v17 = v112;
          goto LABEL_22;
        }

        v50 = v128;
        sub_100016590(v43, v44);
        [v49 _enableStrictSecureDecodingMode];
        v51 = [objc_allocWithZone(CKRecord) initWithCoder:v49];
        if (!v51)
        {
          static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v63 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          goto LABEL_21;
        }

        v52 = v51;

        objc_autoreleasePoolPop(v46);
        v53 = [v52 creationDate];

        v39 = v113;
        v54 = v125;
        if (v53)
        {
          v55 = v108;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v56 = 0;
        }

        else
        {
          v56 = 1;
          v55 = v108;
        }

        v17 = v112;
        v64 = *v123;
        (*v123)(v55, v56, 1, v54);
        sub_1000D2AD8(v55, v39, &unk_101696900, &unk_10138B1E0);
        v65 = *v126;
        if ((*v126)(v39, 1, v54) != 1)
        {
          (*v106)(v124, v39, v54);
          goto LABEL_25;
        }

LABEL_23:
        Date.init()();
        v65 = *v126;
        if ((*v126)(v39, 1, v54) != 1)
        {
          sub_10000B3A8(v39, &unk_101696900, &unk_10138B1E0);
        }

LABEL_25:
        objc_autoreleasePoolPop(v42);
        v66 = objc_autoreleasePoolPush();
        v67 = v66;
        v68 = *v127;
        v69 = v127[1];
        v70 = v69 >> 62;
        if ((v69 >> 62) > 1)
        {
          if (v70 != 2 || *(v68 + 16) == *(v68 + 24))
          {
LABEL_36:
            v79 = v125;
LABEL_40:
            v64(v17, 1, 1, v79);
            v89 = v118;
            goto LABEL_41;
          }
        }

        else if (v70)
        {
          if (v68 == v68 >> 32)
          {
            goto LABEL_36;
          }
        }

        else if ((v69 & 0xFF000000000000) == 0)
        {
          goto LABEL_36;
        }

        v111 = v66;
        v71 = objc_autoreleasePoolPush();
        v72 = objc_allocWithZone(NSKeyedUnarchiver);
        sub_100017D5C(v68, v69);
        v73 = Data._bridgeToObjectiveC()().super.isa;
        v128 = 0;
        v74 = [v72 initForReadingFromData:v73 error:&v128];

        if (!v74)
        {
          v82 = v128;
          v83 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100016590(v68, v69);
          static os_log_type_t.error.getter();
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v84 = swift_allocObject();
          *(v84 + 16) = v109;
          v128 = v83;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v85 = String.init<A>(describing:)();
          v87 = v86;
          *(v84 + 56) = &type metadata for String;
          *(v84 + 64) = sub_100008C00();
          *(v84 + 32) = v85;
          *(v84 + 40) = v87;
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v74 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v110 = 0;
LABEL_39:
          v39 = v113;
          v79 = v125;

          objc_autoreleasePoolPop(v71);
          v67 = v111;
          v17 = v112;
          goto LABEL_40;
        }

        v75 = v128;
        sub_100016590(v68, v69);
        [v74 _enableStrictSecureDecodingMode];
        v76 = [objc_allocWithZone(CKRecord) initWithCoder:v74];
        if (!v76)
        {
          static os_log_type_t.error.getter();
          sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
          v88 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          goto LABEL_39;
        }

        v77 = v76;

        objc_autoreleasePoolPop(v71);
        v78 = [v77 creationDate];

        v39 = v113;
        v79 = v125;
        if (v78)
        {
          v80 = v107;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v81 = 0;
        }

        else
        {
          v81 = 1;
          v80 = v107;
        }

        v17 = v112;
        v64(v80, v81, 1, v79);
        sub_1000D2AD8(v80, v17, &unk_101696900, &unk_10138B1E0);
        if (v65(v17, 1, v79) != 1)
        {
          v90 = v39;
          v89 = v118;
          v91 = v17;
          (*v106)(v118, v17, v79);
          v67 = v111;
          goto LABEL_43;
        }

        v89 = v118;
        v67 = v111;
LABEL_41:
        v90 = v39;
        Date.init()();
        v91 = v17;
        if (v65(v17, 1, v79) != 1)
        {
          sub_10000B3A8(v17, &unk_101696900, &unk_10138B1E0);
        }

LABEL_43:
        objc_autoreleasePoolPop(v67);
        v92 = v124;
        v93 = Date.compare(_:)();
        v94 = *v119;
        (*v119)(v89, v79);
        v94(v92, v79);
        sub_100E6A9B4(v127, type metadata accessor for OwnedBeaconRecord);
        v33 = v120;
        result = sub_100E6A9B4(v120, type metadata accessor for OwnedBeaconRecord);
        if (v93 != 1)
        {
          break;
        }

        v95 = v122;
        if (!v115)
        {
          __break(1u);
        }

        v96 = v121;
        v97 = v116;
        sub_100E6ADA4(v121, v116, type metadata accessor for OwnedBeaconRecord);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100E6ADA4(v97, v36, type metadata accessor for OwnedBeaconRecord);
        v36 += v114;
        v40 = v96 + v114;
        v98 = __CFADD__(v95, 1);
        v41 = v95 + 1;
        v17 = v91;
        v39 = v90;
        if (v98)
        {
          goto LABEL_5;
        }
      }

      v17 = v91;
      v39 = v90;
LABEL_5:
      a3 = v105 + 1;
      v36 = v104 + v100;
      v37 = v103 - 1;
      v38 = v102 + v100;
    }

    while (v105 + 1 != v101);
  }

  return result;
}

void sub_100E633EC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v258 = a1;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v251 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v251 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v251 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v251 - v20;
  v22 = __chkstk_darwin(v19);
  v260 = &v251 - v23;
  v24 = __chkstk_darwin(v22);
  v259 = &v251 - v25;
  v26 = __chkstk_darwin(v24);
  v270 = &v251 - v27;
  __chkstk_darwin(v26);
  v269 = &v251 - v28;
  v290 = type metadata accessor for Date();
  v29 = *(v290 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v290);
  v288 = &v251 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v295 = &v251 - v34;
  v35 = __chkstk_darwin(v33);
  v275 = &v251 - v36;
  v37 = __chkstk_darwin(v35);
  v277 = &v251 - v38;
  v39 = __chkstk_darwin(v37);
  v254 = &v251 - v40;
  __chkstk_darwin(v39);
  v256 = &v251 - v41;
  v287 = type metadata accessor for OwnedBeaconRecord();
  v271 = *(v287 - 8);
  v42 = *(v271 + 64);
  v43 = __chkstk_darwin(v287);
  v263 = &v251 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v286 = &v251 - v46;
  v47 = __chkstk_darwin(v45);
  v298 = (&v251 - v48);
  v49 = __chkstk_darwin(v47);
  v294 = (&v251 - v50);
  v51 = __chkstk_darwin(v49);
  v281 = (&v251 - v52);
  v53 = __chkstk_darwin(v51);
  v276 = (&v251 - v54);
  v55 = __chkstk_darwin(v53);
  v253 = (&v251 - v56);
  __chkstk_darwin(v55);
  v255 = (&v251 - v57);
  v58 = a3[1];
  if (v58 >= 1)
  {
    v291 = v18;
    v59 = 0;
    v289 = (v29 + 8);
    v296 = (v29 + 56);
    v297 = (v29 + 48);
    v60 = _swiftEmptyArrayStorage;
    v274 = (v29 + 32);
    v279 = xmmword_101385D80;
    v252 = a3;
    v257 = a4;
    v273 = v12;
    v272 = v15;
    v283 = v21;
    v61 = v290;
LABEL_4:
    v264 = v60;
    v265 = v59;
    if (v59 + 1 >= v58)
    {
      v82 = v59 + 1;
      goto LABEL_69;
    }

    v278 = v58;
    v62 = *a3;
    v63 = *(v271 + 72);
    v64 = v5;
    v65 = *a3 + v63 * (v59 + 1);
    v66 = v255;
    sub_100E6A94C(v65, v255, type metadata accessor for OwnedBeaconRecord);
    v292 = v63;
    v67 = v62 + v63 * v59;
    v68 = v253;
    sub_100E6A94C(v67, v253, type metadata accessor for OwnedBeaconRecord);
    a4 = objc_autoreleasePoolPush();
    sub_100E7AB5C(v66, v256);
    if (v64)
    {
      goto LABEL_225;
    }

    objc_autoreleasePoolPop(a4);
    v69 = objc_autoreleasePoolPush();
    v70 = v254;
    sub_100E7AB5C(v68, v254);
    v280 = 0;
    objc_autoreleasePoolPop(v69);
    v71 = v256;
    v285 = Date.compare(_:)();
    v72 = v290;
    v73 = *v289;
    (*v289)(v70, v290);
    v284 = v73;
    v73(v71, v72);
    v29 = type metadata accessor for OwnedBeaconRecord;
    sub_100E6A9B4(v68, type metadata accessor for OwnedBeaconRecord);
    sub_100E6A9B4(v255, type metadata accessor for OwnedBeaconRecord);
    v74 = v265 + 2;
    v75 = (v62 + v292 * (v265 + 2));
    v21 = v283;
    while (1)
    {
      v82 = v278;
      if (v278 == v74)
      {
LABEL_54:
        a3 = v252;
        a4 = v257;
        v5 = v280;
        if (v285 != 1)
        {
          goto LABEL_67;
        }

        if (v82 < v265)
        {
          goto LABEL_215;
        }

        if (v265 < v82)
        {
          v135 = v292 * (v82 - 1);
          v136 = v82 * v292;
          v137 = v82;
          v138 = v265;
          v139 = v265 * v292;
          do
          {
            if (v138 != --v137)
            {
              v140 = *a3;
              if (!*a3)
              {
                goto LABEL_221;
              }

              v141 = v82;
              v29 = v140 + v139;
              sub_100E6ADA4(v140 + v139, v263, type metadata accessor for OwnedBeaconRecord);
              if (v139 < v135 || v29 >= v140 + v136)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v139 != v135)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_100E6ADA4(v263, v140 + v135, type metadata accessor for OwnedBeaconRecord);
              v21 = v283;
              v82 = v141;
            }

            ++v138;
            v135 -= v292;
            v136 -= v292;
            v139 += v292;
          }

          while (v138 < v137);
          a4 = v257;
          v61 = v290;
          v5 = v280;
        }

        else
        {
LABEL_67:
          v61 = v290;
        }

LABEL_69:
        v142 = a3[1];
        if (v82 >= v142)
        {
          goto LABEL_78;
        }

        if (__OFSUB__(v82, v265))
        {
          goto LABEL_214;
        }

        if (v82 - v265 >= a4)
        {
LABEL_78:
          v59 = v82;
          goto LABEL_79;
        }

        if (__OFADD__(v265, a4))
        {
          goto LABEL_216;
        }

        if ((v265 + a4) >= v142)
        {
          v143 = a3[1];
        }

        else
        {
          v143 = v265 + a4;
        }

        if (v143 >= v265)
        {
          if (v82 == v143)
          {
            goto LABEL_78;
          }

          v280 = v5;
          v188 = *a3;
          v189 = *(v271 + 72);
          v190 = (*a3 + v189 * (v82 - 1));
          v284 = -v189;
          v191 = v265 - v82;
          v285 = v188;
          v261 = v189;
          v192 = v188 + v82 * v189;
          v262 = v143;
LABEL_132:
          v278 = v82;
          v266 = v192;
          v267 = v191;
          v193 = v191;
          v268 = v190;
          while (2)
          {
            v292 = v193;
            v194 = v294;
            sub_100E6A94C(v192, v294, type metadata accessor for OwnedBeaconRecord);
            sub_100E6A94C(v190, v298, type metadata accessor for OwnedBeaconRecord);
            v293 = objc_autoreleasePoolPush();
            v195 = *v194;
            v196 = v194[1];
            v197 = v196 >> 62;
            if ((v196 >> 62) > 1)
            {
              v198 = v291;
              if (v197 == 2 && *(v195 + 16) != *(v195 + 24))
              {
                goto LABEL_141;
              }

LABEL_148:
              v216 = *v296;
              (*v296)(v21, 1, 1, v61);
              goto LABEL_149;
            }

            v198 = v291;
            if (v197)
            {
              if (v195 == v195 >> 32)
              {
                goto LABEL_148;
              }
            }

            else if ((v196 & 0xFF000000000000) == 0)
            {
              goto LABEL_148;
            }

LABEL_141:
            v199 = objc_autoreleasePoolPush();
            v200 = objc_allocWithZone(NSKeyedUnarchiver);
            sub_100017D5C(v195, v196);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v299 = 0;
            v202 = [v200 initForReadingFromData:isa error:&v299];

            if (v202)
            {
              v203 = v299;
              sub_100016590(v195, v196);
              [v202 _enableStrictSecureDecodingMode];
              v204 = [objc_allocWithZone(CKRecord) initWithCoder:v202];
              if (v204)
              {
                v205 = v204;

                objc_autoreleasePoolPop(v199);
                v206 = [v205 creationDate];

                v21 = v283;
                if (v206)
                {
                  v207 = v272;
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v208 = 0;
                }

                else
                {
                  v208 = 1;
                  v207 = v272;
                }

                v61 = v290;
                v216 = *v296;
                (*v296)(v207, v208, 1, v290);
                sub_1000D2AD8(v207, v21, &unk_101696900, &unk_10138B1E0);
                v217 = *v297;
                if ((*v297)(v21, 1, v61) != 1)
                {
                  (*v274)(v295, v21, v61);
                  goto LABEL_151;
                }

LABEL_149:
                Date.init()();
                v217 = *v297;
                if ((*v297)(v21, 1, v61) != 1)
                {
                  sub_10000B3A8(v21, &unk_101696900, &unk_10138B1E0);
                }

LABEL_151:
                objc_autoreleasePoolPop(v293);
                v293 = objc_autoreleasePoolPush();
                v218 = *v298;
                v219 = v298[1];
                v220 = v219 >> 62;
                if ((v219 >> 62) > 1)
                {
                  if (v220 == 2 && *(v218 + 16) != *(v218 + 24))
                  {
                    goto LABEL_157;
                  }

LABEL_162:
                  v231 = v288;
                }

                else
                {
                  if (v220)
                  {
                    if (v218 == v218 >> 32)
                    {
                      goto LABEL_162;
                    }
                  }

                  else if ((v219 & 0xFF000000000000) == 0)
                  {
                    goto LABEL_162;
                  }

LABEL_157:
                  v282 = v216;
                  v221 = objc_autoreleasePoolPush();
                  v222 = objc_allocWithZone(NSKeyedUnarchiver);
                  sub_100017D5C(v218, v219);
                  v223 = Data._bridgeToObjectiveC()().super.isa;
                  v299 = 0;
                  v224 = [v222 initForReadingFromData:v223 error:&v299];

                  if (v224)
                  {
                    v225 = v299;
                    sub_100016590(v218, v219);
                    [v224 _enableStrictSecureDecodingMode];
                    v226 = [objc_allocWithZone(CKRecord) initWithCoder:v224];
                    if (v226)
                    {
                      v227 = v226;

                      objc_autoreleasePoolPop(v221);
                      v228 = [v227 creationDate];

                      v198 = v291;
                      v21 = v283;
                      if (v228)
                      {
                        v229 = v273;
                        static Date._unconditionallyBridgeFromObjectiveC(_:)();

                        v230 = 0;
                      }

                      else
                      {
                        v230 = 1;
                        v229 = v273;
                      }

                      v61 = v290;
                      v231 = v288;
                      v282(v229, v230, 1, v290);
                      sub_1000D2AD8(v229, v198, &unk_101696900, &unk_10138B1E0);
                      if (v217(v198, 1, v61) != 1)
                      {
                        v245 = v198;
                        v239 = v21;
                        (*v274)(v231, v245, v61);
                        goto LABEL_170;
                      }

LABEL_167:
                      Date.init()();
                      if (v217(v198, 1, v61) == 1)
                      {
                        v239 = v21;
                      }

                      else
                      {
                        v240 = v198;
                        v239 = v21;
                        sub_10000B3A8(v240, &unk_101696900, &unk_10138B1E0);
                      }

LABEL_170:
                      objc_autoreleasePoolPop(v293);
                      v241 = v295;
                      v29 = Date.compare(_:)();
                      v242 = *v289;
                      (*v289)(v231, v61);
                      v242(v241, v61);
                      a4 = type metadata accessor for OwnedBeaconRecord;
                      sub_100E6A9B4(v298, type metadata accessor for OwnedBeaconRecord);
                      sub_100E6A9B4(v294, type metadata accessor for OwnedBeaconRecord);
                      if (v29 == 1)
                      {
                        v243 = v292;
                        if (!v285)
                        {
                          __break(1u);
LABEL_220:
                          __break(1u);
LABEL_221:
                          __break(1u);
LABEL_222:
                          __break(1u);
LABEL_223:
                          __break(1u);
                        }

                        v29 = type metadata accessor for OwnedBeaconRecord;
                        a4 = v286;
                        sub_100E6ADA4(v192, v286, type metadata accessor for OwnedBeaconRecord);
                        swift_arrayInitWithTakeFrontToBack();
                        sub_100E6ADA4(a4, v190, type metadata accessor for OwnedBeaconRecord);
                        v190 = v284 + v190;
                        v192 += v284;
                        v244 = __CFADD__(v243, 1);
                        v193 = v243 + 1;
                        v21 = v239;
                        if (v244)
                        {
                          goto LABEL_131;
                        }

                        continue;
                      }

                      v21 = v239;
LABEL_131:
                      v82 = v278 + 1;
                      v190 = &v268[v261];
                      v191 = v267 - 1;
                      v192 = v266 + v261;
                      v59 = v262;
                      if (v278 + 1 != v262)
                      {
                        goto LABEL_132;
                      }

                      a3 = v252;
                      v5 = v280;
LABEL_79:
                      if (v59 < v265)
                      {
                        goto LABEL_213;
                      }

                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        v60 = v264;
                      }

                      else
                      {
                        v60 = sub_100A5B430(0, *(v264 + 2) + 1, 1, v264);
                      }

                      v29 = *(v60 + 2);
                      v144 = *(v60 + 3);
                      a4 = v29 + 1;
                      v145 = v5;
                      if (v29 >= v144 >> 1)
                      {
                        v60 = sub_100A5B430((v144 > 1), v29 + 1, 1, v60);
                      }

                      *(v60 + 2) = a4;
                      v146 = &v60[16 * v29];
                      *(v146 + 4) = v265;
                      *(v146 + 5) = v59;
                      v5 = *v258;
                      if (!*v258)
                      {
                        goto LABEL_223;
                      }

                      if (v29)
                      {
                        while (2)
                        {
                          v29 = a4 - 1;
                          if (a4 >= 4)
                          {
                            v151 = &v60[16 * a4 + 32];
                            v152 = *(v151 - 64);
                            v153 = *(v151 - 56);
                            v157 = __OFSUB__(v153, v152);
                            v154 = v153 - v152;
                            if (v157)
                            {
                              goto LABEL_200;
                            }

                            v156 = *(v151 - 48);
                            v155 = *(v151 - 40);
                            v157 = __OFSUB__(v155, v156);
                            v149 = v155 - v156;
                            v150 = v157;
                            if (v157)
                            {
                              goto LABEL_201;
                            }

                            v158 = &v60[16 * a4];
                            v160 = *v158;
                            v159 = *(v158 + 1);
                            v157 = __OFSUB__(v159, v160);
                            v161 = v159 - v160;
                            if (v157)
                            {
                              goto LABEL_203;
                            }

                            v157 = __OFADD__(v149, v161);
                            v162 = v149 + v161;
                            if (v157)
                            {
                              goto LABEL_206;
                            }

                            if (v162 >= v154)
                            {
                              v180 = &v60[16 * v29 + 32];
                              v182 = *v180;
                              v181 = *(v180 + 1);
                              v157 = __OFSUB__(v181, v182);
                              v183 = v181 - v182;
                              if (v157)
                              {
                                goto LABEL_210;
                              }

                              if (v149 < v183)
                              {
                                v29 = a4 - 2;
                              }
                            }

                            else
                            {
LABEL_99:
                              if (v150)
                              {
                                goto LABEL_202;
                              }

                              v163 = &v60[16 * a4];
                              v165 = *v163;
                              v164 = *(v163 + 1);
                              v166 = __OFSUB__(v164, v165);
                              v167 = v164 - v165;
                              v168 = v166;
                              if (v166)
                              {
                                goto LABEL_205;
                              }

                              v169 = &v60[16 * v29 + 32];
                              v171 = *v169;
                              v170 = *(v169 + 1);
                              v157 = __OFSUB__(v170, v171);
                              v172 = v170 - v171;
                              if (v157)
                              {
                                goto LABEL_208;
                              }

                              if (__OFADD__(v167, v172))
                              {
                                goto LABEL_209;
                              }

                              if (v167 + v172 < v149)
                              {
                                goto LABEL_113;
                              }

                              if (v149 < v172)
                              {
                                v29 = a4 - 2;
                              }
                            }
                          }

                          else
                          {
                            if (a4 == 3)
                            {
                              v147 = *(v60 + 4);
                              v148 = *(v60 + 5);
                              v157 = __OFSUB__(v148, v147);
                              v149 = v148 - v147;
                              v150 = v157;
                              goto LABEL_99;
                            }

                            v173 = &v60[16 * a4];
                            v175 = *v173;
                            v174 = *(v173 + 1);
                            v157 = __OFSUB__(v174, v175);
                            v167 = v174 - v175;
                            v168 = v157;
LABEL_113:
                            if (v168)
                            {
                              goto LABEL_204;
                            }

                            v176 = &v60[16 * v29];
                            v178 = *(v176 + 4);
                            v177 = *(v176 + 5);
                            v157 = __OFSUB__(v177, v178);
                            v179 = v177 - v178;
                            if (v157)
                            {
                              goto LABEL_207;
                            }

                            if (v179 < v167)
                            {
                              break;
                            }
                          }

                          v184 = v29 - 1;
                          if (v29 - 1 >= a4)
                          {
                            __break(1u);
LABEL_198:
                            __break(1u);
LABEL_199:
                            __break(1u);
LABEL_200:
                            __break(1u);
LABEL_201:
                            __break(1u);
LABEL_202:
                            __break(1u);
LABEL_203:
                            __break(1u);
LABEL_204:
                            __break(1u);
LABEL_205:
                            __break(1u);
LABEL_206:
                            __break(1u);
LABEL_207:
                            __break(1u);
LABEL_208:
                            __break(1u);
LABEL_209:
                            __break(1u);
LABEL_210:
                            __break(1u);
LABEL_211:
                            __break(1u);
LABEL_212:
                            __break(1u);
LABEL_213:
                            __break(1u);
LABEL_214:
                            __break(1u);
LABEL_215:
                            __break(1u);
LABEL_216:
                            __break(1u);
                            goto LABEL_217;
                          }

                          if (!*a3)
                          {
                            goto LABEL_220;
                          }

                          v185 = v60;
                          a4 = *&v60[16 * v184 + 32];
                          v186 = *&v60[16 * v29 + 40];
                          sub_100E65360(*a3 + *(v271 + 72) * a4, *a3 + *(v271 + 72) * *&v60[16 * v29 + 32], *a3 + *(v271 + 72) * v186, v5);
                          if (v145)
                          {
                            goto LABEL_196;
                          }

                          if (v186 < a4)
                          {
                            goto LABEL_198;
                          }

                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v185 = sub_100B31E68(v185);
                          }

                          if (v184 >= *(v185 + 2))
                          {
                            goto LABEL_199;
                          }

                          v187 = &v185[16 * v184];
                          *(v187 + 4) = a4;
                          *(v187 + 5) = v186;
                          v300 = v185;
                          sub_100B31DDC(v29);
                          v60 = v300;
                          a4 = *(v300 + 2);
                          v61 = v290;
                          if (a4 <= 1)
                          {
                            break;
                          }

                          continue;
                        }
                      }

                      v58 = a3[1];
                      a4 = v257;
                      v5 = v145;
                      v21 = v283;
                      if (v59 >= v58)
                      {
                        goto LABEL_185;
                      }

                      goto LABEL_4;
                    }

                    static os_log_type_t.error.getter();
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v238 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)();
                  }

                  else
                  {
                    v232 = v299;
                    v233 = _convertNSErrorToError(_:)();

                    swift_willThrow();
                    sub_100016590(v218, v219);
                    static os_log_type_t.error.getter();
                    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                    v234 = swift_allocObject();
                    *(v234 + 16) = v279;
                    v299 = v233;
                    swift_errorRetain();
                    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
                    v235 = String.init<A>(describing:)();
                    v237 = v236;
                    *(v234 + 56) = &type metadata for String;
                    *(v234 + 64) = sub_100008C00();
                    *(v234 + 32) = v235;
                    *(v234 + 40) = v237;
                    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
                    v224 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)();

                    v280 = 0;
                  }

                  v198 = v291;
                  v21 = v283;

                  objc_autoreleasePoolPop(v221);
                  v61 = v290;
                  v231 = v288;
                  v216 = v282;
                }

                v216(v198, 1, 1, v61);
                goto LABEL_167;
              }

              static os_log_type_t.error.getter();
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v215 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();
            }

            else
            {
              v209 = v299;
              v210 = _convertNSErrorToError(_:)();

              swift_willThrow();
              sub_100016590(v195, v196);
              static os_log_type_t.error.getter();
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v211 = swift_allocObject();
              *(v211 + 16) = v279;
              v299 = v210;
              swift_errorRetain();
              sub_1000BC4D4(&qword_101696960, &unk_10138B220);
              v212 = String.init<A>(describing:)();
              v214 = v213;
              *(v211 + 56) = &type metadata for String;
              *(v211 + 64) = sub_100008C00();
              *(v211 + 32) = v212;
              *(v211 + 40) = v214;
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v202 = static OS_os_log.default.getter();
              os_log(_:dso:log:_:_:)();

              v198 = v291;

              v280 = 0;
            }

            break;
          }

          v21 = v283;

          objc_autoreleasePoolPop(v199);
          v61 = v290;
          goto LABEL_148;
        }

LABEL_217:
        __break(1u);
LABEL_218:
        v246 = sub_100B31E68(a4);
        goto LABEL_188;
      }

      v293 = v75;
      v83 = v276;
      sub_100E6A94C(v75, v276, type metadata accessor for OwnedBeaconRecord);
      sub_100E6A94C(v65, v281, type metadata accessor for OwnedBeaconRecord);
      v84 = objc_autoreleasePoolPush();
      v85 = v84;
      v86 = *v83;
      v87 = v83[1];
      v88 = v87 >> 62;
      v89 = v290;
      if ((v87 >> 62) > 1)
      {
        if (v88 != 2 || *(v86 + 16) == *(v86 + 24))
        {
LABEL_21:
          v101 = v269;
LABEL_25:
          v109 = *v296;
          (*v296)(v101, 1, 1, v89);
          goto LABEL_26;
        }
      }

      else if (v88)
      {
        if (v86 == v86 >> 32)
        {
          goto LABEL_21;
        }
      }

      else if ((v87 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

      v90 = v84;
      v91 = objc_autoreleasePoolPush();
      v92 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v86, v87);
      v93 = Data._bridgeToObjectiveC()().super.isa;
      v299 = 0;
      v94 = [v92 initForReadingFromData:v93 error:&v299];

      if (!v94)
      {
        break;
      }

      v95 = v299;
      sub_100016590(v86, v87);
      [v94 _enableStrictSecureDecodingMode];
      v96 = [objc_allocWithZone(CKRecord) initWithCoder:v94];
      if (!v96)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v108 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_24;
      }

      v97 = v96;

      objc_autoreleasePoolPop(v91);
      v98 = [v97 creationDate];

      v21 = v283;
      v89 = v290;
      if (v98)
      {
        v99 = v259;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v100 = 0;
      }

      else
      {
        v100 = 1;
        v99 = v259;
      }

      v85 = v90;
      v109 = *v296;
      (*v296)(v99, v100, 1, v89);
      v133 = v99;
      v101 = v269;
      sub_1000D2AD8(v133, v269, &unk_101696900, &unk_10138B1E0);
      v110 = *v297;
      if ((*v297)(v101, 1, v89) != 1)
      {
        (*v274)(v277, v101, v89);
        goto LABEL_28;
      }

LABEL_26:
      Date.init()();
      v110 = *v297;
      if ((*v297)(v101, 1, v89) != 1)
      {
        sub_10000B3A8(v101, &unk_101696900, &unk_10138B1E0);
      }

LABEL_28:
      objc_autoreleasePoolPop(v85);
      v111 = objc_autoreleasePoolPush();
      v112 = v111;
      v114 = *v281;
      v113 = v281[1];
      v115 = v113 >> 62;
      if ((v113 >> 62) > 1)
      {
        if (v115 != 2 || *(v114 + 16) == *(v114 + 24))
        {
LABEL_39:
          v125 = v270;
LABEL_43:
          v109(v125, 1, 1, v89);
LABEL_44:
          v76 = v65;
          Date.init()();
          if (v110(v125, 1, v89) != 1)
          {
            sub_10000B3A8(v125, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_8;
        }
      }

      else if (v115)
      {
        if (v114 == v114 >> 32)
        {
          goto LABEL_39;
        }
      }

      else if ((v113 & 0xFF000000000000) == 0)
      {
        goto LABEL_39;
      }

      v282 = v111;
      v268 = objc_autoreleasePoolPush();
      v116 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v114, v113);
      v117 = Data._bridgeToObjectiveC()().super.isa;
      v299 = 0;
      v118 = [v116 initForReadingFromData:v117 error:&v299];

      if (!v118)
      {
        v126 = v299;
        v127 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v114, v113);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v128 = swift_allocObject();
        *(v128 + 16) = v279;
        v299 = v127;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v129 = String.init<A>(describing:)();
        v131 = v130;
        *(v128 + 56) = &type metadata for String;
        *(v128 + 64) = sub_100008C00();
        *(v128 + 32) = v129;
        *(v128 + 40) = v131;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v118 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v21 = v283;

        v280 = 0;
LABEL_42:
        v112 = v282;

        objc_autoreleasePoolPop(v268);
        v125 = v270;
        v89 = v290;
        goto LABEL_43;
      }

      v119 = v299;
      sub_100016590(v114, v113);
      [v118 _enableStrictSecureDecodingMode];
      v120 = [objc_allocWithZone(CKRecord) initWithCoder:v118];
      if (!v120)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v132 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_42;
      }

      v121 = v120;

      objc_autoreleasePoolPop(v268);
      v122 = [v121 creationDate];

      v112 = v282;
      if (v122)
      {
        v123 = v260;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v124 = 0;
      }

      else
      {
        v124 = 1;
        v123 = v260;
      }

      v89 = v290;
      v109(v123, v124, 1, v290);
      v134 = v123;
      v125 = v270;
      sub_1000D2AD8(v134, v270, &unk_101696900, &unk_10138B1E0);
      if (v110(v125, 1, v89) == 1)
      {
        goto LABEL_44;
      }

      v76 = v65;
      (*v274)(v275, v125, v89);
LABEL_8:
      v77 = v285 == 1;
      objc_autoreleasePoolPop(v112);
      v78 = v275;
      v79 = v277;
      v29 = Date.compare(_:)();
      v80 = v290;
      v81 = v284;
      v284(v78, v290);
      v81(v79, v80);
      sub_100E6A9B4(v281, type metadata accessor for OwnedBeaconRecord);
      sub_100E6A9B4(v276, type metadata accessor for OwnedBeaconRecord);
      ++v74;
      v75 = &v293[v292];
      v65 = v76 + v292;
      if (((v77 ^ (v29 != 1)) & 1) == 0)
      {
        v82 = v74 - 1;
        goto LABEL_54;
      }
    }

    v102 = v299;
    v103 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v86, v87);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v104 = swift_allocObject();
    *(v104 + 16) = v279;
    v299 = v103;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v105 = String.init<A>(describing:)();
    v107 = v106;
    *(v104 + 56) = &type metadata for String;
    *(v104 + 64) = sub_100008C00();
    *(v104 + 32) = v105;
    *(v104 + 40) = v107;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v94 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v280 = 0;
LABEL_24:
    v21 = v283;
    v89 = v290;

    objc_autoreleasePoolPop(v91);
    v101 = v269;
    v85 = v90;
    goto LABEL_25;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_185:
  v29 = *v258;
  if (*v258)
  {
    a4 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_218;
    }

    v246 = a4;
LABEL_188:
    v300 = v246;
    a4 = *(v246 + 2);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v247 = *&v246[16 * a4];
        v248 = v246;
        v249 = *&v246[16 * a4 + 24];
        sub_100E65360(*a3 + *(v271 + 72) * v247, *a3 + *(v271 + 72) * *&v246[16 * a4 + 16], *a3 + *(v271 + 72) * v249, v29);
        if (v5)
        {
          goto LABEL_196;
        }

        if (v249 < v247)
        {
          goto LABEL_211;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = sub_100B31E68(v248);
        }

        if (a4 - 2 >= *(v248 + 2))
        {
          goto LABEL_212;
        }

        v250 = &v248[16 * a4];
        *v250 = v247;
        *(v250 + 1) = v249;
        v300 = v248;
        sub_100B31DDC(a4 - 1);
        v246 = v300;
        a4 = *(v300 + 2);
        if (a4 <= 1)
        {
          goto LABEL_196;
        }
      }

      goto LABEL_222;
    }

LABEL_196:
  }

  else
  {
    __break(1u);
LABEL_225:
    objc_autoreleasePoolPop(a4);
    __break(1u);
  }
}

uint64_t sub_100E65360(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v186 = &v183 - v14;
  v15 = __chkstk_darwin(v13);
  v196 = &v183 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v183 - v18;
  v20 = __chkstk_darwin(v17);
  v190 = &v183 - v21;
  v22 = __chkstk_darwin(v20);
  v189 = &v183 - v23;
  v24 = __chkstk_darwin(v22);
  v195 = &v183 - v25;
  __chkstk_darwin(v24);
  v194 = &v183 - v26;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v201 = &v183 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v198 = &v183 - v33;
  v34 = __chkstk_darwin(v32);
  v204 = &v183 - v35;
  __chkstk_darwin(v34);
  v203 = &v183 - v36;
  v200 = type metadata accessor for OwnedBeaconRecord();
  v37 = *(*(v200 - 8) + 64);
  v38 = __chkstk_darwin(v200);
  v205 = (&v183 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __chkstk_darwin(v38);
  v197 = (&v183 - v41);
  v42 = __chkstk_darwin(v40);
  v209 = (&v183 - v43);
  __chkstk_darwin(v42);
  v202 = (&v183 - v44);
  v46 = *(v45 + 72);
  if (!v46)
  {
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v208 = a1;
  v47 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v46 == -1)
  {
    goto LABEL_144;
  }

  v48 = a3;
  v49 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v46 == -1)
  {
LABEL_145:
    __break(1u);
  }

  v212 = a4;
  v213 = v208;
  v206 = v27;
  if (v47 / v46 >= v49 / v46)
  {
    v185 = v12;
    v51 = v49 / v46 * v46;
    if (a4 < a2 || a2 + v51 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v115 = (a4 + v51);
    if (v51 < 1)
    {
LABEL_141:
      v213 = a2;
      v211 = v115;
      goto LABEL_142;
    }

    v116 = -v46;
    v204 = (v28 + 56);
    v209 = (v28 + 48);
    v184 = (v28 + 32);
    v190 = (v28 + 8);
    v187 = xmmword_101385D80;
    v117 = (a4 + v51);
    v207 = a4;
    v194 = v116;
    v118 = v208;
    *&v191 = v19;
LABEL_81:
    v183 = v115;
    v119 = a2;
    v120 = a2 + v116;
    v199 = a2 + v116;
    v193 = a2;
    while (1)
    {
      if (v119 <= v118)
      {
        v213 = v119;
        v211 = v183;
        goto LABEL_142;
      }

      v189 = v115;
      v203 = v117;
      v195 = &v117[v116];
      v121 = v197;
      sub_100E6A94C(&v117[v116], v197, type metadata accessor for OwnedBeaconRecord);
      sub_100E6A94C(v120, v205, type metadata accessor for OwnedBeaconRecord);
      v122 = objc_autoreleasePoolPush();
      v123 = *v121;
      v124 = v121[1];
      v125 = v124 >> 62;
      v202 = v48;
      if ((v124 >> 62) > 1)
      {
        v126 = v196;
        if (v125 != 2 || *(v123 + 16) == *(v123 + 24))
        {
          goto LABEL_100;
        }
      }

      else
      {
        v126 = v196;
        if (v125)
        {
          if (v123 == v123 >> 32)
          {
            goto LABEL_100;
          }
        }

        else if ((v124 & 0xFF000000000000) == 0)
        {
          goto LABEL_100;
        }
      }

      v127 = objc_autoreleasePoolPush();
      v128 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v123, v124);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v211 = 0;
      v130 = [v128 initForReadingFromData:isa error:&v211];

      if (!v130)
      {
        break;
      }

      v131 = v211;
      sub_100016590(v123, v124);
      [v130 _enableStrictSecureDecodingMode];
      v132 = [objc_allocWithZone(CKRecord) initWithCoder:v130];
      if (!v132)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v143 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_99;
      }

      v133 = v132;

      objc_autoreleasePoolPop(v127);
      v134 = [v133 creationDate];

      v126 = v196;
      v116 = v194;
      if (v134)
      {
        v135 = v186;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v136 = 0;
      }

      else
      {
        v136 = 1;
        v135 = v186;
      }

      v145 = *v204;
      v179 = v135;
      v180 = v135;
      v146 = v206;
      (*v204)(v179, v136, 1, v206);
      v181 = v180;
      v144 = v191;
      sub_1000D2AD8(v181, v191, &unk_101696900, &unk_10138B1E0);
      v147 = *v209;
      if ((*v209)(v144, 1, v146) != 1)
      {
        (*v184)(v198, v144, v146);
        goto LABEL_103;
      }

LABEL_101:
      Date.init()();
      v147 = *v209;
      if ((*v209)(v144, 1, v146) != 1)
      {
        sub_10000B3A8(v144, &unk_101696900, &unk_10138B1E0);
      }

LABEL_103:
      objc_autoreleasePoolPop(v122);
      v148 = objc_autoreleasePoolPush();
      v149 = *v205;
      v150 = v205[1];
      v151 = v150 >> 62;
      if ((v150 >> 62) > 1)
      {
        v152 = v206;
        if (v151 != 2 || *(v149 + 16) == *(v149 + 24))
        {
          goto LABEL_118;
        }
      }

      else
      {
        v152 = v206;
        if (v151)
        {
          if (v149 == v149 >> 32)
          {
            goto LABEL_118;
          }
        }

        else if ((v150 & 0xFF000000000000) == 0)
        {
          goto LABEL_118;
        }
      }

      v153 = objc_autoreleasePoolPush();
      v154 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v149, v150);
      v155 = Data._bridgeToObjectiveC()().super.isa;
      v211 = 0;
      v156 = [v154 initForReadingFromData:v155 error:&v211];

      if (!v156)
      {
        v188 = v153;
        v163 = v211;
        v164 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v149, v150);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v165 = swift_allocObject();
        *(v165 + 16) = v187;
        v211 = v164;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v166 = String.init<A>(describing:)();
        v168 = v167;
        *(v165 + 56) = &type metadata for String;
        *(v165 + 64) = sub_100008C00();
        *(v165 + 32) = v166;
        *(v165 + 40) = v168;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v156 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v152 = v206;

        v192 = 0;
LABEL_117:
        v126 = v196;
        v116 = v194;

        objc_autoreleasePoolPop(v188);
LABEL_118:
        v145(v126, 1, 1, v152);
        goto LABEL_119;
      }

      v157 = v211;
      sub_100016590(v149, v150);
      [v156 _enableStrictSecureDecodingMode];
      v158 = [objc_allocWithZone(CKRecord) initWithCoder:v156];
      if (!v158)
      {
        v188 = v153;
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v169 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_117;
      }

      v159 = v158;

      objc_autoreleasePoolPop(v153);
      v160 = [v159 creationDate];

      v126 = v196;
      v116 = v194;
      if (v160)
      {
        v161 = v185;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v162 = 0;
      }

      else
      {
        v162 = 1;
        v161 = v185;
      }

      v145(v161, v162, 1, v152);
      sub_1000D2AD8(v161, v126, &unk_101696900, &unk_10138B1E0);
      if (v147(v126, 1, v152) != 1)
      {
        (*v184)(v201, v126, v152);
        v120 = v199;
        goto LABEL_121;
      }

LABEL_119:
      v170 = v199;
      Date.init()();
      v171 = v147(v126, 1, v152);
      v120 = v170;
      if (v171 != 1)
      {
        sub_10000B3A8(v126, &unk_101696900, &unk_10138B1E0);
      }

LABEL_121:
      v172 = v202;
      v173 = v202 + v116;
      objc_autoreleasePoolPop(v148);
      v174 = v201;
      v175 = v198;
      v176 = Date.compare(_:)();
      v177 = *v190;
      (*v190)(v174, v152);
      v177(v175, v152);
      sub_100E6A9B4(v205, type metadata accessor for OwnedBeaconRecord);
      sub_100E6A9B4(v197, type metadata accessor for OwnedBeaconRecord);
      if (v176 == 1)
      {
        v118 = v208;
        v48 = v173;
        if (v172 < v193 || v173 >= v193)
        {
          a2 = v120;
          swift_arrayInitWithTakeFrontToBack();
          v115 = v189;
          v116 = v194;
        }

        else
        {
          v115 = v189;
          v116 = v194;
          a2 = v120;
          if (v172 != v193)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v117 = v203;
        if (v203 <= v207)
        {
          goto LABEL_141;
        }

        goto LABEL_81;
      }

      v178 = v195;
      v115 = v195;
      v118 = v208;
      v48 = v173;
      if (v172 < v203 || v173 >= v203)
      {
        swift_arrayInitWithTakeFrontToBack();
        v116 = v194;
      }

      else
      {
        v116 = v194;
        if (v172 != v203)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v117 = v115;
      v119 = v193;
      if (v178 <= v207)
      {
        a2 = v193;
        goto LABEL_141;
      }
    }

    v137 = v211;
    v138 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v123, v124);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v139 = swift_allocObject();
    *(v139 + 16) = v187;
    v211 = v138;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v140 = String.init<A>(describing:)();
    v142 = v141;
    *(v139 + 56) = &type metadata for String;
    *(v139 + 64) = sub_100008C00();
    *(v139 + 32) = v140;
    *(v139 + 40) = v142;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v130 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v192 = 0;
LABEL_99:
    v126 = v196;
    v116 = v194;

    objc_autoreleasePoolPop(v127);
LABEL_100:
    v144 = v191;
    v145 = *v204;
    v146 = v206;
    (*v204)(v191, 1, 1, v206);
    goto LABEL_101;
  }

  v50 = v47 / v46 * v46;
  if (a4 < v208 || v208 + v50 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != v208)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v198 = (a4 + v50);
  v211 = (a4 + v50);
  if (v50 >= 1 && a2 < a3)
  {
    v201 = (v28 + 56);
    v205 = (v28 + 48);
    v188 = (v28 + 32);
    v196 = (v28 + 8);
    v191 = xmmword_101385D80;
    v197 = a3;
    v193 = v46;
    while (1)
    {
      v53 = v202;
      sub_100E6A94C(a2, v202, type metadata accessor for OwnedBeaconRecord);
      v207 = a4;
      sub_100E6A94C(a4, v209, type metadata accessor for OwnedBeaconRecord);
      v54 = objc_autoreleasePoolPush();
      v55 = *v53;
      v56 = v53[1];
      v57 = v56 >> 62;
      if ((v56 >> 62) > 1)
      {
        if (v57 != 2 || *(v55 + 16) == *(v55 + 24))
        {
          goto LABEL_36;
        }
      }

      else if (v57)
      {
        if (v55 == v55 >> 32)
        {
          goto LABEL_36;
        }
      }

      else if ((v56 & 0xFF000000000000) == 0)
      {
        goto LABEL_36;
      }

      v58 = a2;
      v59 = objc_autoreleasePoolPush();
      v60 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v55, v56);
      v61 = Data._bridgeToObjectiveC()().super.isa;
      v210 = 0;
      v62 = [v60 initForReadingFromData:v61 error:&v210];

      if (!v62)
      {
        break;
      }

      v63 = v210;
      sub_100016590(v55, v56);
      [v62 _enableStrictSecureDecodingMode];
      v64 = [objc_allocWithZone(CKRecord) initWithCoder:v62];
      if (!v64)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v75 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_35;
      }

      v65 = v64;

      objc_autoreleasePoolPop(v59);
      v66 = [v65 creationDate];

      a2 = v58;
      if (v66)
      {
        v67 = v189;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v68 = 0;
        v27 = v206;
      }

      else
      {
        v68 = 1;
        v27 = v206;
        v67 = v189;
      }

      v77 = *v201;
      (*v201)(v67, v68, 1, v27);
      v113 = v67;
      v76 = v194;
      sub_1000D2AD8(v113, v194, &unk_101696900, &unk_10138B1E0);
      v78 = *v205;
      if ((*v205)(v76, 1, v27) != 1)
      {
        (*v188)(v203, v76, v27);
        goto LABEL_39;
      }

LABEL_37:
      Date.init()();
      v78 = *v205;
      if ((*v205)(v76, 1, v27) != 1)
      {
        sub_10000B3A8(v76, &unk_101696900, &unk_10138B1E0);
      }

LABEL_39:
      objc_autoreleasePoolPop(v54);
      v79 = objc_autoreleasePoolPush();
      v80 = *v209;
      v81 = v209[1];
      v82 = v81 >> 62;
      if ((v81 >> 62) > 1)
      {
        if (v82 != 2 || *(v80 + 16) == *(v80 + 24))
        {
LABEL_50:
          v93 = v207;
LABEL_54:
          v101 = v195;
          v77(v195, 1, 1, v27);
LABEL_55:
          Date.init()();
          v102 = a2;
          if (v78(v101, 1, v27) != 1)
          {
            sub_10000B3A8(v101, &unk_101696900, &unk_10138B1E0);
          }

          goto LABEL_57;
        }
      }

      else if (v82)
      {
        if (v80 == v80 >> 32)
        {
          goto LABEL_50;
        }
      }

      else if ((v81 & 0xFF000000000000) == 0)
      {
        goto LABEL_50;
      }

      v199 = a2;
      v83 = objc_autoreleasePoolPush();
      v84 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v80, v81);
      v85 = Data._bridgeToObjectiveC()().super.isa;
      v210 = 0;
      v86 = [v84 initForReadingFromData:v85 error:&v210];

      if (!v86)
      {
        v94 = v210;
        v95 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100016590(v80, v81);
        static os_log_type_t.error.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v96 = swift_allocObject();
        *(v96 + 16) = v191;
        v210 = v95;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v97 = String.init<A>(describing:)();
        v99 = v98;
        *(v96 + 56) = &type metadata for String;
        *(v96 + 64) = sub_100008C00();
        *(v96 + 32) = v97;
        *(v96 + 40) = v99;
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v86 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v192 = 0;
LABEL_53:
        a2 = v199;

        objc_autoreleasePoolPop(v83);
        v27 = v206;
        v93 = v207;
        goto LABEL_54;
      }

      v87 = v210;
      sub_100016590(v80, v81);
      [v86 _enableStrictSecureDecodingMode];
      v88 = [objc_allocWithZone(CKRecord) initWithCoder:v86];
      if (!v88)
      {
        static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v100 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        goto LABEL_53;
      }

      v89 = v88;

      objc_autoreleasePoolPop(v83);
      v90 = [v89 creationDate];

      a2 = v199;
      if (v90)
      {
        v91 = v190;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v92 = 0;
        v27 = v206;
        v93 = v207;
      }

      else
      {
        v92 = 1;
        v27 = v206;
        v93 = v207;
        v91 = v190;
      }

      v77(v91, v92, 1, v27);
      v114 = v91;
      v101 = v195;
      sub_1000D2AD8(v114, v195, &unk_101696900, &unk_10138B1E0);
      if (v78(v101, 1, v27) == 1)
      {
        goto LABEL_55;
      }

      v102 = a2;
      (*v188)(v204, v101, v27);
LABEL_57:
      v103 = v197;
      objc_autoreleasePoolPop(v79);
      v105 = v203;
      v104 = v204;
      v106 = Date.compare(_:)();
      v107 = *v196;
      (*v196)(v104, v27);
      v107(v105, v27);
      sub_100E6A9B4(v209, type metadata accessor for OwnedBeaconRecord);
      sub_100E6A9B4(v202, type metadata accessor for OwnedBeaconRecord);
      if (v106 == 1)
      {
        v108 = v193;
        v109 = v102;
        a2 = v102 + v193;
        v110 = v208;
        if (v208 < v102 || v208 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v93;
        }

        else
        {
          a4 = v93;
          if (v208 != v109)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v108 = v193;
        v111 = v93 + v193;
        v110 = v208;
        a2 = v102;
        if (v208 < v93 || v208 >= v111)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v208 != v93)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v212 = v111;
        a4 = v93 + v108;
      }

      v112 = v110 + v108;
      v213 = v112;
      if (a4 < v198)
      {
        v208 = v112;
        if (a2 < v103)
        {
          continue;
        }
      }

      goto LABEL_142;
    }

    v69 = v210;
    v70 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v55, v56);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v71 = swift_allocObject();
    *(v71 + 16) = v191;
    v210 = v70;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v72 = String.init<A>(describing:)();
    v74 = v73;
    *(v71 + 56) = &type metadata for String;
    *(v71 + 64) = sub_100008C00();
    *(v71 + 32) = v72;
    *(v71 + 40) = v74;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v62 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v192 = 0;
LABEL_35:
    a2 = v58;

    objc_autoreleasePoolPop(v59);
    v27 = v206;
LABEL_36:
    v76 = v194;
    v77 = *v201;
    (*v201)(v194, 1, 1, v27);
    goto LABEL_37;
  }

LABEL_142:
  sub_10060AB44(&v213, &v212, &v211);
  return 1;
}

uint64_t sub_100E66C50(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 8;
  }

  else
  {
    return (0x703010504060200uLL >> (8 * a1));
  }
}

uint64_t sub_100E66C78()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v9 = sub_101073524(v13[1]);

  if ((v9 * 60) >> 64 != (60 * v9) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  static Date.trustedNow.getter(v7);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  v11 = Duration.milliseconds.getter();
  v12 = *(v1 + 8);
  v12(v5, v0);
  result = (v12)(v7, v0);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(v11))
  {
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100E66E68(char *a1, int a2)
{
  v74 = a2;
  v71 = a1;
  v3 = type metadata accessor for AirPodsLEAccessory(0);
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  v5 = __chkstk_darwin(v3);
  v77 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v6;
  __chkstk_darwin(v5);
  v79 = v61 - v7;
  v80 = type metadata accessor for UUID();
  v8 = *(v80 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v80);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for MACAddress();
  v78 = *(v73 - 8);
  v12 = *(v78 + 64);
  v13 = __chkstk_darwin(v73);
  v76 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v75 = v61 - v16;
  v69 = v17;
  __chkstk_darwin(v15);
  v19 = v61 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = (v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v2;
  v26 = *(v2 + 16);
  *v24 = v26;
  (*(v21 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v20);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  result = (*(v21 + 8))(v24, v20);
  if (v26)
  {
    v29 = *(v2 + 64);
    sub_100A22DF0(v19);
    v30 = sub_100E22864();
    v31 = v19;
    if (*(v30 + 16) && (v32 = sub_1007723C0(v19), (v33 & 1) != 0))
    {
      v34 = (*(v30 + 56) + 16 * v32);
      v35 = *v34;
      v67 = v34[1];
      v68 = v35;
      sub_100017D5C(v35, v67);
    }

    else
    {
      v67 = 0xF000000000000000;
      v68 = 0;
    }

    v65 = *(v25 + 72);
    v36 = [*(v29 + OBJC_IVAR____TtC12searchpartyd10Peripheral_underlyingObject) identifier];
    v66 = v11;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = v8;
    v37 = *(v8 + 16);
    v38 = v79;
    v37(v79, v11, v80);
    v39 = (v38 + *(v3 + 20));
    v40 = v73;
    v39[3] = v73;
    v41 = v3;
    v42 = v40;
    v39[4] = sub_100E62554(&qword_10169EED0, 255, &type metadata accessor for MACAddress);
    v43 = sub_1000280DC(v39);
    v44 = v78;
    v45 = *(v78 + 16);
    v46 = v71;
    v45(v43, v71, v42);
    *(v38 + *(v41 + 24)) = 0;
    *(v38 + *(v41 + 28)) = xmmword_10138BBF0;
    v62 = *(*(v25 + 80) + OBJC_IVAR____TtC12searchpartyd27AccessoryPairingCoordinator_pairingInfo);
    v64 = type metadata accessor for Transaction();
    v45(v75, v31, v42);
    sub_100E6A94C(v38, v77, type metadata accessor for AirPodsLEAccessory);
    v45(v76, v46, v42);
    v47 = v44;
    v48 = *(v44 + 80);
    v49 = (v48 + 25) & ~v48;
    v50 = (v69 + 7 + v49) & 0xFFFFFFFFFFFFFFF8;
    v51 = *(v70 + 80);
    v71 = v31;
    v52 = (v51 + v50 + 17) & ~v51;
    v53 = (v72 + v48 + v52) & ~v48;
    v54 = v25;
    v61[1] = v25;
    v55 = (v69 + 7 + v53) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 16) = v54;
    *(v56 + 24) = v65;
    v57 = *(v47 + 32);
    v57(v56 + v49, v75, v42);
    v58 = v56 + v50;
    v60 = v67;
    v59 = v68;
    *v58 = v68;
    *(v58 + 8) = v60;
    *(v58 + 16) = v74 & 1;
    sub_100E6ADA4(v77, v56 + v52, type metadata accessor for AirPodsLEAccessory);
    v57(v56 + v53, v76, v42);
    *(v56 + v55) = v62;
    swift_retain_n();

    sub_10002E98C(v59, v60);
    static Transaction.asyncTask(name:block:)();

    sub_100006654(v59, v60);
    sub_100E6A9B4(v79, type metadata accessor for AirPodsLEAccessory);
    (*(v63 + 8))(v66, v80);
    return (*(v78 + 8))(v71, v42);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100E674F8(char *a1)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for MACAddress();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v7 = __chkstk_darwin(v6);
  v46 = v42 - v8;
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + 16);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (qword_1016950D0 == -1)
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
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C418);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Starting AirPods LE pairing using FindMyBluetooth", v21, 2u);
  }

  v22 = *(v2 + 64);
  sub_100A22DF0(v10);
  v23 = sub_100E22864();
  if (*(v23 + 16) && (v24 = sub_1007723C0(v10), (v25 & 1) != 0))
  {
    v26 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = (*(v23 + 56) + 16 * v24);
    v28 = *v27;
    v43 = v27[1];
    v44 = v28;
    sub_100017D5C(v28, v43);
  }

  else
  {
    v26 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = 0xF000000000000000;
    v44 = 0;
  }

  v42[1] = type metadata accessor for Transaction();
  v29 = *(v4 + 16);
  v30 = v46;
  v29(v46, v45, v3);
  v29(v26, v10, v3);
  v31 = *(v4 + 80);
  v32 = (v31 + 24) & ~v31;
  v33 = (v5 + v31 + v32) & ~v31;
  v45 = v10;
  v34 = (v5 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v2;
  v42[0] = v2;
  v36 = v3;
  v37 = *(v4 + 32);
  v37(v35 + v32, v30, v36);
  v37(v35 + v33, v26, v36);
  v38 = (v35 + v34);
  v40 = v43;
  v39 = v44;
  *v38 = v44;
  v38[1] = v40;

  sub_10002E98C(v39, v40);
  static Transaction.asyncTask(name:block:)();

  sub_100006654(v39, v40);
  return (*(v4 + 8))(v45, v36);
}

uint64_t sub_100E6792C(uint64_t a1)
{
  v37 = a1;
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v6;
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = v1;
  v15 = *(v1 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v17)
  {
    v34 = v7;
    if (qword_1016950D0 == -1)
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
  v18 = type metadata accessor for Logger();
  sub_1000076D4(v18, qword_10177C418);
  v19 = *(v3 + 16);
  v19(v9, v37, v2);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v22 = 136446210;
    sub_100E62554(&qword_1016A4210, 255, &type metadata accessor for MACAddress);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v19;
    v26 = v25;
    (*(v3 + 8))(v9, v2);
    v27 = sub_1000136BC(v23, v26, &v38);
    v19 = v24;

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "startStandaloneLEPairing for %{public}s", v22, 0xCu);
    sub_100007BAC(v33);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  type metadata accessor for Transaction();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v34;
  v19(v34, v37, v2);
  v30 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  (*(v3 + 32))(v31 + v30, v29, v2);

  static Transaction.asyncTask(name:block:)();
}

unint64_t sub_100E67D8C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1);
  v2 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138B360;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = 1;
  *(inited + 56) = 1;
  *(inited + 64) = 0x626D754E74726170;
  *(inited + 72) = 0xEA00000000007265;
  *(inited + 80) = UInt8._bridgeToObjectiveC()();
  *(inited + 88) = 0;
  strcpy((inited + 96), "numberOfParts");
  *(inited + 110) = -4864;
  *(inited + 112) = Int._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  v4 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v4;
}

unint64_t sub_100E67ED8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId);
  *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_accessoryPartId + 1);
  v2 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_numBeacons);
  sub_1000BC4D4(&qword_101699338, &unk_1013AAFB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10138C0D0;
  *(inited + 32) = 0x6563637553736177;
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = 0;
  *(inited + 56) = 1;
  *(inited + 64) = 0x6D6F44726F727265;
  *(inited + 72) = 0xEB000000006E6961;
  swift_getErrorValue();
  Error.domain.getter();
  v4 = String._bridgeToObjectiveC()();

  *(inited + 80) = v4;
  *(inited + 88) = 0;
  *(inited + 96) = 0x646F43726F727265;
  *(inited + 104) = 0xE900000000000065;
  swift_getErrorValue();
  Error.code.getter();
  *(inited + 112) = Int._bridgeToObjectiveC()();
  *(inited + 120) = 0;
  strcpy((inited + 128), "numberOfParts");
  *(inited + 142) = -4864;
  *(inited + 144) = Int._bridgeToObjectiveC()();
  *(inited + 152) = 0;
  *(inited + 160) = 0x626D754E74726170;
  *(inited + 168) = 0xEA00000000007265;
  *(inited + 176) = UInt8._bridgeToObjectiveC()();
  *(inited + 184) = 0;
  v5 = sub_100908768(inited);
  swift_setDeallocating();
  sub_1000BC4D4(&qword_101699340, &qword_1013918A0);
  swift_arrayDestroy();
  return v5;
}