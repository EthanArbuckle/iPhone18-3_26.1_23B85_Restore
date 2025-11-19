uint64_t sub_100AA4E84(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v3 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v23 - v5;
  v7 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v23 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SharedBeaconRecord(0);
  sub_1000D2A70(a1 + *(v16 + 80), v6, &unk_1016AF890, &qword_1013926D0);
  v17 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if ((*(*(v17 - 8) + 48))(v6, 1, v17) == 1)
  {
    sub_10000B3A8(v6, &unk_1016AF890, &qword_1013926D0);
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_4:
    sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
    v18 = *(v16 + 20);
    v19 = static UUID.== infix(_:_:)();
    return v19 & 1;
  }

  sub_1000D2A70(&v6[*(v17 + 20)], v10, &qword_1016980D0, &unk_10138F3B0);
  sub_100022C40(v6, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  (*(v12 + 32))(v15, v10, v11);
  v20 = *(v16 + 20);
  if (static UUID.== infix(_:_:)())
  {
    v21 = 1;
  }

  else
  {
    v21 = static UUID.== infix(_:_:)();
  }

  (*(v12 + 8))(v15, v11);
  v19 = v21;
  return v19 & 1;
}

uint64_t sub_100AA5198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SystemInfo.DeviceLockState();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  v6 = __chkstk_darwin(v4);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v35 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_1000076D4(v14, qword_10177BA08);
  (*(v10 + 16))(v13, a1, v9);
  v38 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = a1;
    v20 = a2;
    v22 = v21;
    (*(v10 + 8))(v13, v9);
    v23 = sub_1000136BC(v19, v22, &v42);
    a2 = v20;
    a1 = v37;

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "sharedBeaconRecord(for uuid: %{private,mask.hash}s", v18, 0x16u);
    sub_100007BAC(v36);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v24 = v39;
  static SystemInfo.lockState.getter();
  v26 = v40;
  v25 = v41;
  (*(v41 + 104))(v40, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v4);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v25 + 8);
  v28(v26, v4);
  v28(v24, v4);
  if (v27)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "sharedBeaconRecord call failed because in device is in beforeFirstUnlock state", v31, 2u);
    }

    v32 = type metadata accessor for SharedBeaconRecord(0);
    return (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
  }

  else
  {
    v34 = sub_100030068();
    __chkstk_darwin(v34);
    *(&v35 - 2) = a1;
    sub_1012BBC38(sub_100B25EA4, v34, a2);
  }
}

void *sub_100AA56A8(uint64_t a1)
{
  v47 = type metadata accessor for SystemInfo.DeviceLockState();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v47);
  v49 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v48 = &v38[-v6];
  v53 = type metadata accessor for UUID();
  v7 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = *(v8 + 16);
  v12 = v8 + 16;
  v45 = v13;
  v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v44 = (v2 + 104);
  v43 = v2 + 8;
  v42 = (v12 - 8);
  v41 = *(v12 + 56);
  v40 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v39 = xmmword_101385D80;
  v50 = _swiftEmptyArrayStorage;
  v46 = v12;
  v15 = (v2 + 8);
  do
  {
    v51 = v14;
    v52 = v11;
    v45(v10);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = v39;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100008C00();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:_:_:)();

    v20 = v48;
    static SystemInfo.lockState.getter();
    v21 = v49;
    v22 = v47;
    (*v44)(v49, v40, v47);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v24 = *v15;
    (*v15)(v21, v22);
    v24(v20, v22);
    if (v23)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v56 = 0;
      v54 = 0u;
      v55 = 0u;
    }

    else
    {
      v25 = sub_100007F54();
      __chkstk_darwin(v25);
      *&v38[-16] = v10;
      sub_1000314D0(sub_1004E4EC0, v25, &v54);
    }

    (*v42)(v10, v53);
    if (*(&v55 + 1))
    {
      sub_10000A748(&v54, v57);
      v26 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v50 = sub_1000084AC(0, v50[2] + 1, 1, v50);
        v60 = v50;
      }

      v29 = v50[2];
      v28 = v50[3];
      if (v29 >= v28 >> 1)
      {
        v50 = sub_1000084AC((v28 > 1), v29 + 1, 1, v50);
        v60 = v50;
      }

      v30 = v58;
      v31 = v59;
      v32 = sub_10015049C(v57, v58);
      v33 = *(*(v30 - 8) + 64);
      __chkstk_darwin(v32);
      v35 = &v38[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v36 + 16))(v35);
      sub_100B039C0(v29, v35, &v60, v30, v31);
      sub_100007BAC(v57);
    }

    else
    {
      sub_10000B3A8(&v54, &qword_101696920, &unk_10138B200);
    }

    v14 = v51 + v41;
    v11 = v52 - 1;
  }

  while (v52 != 1);
  return v50;
}

void *sub_100AA5C88()
{
  v0 = sub_1000BC4D4(&qword_1016BB090, &unk_1013D6A90);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = (v14 - v2);
  v4 = type metadata accessor for StableIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100EF8D90(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000B3A8(v3, &qword_1016BB090, &unk_1013D6A90);
    static os_log_type_t.error.getter();
    if (qword_101695028 != -1)
    {
      swift_once();
    }

    v9 = _swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_10002911C(v3, v8, type metadata accessor for StableIdentifier);
    v10 = objc_autoreleasePoolPush();
    v11 = sub_100025044();
    __chkstk_darwin(v11);
    v14[-2] = v8;
    v14[0] = sub_10013D1C8(sub_100B25E04, &v14[-4], v12);

    sub_100A8ABA4(v14);

    v9 = v14[0];
    objc_autoreleasePoolPop(v10);
    sub_100022C40(v8, type metadata accessor for StableIdentifier);
  }

  return v9;
}

void *sub_100AA5F10()
{
  v0 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v136 = &v108 - v2;
  v135 = type metadata accessor for OwnedBeaconRecord();
  v115 = *(v135 - 8);
  v3 = *(v115 + 64);
  v4 = __chkstk_darwin(v135);
  v121 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v120 = &v108 - v6;
  v138 = type metadata accessor for OwnerSharingCircle();
  v113 = *(v138 - 8);
  v7 = *(v113 + 64);
  v8 = __chkstk_darwin(v138);
  v123 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v108 - v10;
  v12 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  *&v124 = &v108 - v14;
  v15 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v125 = *(v15 - 1);
  v126 = v15;
  v16 = *(v125 + 64);
  __chkstk_darwin(v15);
  v118 = (&v108 - v17);
  v114 = type metadata accessor for URL();
  v18 = *(v114 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v114);
  *&v116 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v108 - v23;
  __chkstk_darwin(v22);
  v26 = &v108 - v25;
  v27 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v119 = (&v108 - v29);
  v30 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v139 = &v108 - v32;
  v33 = type metadata accessor for SystemInfo.DeviceLockState();
  v34 = *(v33 - 8);
  v35 = v34[8];
  v36 = __chkstk_darwin(v33);
  v38 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v108 - v39;
  v41._object = 0x800000010136CC20;
  v41._countAndFlagsBits = 0xD00000000000001BLL;
  prohibitAsyncContext(functionName:)(v41);
  static SystemInfo.lockState.getter();
  v42 = v34[13];
  v130 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v128 = v42;
  v129 = v34 + 13;
  v42(v38);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v43 = v34[1];
  v132 = v38;
  v43(v38, v33);
  v131 = v40;
  v133 = v34 + 1;
  v134 = v33;
  v127 = v43;
  v43(v40, v33);
  if (v141 == v140)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000076D4(v44, qword_10177BA08);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "ownedDelegatedBeaconRecords call failed because device is in beforeFirstUnlock state", v47, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v137 = v11;
  v48 = type metadata accessor for UUID();
  v49 = *(*(v48 - 8) + 56);
  v117 = v48;
  v49(v139, 1, 1);
  v112 = *(v122 + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v50 = v114;
  v51 = sub_1000076D4(v114, qword_10177C0D8);
  v52 = v18;
  v53 = *(v18 + 16);
  v110 = v26;
  v53(v26, v51, v50);
  v53(v24, v26, v50);
  v54 = *(v126 + 10);
  v111 = v54;
  v55 = v126;
  v109 = type metadata accessor for DirectorySequence();
  v56 = *(*(v109 - 8) + 56);
  v57 = v118;
  v56(v118 + v54, 1, 1, v109);
  v53(v57, v24, v50);
  *(v57 + *(v55 + 9)) = v112;
  v53(v116, v24, v50);

  v58 = v124;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v59 = *(v52 + 8);
  v59(v24, v50);
  v59(v110, v50);
  v56(v58, 0, 1, v109);
  sub_10002311C(v58, v57 + v111, &qword_1016A5970, &unk_1013B3470);
  v60 = v126;
  v61 = *(v125 + 56);
  v62 = v119;
  v61(v119, 1, 1, v126);
  sub_10000B3A8(v62, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v57, v62, &qword_1016A7828, &unk_1013D7340);
  v63 = (v61)(v62, 0, 1, v60);
  __chkstk_darwin(v63);
  v64 = v139;
  *(&v108 - 2) = v139;
  *(&v108 - 8) = 1;
  sub_100E6B40C(sub_100B25D9C, (&v108 - 4));
  v66 = v65;
  sub_10000B3A8(v64, &qword_1016980D0, &unk_10138F3B0);
  v67 = *(v66 + 16);
  if (v67)
  {
    v68 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v114 = v66;
    v69 = v66 + v68;
    v119 = (v115 + 48);
    v118 = (v115 + 56);
    v125 = *(v113 + 72);
    *(&v70 + 1) = 2;
    v124 = xmmword_101385D80;
    v71 = &_mh_execute_header;
    *&v70 = 136315138;
    v116 = v70;
    v126 = _swiftEmptyArrayStorage;
    v72 = v137;
    while (1)
    {
      v139 = v67;
      sub_100022A54(v69, v72, type metadata accessor for OwnerSharingCircle);
      v74 = *(v138 + 24);
      static os_log_type_t.info.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v75 = v72 + v74;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v76 = swift_allocObject();
      *(v76 + 16) = v124;
      v77 = UUID.uuidString.getter();
      v79 = v78;
      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = sub_100008C00();
      *(v76 + 32) = v77;
      *(v76 + 40) = v79;
      os_log(_:dso:log:_:_:)();

      v80 = v131;
      static SystemInfo.lockState.getter();
      v81 = v132;
      v82 = v134;
      v128(v132, v130, v134);
      sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = v71;
      v85 = v127;
      v127(v81, v82);
      v85(v80, v82);
      if (v83)
      {
        break;
      }

      v88 = sub_100025044();
      __chkstk_darwin(v88);
      *(&v108 - 2) = v75;
      v89 = v136;
      sub_1012BBBD0(sub_100B27F94, v88, v136);
      v86 = v89;

      if ((*v119)(v89, 1, v135) == 1)
      {
        v87 = v123;
        v71 = &_mh_execute_header;
        goto LABEL_20;
      }

      v102 = v120;
      sub_10002911C(v89, v120, type metadata accessor for OwnedBeaconRecord);
      sub_100022A54(v102, v121, type metadata accessor for OwnedBeaconRecord);
      v71 = &_mh_execute_header;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v103 = v126;
      }

      else
      {
        v103 = sub_100A5C050(0, v126[2] + 1, 1, v126);
      }

      v72 = v137;
      v105 = v103[2];
      v104 = v103[3];
      if (v105 >= v104 >> 1)
      {
        v126 = sub_100A5C050(v104 > 1, v105 + 1, 1, v103);
      }

      else
      {
        v126 = v103;
      }

      sub_100022C40(v120, type metadata accessor for OwnedBeaconRecord);
      sub_100022C40(v72, type metadata accessor for OwnerSharingCircle);
      v106 = v126;
      v126[2] = v105 + 1;
      sub_10002911C(v121, v106 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v105, type metadata accessor for OwnedBeaconRecord);
LABEL_13:
      v69 += v125;
      v67 = v139 - 1;
      if (v139 == 1)
      {

        return v126;
      }
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v86 = v136;
    (*v118)(v136, 1, 1, v135);
    v87 = v123;
    v71 = v84;
LABEL_20:
    sub_10000B3A8(v86, &unk_1016A9A20, &qword_10138B280);
    v72 = v137;
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_1000076D4(v90, qword_10177AE28);
    sub_100022A54(v72, v87, type metadata accessor for OwnerSharingCircle);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = v87;
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v141 = v95;
      *v94 = v116;
      v96 = *(v138 + 24);
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v100 = v93;
      v72 = v137;
      sub_100022C40(v100, type metadata accessor for OwnerSharingCircle);
      v101 = sub_1000136BC(v97, v99, &v141);

      *(v94 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v91, v92, "Owned beacon record not found for delegated beacon identifier %s", v94, 0xCu);
      sub_100007BAC(v95);

      v73 = v72;
      v71 = &_mh_execute_header;
    }

    else
    {

      sub_100022C40(v87, type metadata accessor for OwnerSharingCircle);
      v73 = v72;
    }

    sub_100022C40(v73, type metadata accessor for OwnerSharingCircle);
    goto LABEL_13;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100AA6F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v97 = a3;
  v5 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v96 - v7;
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v96 - v11;
  v120 = type metadata accessor for UUID();
  v103 = *(v120 - 8);
  v13 = *(v103 + 64);
  v14 = __chkstk_darwin(v120);
  v111 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v113 = &v96 - v17;
  v18 = __chkstk_darwin(v16);
  v112 = &v96 - v19;
  v20 = __chkstk_darwin(v18);
  v114 = &v96 - v21;
  __chkstk_darwin(v20);
  v117 = &v96 - v22;
  v119 = type metadata accessor for SharedBeaconRecord(0);
  v23 = *(v119 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v119);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a1;
  v27 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper);
  swift_beginAccess();
  v28 = *(v27 + 16);
  *(v27 + 16) = &_swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v29 = *(v27 + 24);
  v116 = v27;
  *(v27 + 24) = &_swiftEmptyDictionarySingleton;

  v98 = a2;
  v30 = *(a2 + 16);
  if (!v30)
  {
LABEL_31:
    v92 = v96;
    v93 = sub_100AA81F4(v98);
    v94 = *(v92 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedSharedBeaconRecords);
    *(v92 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedSharedBeaconRecords) = v93;

    *v97 = v93;
    return result;
  }

  v31 = v98 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v110 = (v103 + 48);
  v108 = (v103 + 32);
  v115 = (v103 + 16);
  v107 = v103 + 8;
  v102 = (v103 + 40);
  v109 = (v103 + 56);
  v32 = *(v23 + 72);
  v101 = v8;
  v100 = v12;
  v99 = v32;
  v118 = v26;
  while (1)
  {
    sub_100022A54(v31, v26, type metadata accessor for SharedBeaconRecord);
    sub_1000D2A70(&v26[*(v119 + 80)], v8, &unk_1016AF890, &qword_1013926D0);
    v33 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v33 - 8) + 48))(v8, 1, v33) != 1)
    {
      break;
    }

    sub_100022C40(v26, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v8, &unk_1016AF890, &qword_1013926D0);
    (*v109)(v12, 1, 1, v120);
LABEL_4:
    sub_10000B3A8(v12, &qword_1016980D0, &unk_10138F3B0);
LABEL_5:
    v31 += v32;
    if (!--v30)
    {
      goto LABEL_31;
    }
  }

  sub_1000D2A70(&v8[*(v33 + 20)], v12, &qword_1016980D0, &unk_10138F3B0);
  sub_100022C40(v8, type metadata accessor for SharedBeaconRecord.PropertyListContent);
  v34 = v120;
  if ((*v110)(v12, 1, v120) == 1)
  {
    v26 = v118;
    sub_100022C40(v118, type metadata accessor for SharedBeaconRecord);
    goto LABEL_4;
  }

  v35 = v117;
  v106 = *v108;
  v106(v117, v12, v34);
  v36 = v114;
  v37 = *v115;
  v38 = *(v119 + 20);
  (*v115)(v114, &v118[v38], v34);
  v39 = v116;
  swift_beginAccess();
  v37(v112, v35, v34);
  v40 = *(v39 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v121 = *(v39 + 16);
  v42 = v121;
  *(v39 + 16) = 0x8000000000000000;
  v44 = sub_1000210EC(v36);
  v45 = v42[2];
  v46 = (v43 & 1) == 0;
  v47 = v45 + v46;
  if (!__OFADD__(v45, v46))
  {
    v48 = v43;
    if (v42[3] >= v47)
    {
      v26 = v118;
      if (isUniquelyReferenced_nonNull_native)
      {
        v51 = v121;
        if ((v43 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_101005D44();
        v51 = v121;
        if ((v48 & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_100FE80C8(v47, isUniquelyReferenced_nonNull_native);
      v49 = sub_1000210EC(v114);
      v26 = v118;
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_36;
      }

      v44 = v49;
      v51 = v121;
      if ((v48 & 1) == 0)
      {
LABEL_18:
        v51[(v44 >> 6) + 8] |= 1 << v44;
        v56 = v51[6];
        v57 = v103;
        v105 = *(v103 + 72);
        v58 = v105 * v44;
        v59 = v56 + v105 * v44;
        v60 = v114;
        v61 = v120;
        v37(v59, v114, v120);
        v106((v51[7] + v58), v112, v61);
        v62 = *(v57 + 8);
        v63 = v60;
        v55 = v61;
        v62(v63, v61);
        v64 = v51[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_34;
        }

        v104 = v62;
        v51[2] = v66;
        v26 = v118;
LABEL_20:
        v67 = v116;
        v68 = *(v116 + 16);
        *(v116 + 16) = v51;

        swift_endAccess();
        v69 = v113;
        v37(v113, v117, v55);
        swift_beginAccess();
        v37(v111, &v26[v38], v55);
        v70 = *(v67 + 24);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v121 = *(v67 + 24);
        v72 = v121;
        *(v67 + 24) = 0x8000000000000000;
        v73 = sub_1000210EC(v69);
        v75 = v72[2];
        v76 = (v74 & 1) == 0;
        v65 = __OFADD__(v75, v76);
        v77 = v75 + v76;
        if (v65)
        {
          goto LABEL_33;
        }

        v78 = v74;
        if (v72[3] >= v77)
        {
          if (v71)
          {
            goto LABEL_25;
          }

          v83 = v73;
          sub_101005D44();
          v73 = v83;
          v80 = v121;
          if ((v78 & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_26:
          v81 = v120;
          (*v102)(v80[7] + v105 * v73, v111, v120);
          v82 = v104;
          v104(v113, v81);
        }

        else
        {
          sub_100FE80C8(v77, v71);
          v73 = sub_1000210EC(v113);
          if ((v78 & 1) != (v79 & 1))
          {
            goto LABEL_36;
          }

LABEL_25:
          v80 = v121;
          if (v78)
          {
            goto LABEL_26;
          }

LABEL_28:
          v80[(v73 >> 6) + 8] |= 1 << v73;
          v84 = v105 * v73;
          v85 = v113;
          v86 = v120;
          v37(v80[6] + v105 * v73, v113, v120);
          v106((v80[7] + v84), v111, v86);
          v87 = v85;
          v81 = v86;
          v88 = v86;
          v82 = v104;
          v104(v87, v88);
          v89 = v80[2];
          v65 = __OFADD__(v89, 1);
          v90 = v89 + 1;
          if (v65)
          {
            goto LABEL_35;
          }

          v80[2] = v90;
        }

        v91 = *(v116 + 24);
        *(v116 + 24) = v80;

        swift_endAccess();
        v82(v117, v81);
        sub_100022C40(v26, type metadata accessor for SharedBeaconRecord);
        v8 = v101;
        v12 = v100;
        v32 = v99;
        goto LABEL_5;
      }
    }

    v52 = v51[7];
    v53 = v103;
    v105 = *(v103 + 72);
    v54 = v52 + v105 * v44;
    v55 = v120;
    (*(v103 + 40))(v54, v112, v120);
    v104 = *(v53 + 8);
    v104(v114, v55);
    goto LABEL_20;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100AA79B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_100AA79D4, 0, 0);
}

uint64_t sub_100AA79D4()
{
  v1 = *(v0 + 24);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v4 = type metadata accessor for BeaconKeyManager(0);
  *v3 = v0;
  v3[1] = sub_100AA7A9C;
  v5 = *(v0 + 24);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_100B25D94, v5, v4);
}

uint64_t sub_100AA7A9C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return _swift_task_switch(sub_100AA7BB4, 0, 0);
}

uint64_t sub_100AA7BB4()
{
  v13 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v0[6] = v3;
  v4 = *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_hiddenBeaconCoordinator);
  v5 = v2[2];
  if (v5)
  {
    v11 = *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_hiddenBeaconCoordinator);
    v6 = sub_1003A86B0(v5, 0);
    v7 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
    v8 = sub_1003A9970(&v12, v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v2);

    result = sub_1000128F8();
    if (v8 != v5)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v0[7] = v6;
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_100AA7D38;

  return sub_100393724(v6, v3);
}

uint64_t sub_100AA7D38()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_1004D4490, 0, 0);
}

uint64_t sub_100AA7E50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  *a2 = v5;
  return result;
}

uint64_t sub_100AA7ED8()
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing CloudStorageService!", v4, 2u);
  }

  **(v0 + 48) = _swiftEmptyArrayStorage;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100AA7FFC()
{
  v19 = v0;
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B7F8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 96);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = *(v0 + 32);
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure to return accessory records %s!", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 80);

  **(v0 + 48) = _swiftEmptyArrayStorage;
  v16 = *(v0 + 8);

  return v16();
}

void *sub_100AA81F4(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v44 - v5;
  v44 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v44);
  v57 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v44 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueue);
  *v16 = v17;
  v18 = v13[13];
  v53 = enum case for DispatchPredicate.onQueue(_:);
  v51 = v18;
  v52 = v13 + 13;
  v18(v16);
  v50 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  v20 = v13[1];
  v54 = v13 + 1;
  v55 = v12;
  v49 = v20;
  result = v20(v16, v12);
  if (v19)
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      v46 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper;
      v48 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v23 = a1 + v48;
      v24 = *(v7 + 72);
      v25 = &_swiftEmptyArrayStorage;
      v26 = v44;
      v27 = v56;
      while (1)
      {
        sub_100022A54(v23, v27, type metadata accessor for SharedBeaconRecord);
        v29 = v50;
        v28 = v51;
        *v16 = v50;
        v30 = v55;
        v28(v16, v53, v55);
        v31 = v29;
        LOBYTE(v29) = _dispatchPreconditionTest(_:)();
        result = v49(v16, v30);
        if ((v29 & 1) == 0)
        {
          __break(1u);
          goto LABEL_24;
        }

        if (*(v27 + *(v26 + 64)) != 1)
        {
          goto LABEL_16;
        }

        v32 = *(v47 + v46);
        v33 = *(v26 + 20);
        swift_beginAccess();
        v34 = *(v32 + 24);
        if (*(v34 + 16))
        {
          v35 = sub_1000210EC(v27 + v33);
          if (v36)
          {
            v37 = v35;
            v45 = *(v34 + 56);
            v38 = type metadata accessor for UUID();
            v39 = v6;
            v40 = *(v38 - 8);
            (*(v40 + 16))(v39, v45 + *(v40 + 72) * v37, v38);
            (*(v40 + 56))(v39, 0, 1, v38);
            v6 = v39;
            v26 = v44;
          }

          else
          {
            v38 = type metadata accessor for UUID();
            (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
          }

          v27 = v56;
        }

        else
        {
          v38 = type metadata accessor for UUID();
          (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
        }

        swift_endAccess();
        type metadata accessor for UUID();
        if ((*(*(v38 - 8) + 48))(v6, 1, v38) == 1)
        {
          break;
        }

        sub_100022C40(v27, type metadata accessor for SharedBeaconRecord);
        sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
LABEL_5:
        v23 += v24;
        if (!--v22)
        {
          return v25;
        }
      }

      sub_10000B3A8(v6, &qword_1016980D0, &unk_10138F3B0);
LABEL_16:
      sub_10002911C(v27, v57, type metadata accessor for SharedBeaconRecord);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10112421C(0, v25[2] + 1, 1);
        v25 = v58;
      }

      v43 = v25[2];
      v42 = v25[3];
      if (v43 >= v42 >> 1)
      {
        sub_10112421C(v42 > 1, v43 + 1, 1);
        v25 = v58;
      }

      v25[2] = v43 + 1;
      sub_10002911C(v57, v25 + v48 + v43 * v24, type metadata accessor for SharedBeaconRecord);
      v27 = v56;
      goto LABEL_5;
    }

    return &_swiftEmptyArrayStorage;
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_100AA87D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100030068();

  v6 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper);
  return sub_100397750(a2, a3);
}

uint64_t sub_100AA882C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_sharedBeaconUUIDMapper);
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (*(v6 + 16) && (v7 = sub_1000210EC(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a3, v10 + *(v12 + 72) * v9, v11);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

void *sub_100AA899C()
{
  v1 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v65 - v3;
  v5 = type metadata accessor for ShareRecord();
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = *(v90 + 64);
  v7 = __chkstk_darwin(v5);
  v89 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v65 - v9;
  v11 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v65 - v13;
  v79 = type metadata accessor for DirectorySequence();
  v15 = *(v79 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v79);
  v85 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for URL();
  v18 = *(v78 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v78);
  v67 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v84 = &v65 - v22;
  v23 = type metadata accessor for OwnedBeaconRecord();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100025044();
  v77 = v28[2];
  if (v77)
  {
    v76 = *(v23 + 20);
    v66 = *(v0 + 168);
    v75 = v28 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v80 = v28;
    v74 = objc_opt_self();
    result = v80;
    v30 = 0;
    v31 = 0;
    v72 = (v15 + 8);
    v81 = _swiftEmptyDictionarySingleton;
    v71 = xmmword_10138BBE0;
    v86 = v10;
    v87 = v4;
    v70 = v14;
    v69 = v24;
    v68 = v27;
    v73 = (v18 + 48);
    v65 = (v18 + 32);
    v88 = (v18 + 8);
    while (v30 < result[2])
    {
      v34 = *(v24 + 72);
      v83 = v30;
      sub_100022A54(&v75[v34 * v30], v27, type metadata accessor for OwnedBeaconRecord);
      v35 = objc_autoreleasePoolPush();
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v36 = v78;
      sub_1000076D4(v78, qword_10177A518);
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      v37 = v35;
      v38 = v36;
      objc_autoreleasePoolPop(v37);
      v93 = _swiftEmptyArrayStorage;
      v94 = _swiftEmptyArrayStorage;
      v39 = [v74 defaultManager];
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      DirectorySequence.next()();
      v40 = *v73;
      if ((*v73)(v14, 1, v36) == 1)
      {
        v41 = v85;
      }

      else
      {
        v92 = *v65;
        v42 = v67;
        v43 = v66;
        v41 = v85;
        do
        {
          v92(v42, v14, v38);
          v44 = objc_autoreleasePoolPush();
          sub_1005FF9CC(v42, v43, &v94, &v93);
          objc_autoreleasePoolPop(v44);
          (*v88)(v42, v38);
          DirectorySequence.next()();
        }

        while (v40(v14, 1, v38) != 1);
      }

      v82 = v31;
      (*v72)(v41, v79);
      static os_log_type_t.debug.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v45 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v46 = swift_allocObject();
      *(v46 + 16) = v71;
      v47 = v38;
      v48 = v94;
      v49 = v94[2];
      *(v46 + 56) = &type metadata for Int;
      *(v46 + 64) = &protocol witness table for Int;
      *(v46 + 32) = v49;
      sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

      v50 = v84;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      *(v46 + 96) = &type metadata for String;
      *(v46 + 104) = sub_100008C00();
      *(v46 + 72) = v51;
      *(v46 + 80) = v53;
      os_log(_:dso:log:_:_:)();

      (*v88)(v50, v47);

      v92 = *(v48 + 16);
      if (v92)
      {
        v54 = 0;
        v55 = _swiftEmptyArrayStorage;
        v56 = v86;
        v57 = v87;
        while (v54 < *(v48 + 16))
        {
          v58 = (*(v90 + 80) + 32) & ~*(v90 + 80);
          v59 = *(v90 + 72);
          sub_100022A54(v48 + v58 + v59 * v54, v56, type metadata accessor for ShareRecord);
          sub_1000D2A70(v56 + *(v91 + 32), v57, &unk_101696900, &unk_10138B1E0);
          v60 = type metadata accessor for Date();
          v61 = (*(*(v60 - 8) + 48))(v57, 1, v60);
          sub_10000B3A8(v57, &unk_101696900, &unk_10138B1E0);
          if (v61 == 1)
          {
            result = sub_100022C40(v56, type metadata accessor for ShareRecord);
          }

          else
          {
            sub_10002911C(v56, v89, type metadata accessor for ShareRecord);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v94 = v55;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_101124CDC(0, v55[2] + 1, 1);
              v55 = v94;
            }

            v64 = v55[2];
            v63 = v55[3];
            if (v64 >= v63 >> 1)
            {
              sub_101124CDC(v63 > 1, v64 + 1, 1);
              v55 = v94;
            }

            v55[2] = v64 + 1;
            result = sub_10002911C(v89, v55 + v58 + v64 * v59, type metadata accessor for ShareRecord);
            v56 = v86;
            v57 = v87;
          }

          if (v92 == ++v54)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        break;
      }

      v55 = _swiftEmptyArrayStorage;
LABEL_24:

      if (v55[2])
      {
        v32 = v81;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v94 = v32;
        v27 = v68;
        sub_100FFDCF0(v55, v68, v33);
        v81 = v94;
        sub_100022C40(v27, type metadata accessor for OwnedBeaconRecord);
      }

      else
      {
        v27 = v68;
        sub_100022C40(v68, type metadata accessor for OwnedBeaconRecord);
      }

      v14 = v70;
      v24 = v69;
      v31 = v82;
      v30 = v83 + 1;
      result = v80;
      if (v83 + 1 == v77)
      {

        return v81;
      }
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_100AA9390(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v114 = a2;
  v112 = a3;
  v111 = type metadata accessor for BeaconStoreFileRecord();
  v109 = *(v111 - 1);
  v4 = *(v109 + 64);
  __chkstk_darwin(v111);
  v108 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v110 = *(v6 - 8);
  v7 = *(v110 + 64);
  v8 = __chkstk_darwin(v6);
  v107 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v93 - v10;
  v118 = type metadata accessor for UUID();
  v116 = *(v118 - 1);
  v11 = *(v116 + 64);
  v12 = __chkstk_darwin(v118);
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v93 - v15;
  __chkstk_darwin(v14);
  v99 = &v93 - v17;
  v97 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v18 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v98 = &v93 - v19;
  v20 = type metadata accessor for OwnedBeaconGroup(0);
  v104 = *(v20 - 8);
  v21 = *(v104 + 64);
  v22 = __chkstk_darwin(v20);
  v105 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v93 - v23;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v25 = qword_10177C380;
  v106 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  v101 = xmmword_101385D80;
  *(v26 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v24, type metadata accessor for OwnedBeaconGroup);
  v113 = v20;
  v27 = String.init<A>(describing:)();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  v102 = sub_100008C00();
  *(v26 + 64) = v102;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v103 = v25;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C218;
  v31 = [objc_opt_self() sharedInstance];
  v32 = [v31 isInternalBuild];

  if (v32)
  {
    v33 = String._bridgeToObjectiveC()();
    v32 = [v30 BOOLForKey:v33];
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v35 = result;
    v36 = [result aa_primaryAppleAccount];

    v117 = a1;
    if (v36 && (v36, (v32 & 1) == 0))
    {
      v105 = v21;
      v51 = v110;
      v107 = v24;
      v108 = v6;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v52 = *(v113 + 24);
      v53 = UUID.uuidString.getter();
      v55 = v54;
      v56 = v115;
      v57 = *(v115 + 160);
      v58._countAndFlagsBits = v53;
      v58._object = v55;
      isa = CKRecordID.init(recordName:zoneID:)(v58, v57).super.isa;
      v60 = *(v56 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v96 = isa;
      v113 = sub_100FDB020(isa);

      v97 = swift_allocBox();
      v61 = a1;
      v62 = *(v109 + 56);
      v95 = v63;
      v64 = v111;
      v109 += 56;
      v94 = v62;
      v62(v63, 1, 1, v111);
      v65 = *(v56 + 168);
      v66 = v116;
      v67 = v99;
      (*(v116 + 16))(v99, v61 + v52, v118);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v68 = v108;
      v69 = sub_1000076D4(v108, qword_10177AEF8);
      v70 = v100;
      v71 = (*(v51 + 16))(v100, v69, v68);
      v72 = *(v65 + 16);
      __chkstk_darwin(v71);
      *(&v93 - 4) = v65;
      *(&v93 - 3) = v67;
      *(&v93 - 2) = v70;
      v73 = v98;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v51 + 8))(v70, v68);
      (*(v66 + 8))(v67, v118);
      v94(v73, 0, 1, v64);
      sub_10002311C(v73, v95, &qword_1016B53E0, &unk_1013D65D0);
      v75 = v102;
      v76 = v96;
      static os_log_type_t.default.getter();
      v77 = swift_allocObject();
      *(v77 + 16) = v101;
      v78 = v76;
      v118 = v78;
      v79 = [v78 description];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = v75;
      *(v77 + 32) = v80;
      *(v77 + 40) = v82;
      os_log(_:dso:log:_:_:)();

      v83 = v107;
      sub_100022A54(v117, v107, type metadata accessor for OwnedBeaconGroup);
      v84 = *(v104 + 80);
      v116 = (v84 + 32) & ~v84;
      v85 = &v105[v116 + 7] & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      v87 = v97;
      v88 = v115;
      *(v86 + 16) = v97;
      *(v86 + 24) = v88;
      v111 = type metadata accessor for OwnedBeaconGroup;
      sub_10002911C(v83, v86 + ((v84 + 32) & ~v84), type metadata accessor for OwnedBeaconGroup);
      v89 = (v86 + v85);
      v90 = v112;
      *v89 = v114;
      v89[1] = v90;

      Future.addSuccess(block:)();

      sub_100022A54(v117, v83, type metadata accessor for OwnedBeaconGroup);
      v91 = swift_allocObject();
      *(v91 + 16) = v87;
      *(v91 + 24) = v88;
      sub_10002911C(v83, v91 + v116, v111);
      v92 = (v91 + v85);
      *v92 = v114;
      v92[1] = v90;

      Future.addFailure(block:)();
    }

    else
    {
      v37 = v110;
      v38 = v6;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177BA08);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 67109376;
        *(v42 + 4) = v32;
        *(v42 + 8) = 1024;
        *(v42 + 10) = v36 != 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v42, 0xEu);
      }

      v43 = *(v115 + 168);
      v44 = v117 + *(v113 + 24);
      v45 = v16;
      v109 = *(v116 + 16);
      (v109)(v16, v44, v118);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v46 = sub_1000076D4(v6, qword_10177AEF8);
      v47 = v107;
      v48 = (*(v37 + 16))(v107, v46, v38);
      v49 = *(v43 + 16);
      __chkstk_darwin(v48);
      *(&v93 - 4) = v43;
      *(&v93 - 3) = v16;
      *(&v93 - 2) = v47;
      v50 = v108;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v37 + 8))(v47, v38);
      (*(v116 + 8))(v45, v118);
      sub_100B39D8C(v50);
      v74 = *(v115 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v114(0);
      return sub_100022C40(v50, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100AAA40C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v114 = a2;
  v112 = a3;
  v111 = type metadata accessor for BeaconStoreFileRecord();
  v109 = *(v111 - 1);
  v4 = *(v109 + 64);
  __chkstk_darwin(v111);
  v108 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v110 = *(v6 - 8);
  v7 = *(v110 + 64);
  v8 = __chkstk_darwin(v6);
  v107 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v93 - v10;
  v118 = type metadata accessor for UUID();
  v116 = *(v118 - 1);
  v11 = *(v116 + 64);
  v12 = __chkstk_darwin(v118);
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v93 - v15;
  __chkstk_darwin(v14);
  v99 = &v93 - v17;
  v97 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v18 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v98 = &v93 - v19;
  v20 = type metadata accessor for OwnedBeaconRecord();
  v104 = *(v20 - 8);
  v21 = *(v104 + 64);
  v22 = __chkstk_darwin(v20);
  v105 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v93 - v23;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v25 = qword_10177C380;
  v106 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  v101 = xmmword_101385D80;
  *(v26 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v24, type metadata accessor for OwnedBeaconRecord);
  v113 = v20;
  v27 = String.init<A>(describing:)();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  v102 = sub_100008C00();
  *(v26 + 64) = v102;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v103 = v25;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C218;
  v31 = [objc_opt_self() sharedInstance];
  v32 = [v31 isInternalBuild];

  if (v32)
  {
    v33 = String._bridgeToObjectiveC()();
    v32 = [v30 BOOLForKey:v33];
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v35 = result;
    v36 = [result aa_primaryAppleAccount];

    v117 = a1;
    if (v36 && (v36, (v32 & 1) == 0))
    {
      v105 = v21;
      v51 = v110;
      v107 = v24;
      v108 = v6;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v52 = *(v113 + 20);
      v53 = UUID.uuidString.getter();
      v55 = v54;
      v56 = v115;
      v57 = *(v115 + 160);
      v58._countAndFlagsBits = v53;
      v58._object = v55;
      isa = CKRecordID.init(recordName:zoneID:)(v58, v57).super.isa;
      v60 = *(v56 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v96 = isa;
      v113 = sub_100FDB020(isa);

      v97 = swift_allocBox();
      v61 = a1;
      v62 = *(v109 + 56);
      v95 = v63;
      v64 = v111;
      v109 += 56;
      v94 = v62;
      v62(v63, 1, 1, v111);
      v65 = *(v56 + 168);
      v66 = v116;
      v67 = v99;
      (*(v116 + 16))(v99, v61 + v52, v118);
      if (qword_101694E78 != -1)
      {
        swift_once();
      }

      v68 = v108;
      v69 = sub_1000076D4(v108, qword_10177C070);
      v70 = v100;
      v71 = (*(v51 + 16))(v100, v69, v68);
      v72 = *(v65 + 16);
      __chkstk_darwin(v71);
      *(&v93 - 4) = v65;
      *(&v93 - 3) = v67;
      *(&v93 - 2) = v70;
      v73 = v98;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v51 + 8))(v70, v68);
      (*(v66 + 8))(v67, v118);
      v94(v73, 0, 1, v64);
      sub_10002311C(v73, v95, &qword_1016B53E0, &unk_1013D65D0);
      v75 = v102;
      v76 = v96;
      static os_log_type_t.default.getter();
      v77 = swift_allocObject();
      *(v77 + 16) = v101;
      v78 = v76;
      v118 = v78;
      v79 = [v78 description];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = v75;
      *(v77 + 32) = v80;
      *(v77 + 40) = v82;
      os_log(_:dso:log:_:_:)();

      v83 = v107;
      sub_100022A54(v117, v107, type metadata accessor for OwnedBeaconRecord);
      v84 = *(v104 + 80);
      v116 = (v84 + 32) & ~v84;
      v85 = &v105[v116 + 7] & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      v87 = v97;
      v88 = v115;
      *(v86 + 16) = v97;
      *(v86 + 24) = v88;
      v111 = type metadata accessor for OwnedBeaconRecord;
      sub_10002911C(v83, v86 + ((v84 + 32) & ~v84), type metadata accessor for OwnedBeaconRecord);
      v89 = (v86 + v85);
      v90 = v112;
      *v89 = v114;
      v89[1] = v90;

      Future.addSuccess(block:)();

      sub_100022A54(v117, v83, type metadata accessor for OwnedBeaconRecord);
      v91 = swift_allocObject();
      *(v91 + 16) = v87;
      *(v91 + 24) = v88;
      sub_10002911C(v83, v91 + v116, v111);
      v92 = (v91 + v85);
      *v92 = v114;
      v92[1] = v90;

      Future.addFailure(block:)();
    }

    else
    {
      v37 = v110;
      v38 = v6;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177BA08);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 67109376;
        *(v42 + 4) = v32;
        *(v42 + 8) = 1024;
        *(v42 + 10) = v36 != 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v42, 0xEu);
      }

      v43 = *(v115 + 168);
      v44 = v117 + *(v113 + 20);
      v45 = v16;
      v109 = *(v116 + 16);
      (v109)(v16, v44, v118);
      if (qword_101694E78 != -1)
      {
        swift_once();
      }

      v46 = sub_1000076D4(v6, qword_10177C070);
      v47 = v107;
      v48 = (*(v37 + 16))(v107, v46, v38);
      v49 = *(v43 + 16);
      __chkstk_darwin(v48);
      *(&v93 - 4) = v43;
      *(&v93 - 3) = v16;
      *(&v93 - 2) = v47;
      v50 = v108;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v37 + 8))(v47, v38);
      (*(v116 + 8))(v45, v118);
      sub_100B39D8C(v50);
      v74 = *(v115 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v114(0);
      return sub_100022C40(v50, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100AAB488(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v114 = a2;
  v112 = a3;
  v111 = type metadata accessor for BeaconStoreFileRecord();
  v109 = *(v111 - 1);
  v4 = *(v109 + 64);
  __chkstk_darwin(v111);
  v108 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v110 = *(v6 - 8);
  v7 = *(v110 + 64);
  v8 = __chkstk_darwin(v6);
  v107 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v93 - v10;
  v118 = type metadata accessor for UUID();
  v116 = *(v118 - 1);
  v11 = *(v116 + 64);
  v12 = __chkstk_darwin(v118);
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v93 - v15;
  __chkstk_darwin(v14);
  v99 = &v93 - v17;
  v97 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v18 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v98 = &v93 - v19;
  v20 = type metadata accessor for SharedBeaconRecord(0);
  v104 = *(v20 - 8);
  v21 = *(v104 + 64);
  v22 = __chkstk_darwin(v20);
  v105 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v93 - v23;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v25 = qword_10177C380;
  v106 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  v101 = xmmword_101385D80;
  *(v26 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v24, type metadata accessor for SharedBeaconRecord);
  v113 = v20;
  v27 = String.init<A>(describing:)();
  v29 = v28;
  *(v26 + 56) = &type metadata for String;
  v102 = sub_100008C00();
  *(v26 + 64) = v102;
  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v103 = v25;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C218;
  v31 = [objc_opt_self() sharedInstance];
  v32 = [v31 isInternalBuild];

  if (v32)
  {
    v33 = String._bridgeToObjectiveC()();
    v32 = [v30 BOOLForKey:v33];
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v35 = result;
    v36 = [result aa_primaryAppleAccount];

    v117 = a1;
    if (v36 && (v36, (v32 & 1) == 0))
    {
      v105 = v21;
      v51 = v110;
      v107 = v24;
      v108 = v6;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v52 = *(v113 + 20);
      v53 = UUID.uuidString.getter();
      v55 = v54;
      v56 = v115;
      v57 = *(v115 + 160);
      v58._countAndFlagsBits = v53;
      v58._object = v55;
      isa = CKRecordID.init(recordName:zoneID:)(v58, v57).super.isa;
      v60 = *(v56 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v96 = isa;
      v113 = sub_100FDB020(isa);

      v97 = swift_allocBox();
      v61 = a1;
      v62 = *(v109 + 56);
      v95 = v63;
      v64 = v111;
      v109 += 56;
      v94 = v62;
      v62(v63, 1, 1, v111);
      v65 = *(v56 + 168);
      v66 = v116;
      v67 = v99;
      (*(v116 + 16))(v99, v61 + v52, v118);
      if (qword_101695470 != -1)
      {
        swift_once();
      }

      v68 = v108;
      v69 = sub_1000076D4(v108, qword_10177CD50);
      v70 = v100;
      v71 = (*(v51 + 16))(v100, v69, v68);
      v72 = *(v65 + 16);
      __chkstk_darwin(v71);
      *(&v93 - 4) = v65;
      *(&v93 - 3) = v67;
      *(&v93 - 2) = v70;
      v73 = v98;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v51 + 8))(v70, v68);
      (*(v66 + 8))(v67, v118);
      v94(v73, 0, 1, v64);
      sub_10002311C(v73, v95, &qword_1016B53E0, &unk_1013D65D0);
      v75 = v102;
      v76 = v96;
      static os_log_type_t.default.getter();
      v77 = swift_allocObject();
      *(v77 + 16) = v101;
      v78 = v76;
      v118 = v78;
      v79 = [v78 description];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      *(v77 + 56) = &type metadata for String;
      *(v77 + 64) = v75;
      *(v77 + 32) = v80;
      *(v77 + 40) = v82;
      os_log(_:dso:log:_:_:)();

      v83 = v107;
      sub_100022A54(v117, v107, type metadata accessor for SharedBeaconRecord);
      v84 = *(v104 + 80);
      v116 = (v84 + 32) & ~v84;
      v85 = &v105[v116 + 7] & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      v87 = v97;
      v88 = v115;
      *(v86 + 16) = v97;
      *(v86 + 24) = v88;
      v111 = type metadata accessor for SharedBeaconRecord;
      sub_10002911C(v83, v86 + ((v84 + 32) & ~v84), type metadata accessor for SharedBeaconRecord);
      v89 = (v86 + v85);
      v90 = v112;
      *v89 = v114;
      v89[1] = v90;

      Future.addSuccess(block:)();

      sub_100022A54(v117, v83, type metadata accessor for SharedBeaconRecord);
      v91 = swift_allocObject();
      *(v91 + 16) = v87;
      *(v91 + 24) = v88;
      sub_10002911C(v83, v91 + v116, v111);
      v92 = (v91 + v85);
      *v92 = v114;
      v92[1] = v90;

      Future.addFailure(block:)();
    }

    else
    {
      v37 = v110;
      v38 = v6;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000076D4(v39, qword_10177BA08);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 67109376;
        *(v42 + 4) = v32;
        *(v42 + 8) = 1024;
        *(v42 + 10) = v36 != 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v42, 0xEu);
      }

      v43 = *(v115 + 168);
      v44 = v117 + *(v113 + 20);
      v45 = v16;
      v109 = *(v116 + 16);
      (v109)(v16, v44, v118);
      if (qword_101695470 != -1)
      {
        swift_once();
      }

      v46 = sub_1000076D4(v6, qword_10177CD50);
      v47 = v107;
      v48 = (*(v37 + 16))(v107, v46, v38);
      v49 = *(v43 + 16);
      __chkstk_darwin(v48);
      *(&v93 - 4) = v43;
      *(&v93 - 3) = v16;
      *(&v93 - 2) = v47;
      v50 = v108;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v37 + 8))(v47, v38);
      (*(v116 + 8))(v45, v118);
      sub_100B39D8C(v50);
      v74 = *(v115 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v114(0);
      return sub_100022C40(v50, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100AAC504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for BeaconStoreFileRecord();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v26[1] = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v10, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v11 + 48))(v10, 1, v27) == 1)
  {
    sub_10000B3A8(v10, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v10, v14, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v14);
    sub_100022C40(v14, type metadata accessor for BeaconStoreFileRecord);
  }

  v22 = v30;
  sub_100A8306C(9);
  v29(0);
  sub_100A8375C();
  v23 = *(v22 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v32[3] = type metadata accessor for OwnedBeaconGroup(0);
  v32[4] = sub_10000768C(&qword_1016B5448, type metadata accessor for OwnedBeaconGroup);
  v24 = sub_1000280DC(v32);
  sub_100022A54(v31, v24, type metadata accessor for OwnedBeaconGroup);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v32);
}

uint64_t sub_100AAC878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v31 = a6;
  v32 = a5;
  v33 = a4;
  v8 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v30 = type metadata accessor for BeaconStoreFileRecord();
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v29 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v11, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v12 + 48))(v11, 1, v30) == 1)
  {
    sub_10000B3A8(v11, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    v22 = v28;
    sub_10002911C(v11, v28, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v22);
    sub_100022C40(v22, type metadata accessor for BeaconStoreFileRecord);
  }

  v23 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(9);
  v32(0);
  sub_100A8375C();
  v24 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v34[3] = type metadata accessor for OwnedBeaconRecord();
  v34[4] = sub_10000768C(&unk_1016BB080, type metadata accessor for OwnedBeaconRecord);
  v25 = sub_1000280DC(v34);
  sub_100022A54(v33, v25, type metadata accessor for OwnedBeaconRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v34);
}

uint64_t sub_100AACC2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for BeaconStoreFileRecord();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v26[1] = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v10, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v11 + 48))(v10, 1, v27) == 1)
  {
    sub_10000B3A8(v10, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v10, v14, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v14);
    sub_100022C40(v14, type metadata accessor for BeaconStoreFileRecord);
  }

  v22 = v30;
  sub_100A8306C(9);
  v29(0);
  sub_100A8375C();
  v23 = *(v22 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v32[3] = type metadata accessor for OwnedDeviceKeyRecord();
  v32[4] = sub_10000768C(&qword_1016B5408, type metadata accessor for OwnedDeviceKeyRecord);
  v24 = sub_1000280DC(v32);
  sub_100022A54(v31, v24, type metadata accessor for OwnedDeviceKeyRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v32);
}

uint64_t sub_100AACFA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v31 = a6;
  v32 = a5;
  v33 = a4;
  v8 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v30 = type metadata accessor for BeaconStoreFileRecord();
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v29 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v11, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v12 + 48))(v11, 1, v30) == 1)
  {
    sub_10000B3A8(v11, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    v22 = v28;
    sub_10002911C(v11, v28, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v22);
    sub_100022C40(v22, type metadata accessor for BeaconStoreFileRecord);
  }

  v23 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(9);
  v32(0);
  sub_100A8375C();
  v24 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v34[3] = type metadata accessor for SharedBeaconRecord(0);
  v34[4] = sub_10000768C(&unk_1016CAC90, type metadata accessor for SharedBeaconRecord);
  v25 = sub_1000280DC(v34);
  sub_100022A54(v33, v25, type metadata accessor for SharedBeaconRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v34);
}

uint64_t sub_100AAD354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for BeaconStoreFileRecord();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v26[1] = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v10, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v11 + 48))(v10, 1, v27) == 1)
  {
    sub_10000B3A8(v10, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v10, v14, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v14);
    sub_100022C40(v14, type metadata accessor for BeaconStoreFileRecord);
  }

  v22 = v30;
  sub_100A8306C(9);
  v29(0);
  sub_100A8375C();
  v23 = *(v22 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v32[3] = type metadata accessor for LostModeRecord();
  v32[4] = sub_10000768C(&qword_1016B5418, type metadata accessor for LostModeRecord);
  v24 = sub_1000280DC(v32);
  sub_100022A54(v31, v24, type metadata accessor for LostModeRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v32);
}

uint64_t sub_100AAD6C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for BeaconStoreFileRecord();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v26[1] = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v10, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v11 + 48))(v10, 1, v27) == 1)
  {
    sub_10000B3A8(v10, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v10, v14, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v14);
    sub_100022C40(v14, type metadata accessor for BeaconStoreFileRecord);
  }

  v22 = v30;
  sub_100A8306C(9);
  v29(0);
  sub_100A8375C();
  v23 = *(v22 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v32[3] = type metadata accessor for ShareRecord();
  v32[4] = sub_10000768C(&qword_1016B5440, type metadata accessor for ShareRecord);
  v24 = sub_1000280DC(v32);
  sub_100022A54(v31, v24, type metadata accessor for ShareRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v32);
}

uint64_t sub_100AADA3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v31 = a6;
  v32 = a5;
  v33 = a4;
  v8 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v30 = type metadata accessor for BeaconStoreFileRecord();
  v12 = *(v30 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v29 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v11, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v12 + 48))(v11, 1, v30) == 1)
  {
    sub_10000B3A8(v11, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    v22 = v28;
    sub_10002911C(v11, v28, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v22);
    sub_100022C40(v22, type metadata accessor for BeaconStoreFileRecord);
  }

  v23 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(9);
  v32(0);
  sub_100A8375C();
  v24 = *(a3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v34[3] = type metadata accessor for BeaconNamingRecord();
  v34[4] = sub_10000768C(&qword_10169EEE0, type metadata accessor for BeaconNamingRecord);
  v25 = sub_1000280DC(v34);
  sub_100022A54(v33, v25, type metadata accessor for BeaconNamingRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v34);
}

uint64_t sub_100AADDF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for BeaconStoreFileRecord();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v26[1] = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v10, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v11 + 48))(v10, 1, v27) == 1)
  {
    sub_10000B3A8(v10, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v10, v14, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v14);
    sub_100022C40(v14, type metadata accessor for BeaconStoreFileRecord);
  }

  v22 = v30;
  sub_100A8306C(9);
  v29(0);
  sub_100A8375C();
  v23 = *(v22 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v32[3] = type metadata accessor for SafeLocation();
  v32[4] = sub_10000768C(&qword_1016B5420, type metadata accessor for SafeLocation);
  v24 = sub_1000280DC(v32);
  sub_100022A54(v31, v24, type metadata accessor for SafeLocation);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v32);
}

uint64_t sub_100AAE164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for BeaconStoreFileRecord();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v26[1] = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v10, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v11 + 48))(v10, 1, v27) == 1)
  {
    sub_10000B3A8(v10, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v10, v14, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v14);
    sub_100022C40(v14, type metadata accessor for BeaconStoreFileRecord);
  }

  v22 = v30;
  sub_100A8306C(9);
  v29(0);
  sub_100A8375C();
  v23 = *(v22 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v32[3] = type metadata accessor for LeashRecord();
  v32[4] = sub_10000768C(&qword_1016B5428, type metadata accessor for LeashRecord);
  v24 = sub_1000280DC(v32);
  sub_100022A54(v31, v24, type metadata accessor for LeashRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v32);
}

uint64_t sub_100AAE4D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for BeaconStoreFileRecord();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v26[1] = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v10, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v11 + 48))(v10, 1, v27) == 1)
  {
    sub_10000B3A8(v10, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v10, v14, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v14);
    sub_100022C40(v14, type metadata accessor for BeaconStoreFileRecord);
  }

  v22 = v30;
  sub_100A8306C(9);
  v29(0);
  sub_100A8375C();
  v23 = *(v22 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v32[3] = type metadata accessor for KeyAlignmentRecord();
  v32[4] = sub_10000768C(&qword_1016B5410, type metadata accessor for KeyAlignmentRecord);
  v24 = sub_1000280DC(v32);
  sub_100022A54(v31, v24, type metadata accessor for KeyAlignmentRecord);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v32);
}

uint64_t sub_100AAE84C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for BeaconStoreFileRecord();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_projectBox();
  v26[1] = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  v17 = a1;
  v18 = [v17 description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v19;
  *(v16 + 40) = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  sub_1000D2A70(v15, v10, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v11 + 48))(v10, 1, v27) == 1)
  {
    sub_10000B3A8(v10, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v10, v14, type metadata accessor for BeaconStoreFileRecord);
    sub_100B39D8C(v14);
    sub_100022C40(v14, type metadata accessor for BeaconStoreFileRecord);
  }

  v22 = v30;
  sub_100A8306C(9);
  v29(0);
  sub_100A8375C();
  v23 = *(v22 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedSubject);
  v32[3] = type metadata accessor for BeaconEstimatedLocation();
  v32[4] = sub_10000768C(&qword_1016B5430, type metadata accessor for BeaconEstimatedLocation);
  v24 = sub_1000280DC(v32);
  sub_100022A54(v31, v24, type metadata accessor for BeaconEstimatedLocation);
  PassthroughSubject.send(_:)();
  return sub_100007BAC(v32);
}

uint64_t sub_100AAEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v27 = a5;
  v7 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for BeaconStoreFileRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_projectBox();
  swift_beginAccess();
  sub_1000D2A70(v16, v10, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000B3A8(v10, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v10, v15, type metadata accessor for BeaconStoreFileRecord);
    sub_100B3A9AC(v15);
    sub_100022C40(v15, type metadata accessor for BeaconStoreFileRecord);
  }

  static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10138BBE0;
  v18 = a4 + *(type metadata accessor for OwnedBeaconGroup(0) + 24);
  v19 = UUID.uuidString.getter();
  v21 = v20;
  *(v17 + 56) = &type metadata for String;
  v22 = sub_100008C00();
  *(v17 + 64) = v22;
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v28 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v23 = String.init<A>(describing:)();
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v22;
  *(v17 + 72) = v23;
  *(v17 + 80) = v24;
  os_log(_:dso:log:_:_:)();

  return v27(a1);
}

uint64_t sub_100AAEEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(void))
{
  v29 = a6;
  v30 = a5;
  v10 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for BeaconStoreFileRecord();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  swift_beginAccess();
  sub_1000D2A70(v19, v13, &qword_1016B53E0, &unk_1013D65D0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000B3A8(v13, &qword_1016B53E0, &unk_1013D65D0);
  }

  else
  {
    sub_10002911C(v13, v18, type metadata accessor for BeaconStoreFileRecord);
    sub_100B3A9AC(v18);
    sub_100022C40(v18, type metadata accessor for BeaconStoreFileRecord);
  }

  static os_log_type_t.error.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10138BBE0;
  v21 = a4 + *(a7(0) + 20);
  v22 = UUID.uuidString.getter();
  v24 = v23;
  *(v20 + 56) = &type metadata for String;
  v25 = sub_100008C00();
  *(v20 + 64) = v25;
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  v31 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v26 = String.init<A>(describing:)();
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v25;
  *(v20 + 72) = v26;
  *(v20 + 80) = v27;
  os_log(_:dso:log:_:_:)();

  return v30(a1);
}

uint64_t sub_100AAF1B0(size_t a1)
{
  v66 = a1;
  v2 = type metadata accessor for BeaconEstimatedLocation();
  v3 = *(v2 - 8);
  v57 = v2;
  v58 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for DirectorySequence();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v55 - v20;
  v22 = *(v1 + 168);
  v23 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  v63 = v22;
  v59 = v6;
  v24 = sub_1000076D4(v15, qword_10177BF38);
  UUID.uuidString.getter();
  v56 = v24;
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v23);
  v67 = _swiftEmptyArrayStorage;
  v68 = _swiftEmptyArrayStorage;
  v25 = [objc_opt_self() defaultManager];
  v62 = v21;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v26 = v14;
  DirectorySequence.next()();
  v27 = v64;
  v29 = v64 + 48;
  v28 = *(v64 + 48);
  v30 = v15;
  if (v28(v10, 1, v15) != 1)
  {
    v65 = *(v27 + 32);
    v66 = v27 + 32;
    v31 = (v27 + 8);
    v32 = v63;
    do
    {
      v65(v19, v10, v30);
      v33 = v29;
      v34 = v28;
      v35 = objc_autoreleasePoolPush();
      sub_1006011CC(v19, v32, &v68, &v67);
      objc_autoreleasePoolPop(v35);
      (*v31)(v19, v30);
      DirectorySequence.next()();
      v28 = v34;
      v29 = v33;
    }

    while (v28(v10, 1, v30) != 1);
  }

  (*(v60 + 8))(v26, v61);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v36 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10138BBE0;
  v38 = v68;
  v39 = v68[2];
  *(v37 + 56) = &type metadata for Int;
  *(v37 + 64) = &protocol witness table for Int;
  *(v37 + 32) = v39;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

  v40 = v62;
  v41 = dispatch thunk of CustomStringConvertible.description.getter();
  v43 = v42;
  *(v37 + 96) = &type metadata for String;
  *(v37 + 104) = sub_100008C00();
  *(v37 + 72) = v41;
  *(v37 + 80) = v43;
  os_log(_:dso:log:_:_:)();

  (*(v64 + 8))(v40, v30);

  v44 = *(v38 + 16);
  if (v44)
  {
    v45 = v59;
    v46 = &v59[*(v57 + 20)];
    v47 = *(v58 + 80);
    v66 = v38;
    v48 = v38 + ((v47 + 32) & ~v47);
    v49 = *(v58 + 72);
    v50 = v63;
    v51 = v56;
    do
    {
      v52 = sub_100022A54(v48, v45, type metadata accessor for BeaconEstimatedLocation);
      v53 = *(v50 + 16);
      __chkstk_darwin(v52);
      *(&v55 - 2) = v51;
      *(&v55 - 1) = v46;
      OS_dispatch_queue.sync<A>(execute:)();
      sub_100022C40(v45, type metadata accessor for BeaconEstimatedLocation);
      v48 += v49;
      --v44;
    }

    while (v44);
  }
}

uint64_t sub_100AAF7D8()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v98 = &v80 - v4;
  v5 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v96 = &v80 - v7;
  v103 = type metadata accessor for UUID();
  v83 = *(v103 - 8);
  v8 = *(v83 + 64);
  v9 = __chkstk_darwin(v103);
  v95 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v94 = &v80 - v12;
  __chkstk_darwin(v11);
  v102 = &v80 - v13;
  v14 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = (&v80 - v16);
  v101 = type metadata accessor for SharedBeaconRecord(0);
  v82 = *(v101 - 8);
  v18 = *(v82 + 64);
  __chkstk_darwin(v101);
  v100 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for MemberSharingCircle();
  v81 = *(v105 - 8);
  v20 = *(v81 + 64);
  __chkstk_darwin(v105);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v97 = (&v80 - v25);
  v26 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v99 = *(v26 - 8);
  v27 = *(v99 + 64);
  __chkstk_darwin(v26);
  v92 = &v80 - v28;
  v29 = type metadata accessor for URL();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v91 = (&v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __chkstk_darwin(v32);
  v36 = &v80 - v35;
  __chkstk_darwin(v34);
  v38 = (&v80 - v37);
  v39 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v93 = (&v80 - v41);
  v106 = &_swiftEmptySetSingleton;
  v104 = v1;
  v86 = *(v1 + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v42 = sub_1000076D4(v29, qword_10177AC60);
  v89 = v38;
  v90 = v30;
  v43 = *(v30 + 16);
  v43(v38, v42, v29);
  v43(v36, v38, v29);
  v44 = *(v26 + 40);
  v88 = v44;
  v45 = type metadata accessor for DirectorySequence();
  v87 = v26;
  v84 = v45;
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v85 = v46 + 56;
  v48 = v92;
  v47(&v92[v44], 1, 1, v45);
  v43(v48, v36, v29);
  *(v48 + *(v26 + 36)) = v86;
  v43(v91, v36, v29);

  v49 = v97;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v50 = *(v90 + 8);
  v50(v36, v29);
  v50(v89, v29);
  v47(v49, 0, 1, v84);
  sub_10002311C(v49, v48 + v88, &qword_1016A5970, &unk_1013B3470);
  v51 = *(v99 + 56);
  v52 = v93;
  v53 = v87;
  v51(v93, 1, 1, v87);
  sub_10000B3A8(v52, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v48, v52, &qword_1016A5978, &qword_101410D20);
  v51(v52, 0, 1, v53);
  v54 = sub_100B33E08(v52);
  sub_10000B3A8(v52, &qword_1016A5980, &unk_1013B3480);
  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v90 = v54;
    v57 = v54 + v56;
    v58 = (v82 + 48);
    v59 = *(v81 + 72);
    v97 = (v83 + 48);
    v89 = (v83 + 32);
    v99 = v83 + 16;
    v91 = (v83 + 56);
    v92 = (v83 + 8);
    v60 = v98;
    v93 = v17;
    v61 = v100;
    v62 = v101;
    v63 = v105;
    while (1)
    {
      sub_100022A54(v57, v22, type metadata accessor for MemberSharingCircle);
      if (v22[*(v63 + 40)] == 1)
      {
        break;
      }

      sub_100022C40(v22, type metadata accessor for MemberSharingCircle);
LABEL_6:
      v57 += v59;
      if (!--v55)
      {
        goto LABEL_20;
      }
    }

    sub_100AA5198(&v22[*(v63 + 24)], v17);
    if ((*v58)(v17, 1, v62) == 1)
    {
      sub_100022C40(v22, type metadata accessor for MemberSharingCircle);
      sub_10000B3A8(v17, &unk_101698C30, &unk_101392630);
LABEL_19:
      v63 = v105;
      goto LABEL_6;
    }

    sub_10002911C(v17, v61, type metadata accessor for SharedBeaconRecord);
    if (*(v61 + *(v62 + 64)) != 2)
    {
      sub_100022C40(v61, type metadata accessor for SharedBeaconRecord);
      sub_100022C40(v22, type metadata accessor for MemberSharingCircle);
      goto LABEL_19;
    }

    sub_1000D2A70(v61 + *(v62 + 80), v60, &unk_1016AF890, &qword_1013926D0);
    v64 = v60;
    v65 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
    {
      sub_10000B3A8(v64, &unk_1016AF890, &qword_1013926D0);
      v66 = v96;
      v67 = v103;
      (*v91)(v96, 1, 1, v103);
    }

    else
    {
      v68 = v64 + *(v65 + 20);
      v69 = v96;
      sub_1000D2A70(v68, v96, &qword_1016980D0, &unk_10138F3B0);
      v70 = v64;
      v66 = v69;
      sub_100022C40(v70, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v71 = v69;
      v67 = v103;
      if ((*v97)(v71, 1, v103) != 1)
      {
        (*v89)(v102, v66, v67);
        v72 = *v99;
LABEL_18:
        v73 = v95;
        v75 = v102;
        v74 = v103;
        v72(v95, v102, v103);
        v76 = v94;
        sub_100DE8BCC(v94, v73);
        v77 = *v92;
        (*v92)(v76, v74);
        v77(v75, v74);
        v61 = v100;
        sub_100022C40(v100, type metadata accessor for SharedBeaconRecord);
        sub_100022C40(v22, type metadata accessor for MemberSharingCircle);
        v60 = v98;
        v17 = v93;
        v62 = v101;
        goto LABEL_19;
      }
    }

    v72 = *v99;
    (*v99)(v102, v100 + *(v101 + 20), v67);
    if ((*v97)(v66, 1, v67) != 1)
    {
      sub_10000B3A8(v66, &qword_1016980D0, &unk_10138F3B0);
    }

    goto LABEL_18;
  }

LABEL_20:

  v78 = v106[2];

  return v78;
}

uint64_t sub_100AB035C()
{
  v44 = type metadata accessor for StableIdentifier();
  v1 = *(*(v44 - 8) + 64);
  v2 = __chkstk_darwin(v44);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v39 - v5;
  v43 = type metadata accessor for OwnedBeaconRecord();
  v7 = *(v43 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v43);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v39 = v0;
  result = sub_100025044();
  v14 = result;
  v42 = *(result + 16);
  if (v42)
  {
    v15 = 0;
    v40 = v4 + 8;
    v41 = v4;
    v16 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v18 = *(v7 + 72);
      sub_100022A54(v14 + v17 + v18 * v15, v12, type metadata accessor for OwnedBeaconRecord);
      v19 = *(v43 + 24);
      sub_100022A54(&v12[v19], v6, type metadata accessor for StableIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100022C40(v6, type metadata accessor for StableIdentifier);
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_12;
      }

      sub_100022A54(&v12[v19], v41, type metadata accessor for StableIdentifier);
      v21 = swift_getEnumCaseMultiPayload();
      if (v21 == 3)
      {
        break;
      }

      if (v21 == 2)
      {
        v22 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
        v23 = v40;
        v24 = *&v40[v22[12]];

        v25 = *&v23[v22[16]];

        v26 = *&v23[v22[20]];

        v27 = v22[28];
LABEL_11:
        v31 = *&v23[v27];

        v32 = type metadata accessor for UUID();
        (*(*(v32 - 8) + 8))(v41, v32);
LABEL_12:
        sub_10002911C(v12, v45, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v16[2] + 1, 1);
          v16 = v46;
        }

        v35 = v16[2];
        v34 = v16[3];
        if (v35 >= v34 >> 1)
        {
          sub_10112434C(v34 > 1, v35 + 1, 1);
          v16 = v46;
        }

        v16[2] = v35 + 1;
        result = sub_10002911C(v45, v16 + v17 + v35 * v18, type metadata accessor for OwnedBeaconRecord);
        goto LABEL_4;
      }

      sub_100022C40(v41, type metadata accessor for StableIdentifier);
      result = sub_100022C40(v12, type metadata accessor for OwnedBeaconRecord);
LABEL_4:
      if (v42 == ++v15)
      {
        goto LABEL_18;
      }
    }

    v28 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
    v23 = v40;
    v29 = *&v40[v28[12]];

    v30 = *&v23[v28[16]];

    v27 = v28[20];
    goto LABEL_11;
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_18:

  v36 = v16[2];

  v37 = sub_100AAF7D8();
  v38 = __OFADD__(v37, v36);
  result = v37 + v36;
  if (v38)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_100AB0798()
{
  v1 = *(v0 + 168);
  if (qword_101694568 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  sub_1000076D4(v2, qword_10177A918);
  v3._object = 0x800000010135B5A0;
  v3._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v3);
  type metadata accessor for OwnerPeerTrust();
  sub_1000BC4D4(&qword_101697738, &unk_10138C3F0);
  String.init<A>(describing:)();
  v4 = objc_autoreleasePoolPush();
  v5 = *(v1 + 16);
  __chkstk_darwin(v4);
  sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100AB090C()
{
  v1 = *(v0 + 168);
  if (qword_101694F30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  sub_1000076D4(v2, qword_10177C1D0);
  v3._object = 0x800000010135B5A0;
  v3._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v3);
  type metadata accessor for MemberPeerTrust();
  sub_1000BC4D4(&qword_101697740, &qword_1013D6990);
  String.init<A>(describing:)();
  v4 = objc_autoreleasePoolPush();
  v5 = *(v1 + 16);
  __chkstk_darwin(v4);
  sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v4);
}

void *sub_100AB0A80()
{
  v120 = type metadata accessor for MemberPeerTrust();
  v115 = *(v120 - 8);
  v1 = *(v115 + 64);
  v2 = __chkstk_darwin(v120);
  v118 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v119 = &v99 - v5;
  __chkstk_darwin(v4);
  v125 = &v99 - v6;
  v126 = type metadata accessor for UUID();
  v129 = *(v126 - 8);
  v7 = *(v129 + 64);
  v8 = __chkstk_darwin(v126);
  v130 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v117 = &v99 - v10;
  v100 = type metadata accessor for MemberSharingCircle();
  v101 = *(v100 - 8);
  v11 = *(v101 + 64);
  __chkstk_darwin(v100);
  v121 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v111 = *(v127 - 8);
  v13 = *(v111 + 64);
  __chkstk_darwin(v127);
  v109 = &v99 - v14;
  v15 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v110 = &v99 - v17;
  v18 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v114 = &v99 - v20;
  v21 = sub_1000BC4D4(&qword_1016B5558, &unk_1013D6A30);
  v108 = *(v21 - 8);
  v22 = *(v108 + 64);
  __chkstk_darwin(v21);
  v24 = &v99 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v25);
  v112 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v123 = &v99 - v31;
  __chkstk_darwin(v30);
  v33 = &v99 - v32;
  v34 = sub_1000BC4D4(&qword_1016B5560, &unk_1013D73F0);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v104 = (&v99 - v36);
  v124 = *(v0 + 168);
  if (qword_101694F30 != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v37 = sub_1000076D4(v25, qword_10177C1D0);
    v38 = v26[2];
    v38(v33, v37, v25);
    v39 = v123;
    v38(v123, v33, v25);
    v113 = v33;
    v122 = v21;
    v40 = *(v21 + 40);
    v102 = v40;
    v41 = type metadata accessor for DirectorySequence();
    v42 = *(v41 - 8);
    v128 = *(v42 + 56);
    v116 = (v42 + 56);
    v128(v24 + v40, 1, 1, v41);
    v38(v24, v39, v25);
    *(v24 + *(v122 + 36)) = v124;
    v105 = v38;
    v38(v112, v39, v25);

    v43 = v114;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v44 = v26[1];
    v44(v39, v25);
    v107 = v26 + 1;
    v103 = v44;
    v44(v113, v25);
    v106 = v41;
    v128(v43, 0, 1, v41);
    sub_10002311C(v43, v24 + v102, &qword_1016A5970, &unk_1013B3470);
    v45 = *(v108 + 56);
    v46 = v104;
    v47 = v122;
    v45(v104, 1, 1, v122);
    sub_10000B3A8(v46, &qword_1016B5568, &unk_1013D6A40);
    sub_1000D2AD8(v24, v46, &qword_1016B5558, &unk_1013D6A30);
    v45(v46, 0, 1, v47);
    v122 = sub_100B36A6C(v46);
    sub_10000B3A8(v46, &qword_1016B5560, &unk_1013D73F0);
    if (qword_101694680 != -1)
    {
      swift_once();
    }

    v48 = sub_1000076D4(v25, qword_10177AC60);
    v49 = v113;
    v50 = v105;
    v105(v113, v48, v25);
    v51 = v25;
    v52 = v123;
    v50(v123, v49, v25);
    v108 = *(v127 + 40);
    v53 = v127;
    v54 = v109;
    v55 = v106;
    v24 = v116;
    v128(&v109[v108], 1, 1, v106);
    v50(v54, v52, v51);
    *(v54 + *(v53 + 36)) = v124;
    v50(v112, v52, v51);

    v56 = v114;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v57 = v103;
    v103(v52, v51);
    v57(v49, v51);
    v128(v56, 0, 1, v55);
    sub_10002311C(v56, v54 + v108, &qword_1016A5970, &unk_1013B3470);
    v58 = *(v111 + 56);
    v33 = v110;
    v59 = v127;
    v58(v110, 1, 1, v127);
    sub_10000B3A8(v33, &qword_1016A5988, &qword_1013B3490);
    sub_1000D2AD8(v54, v33, &qword_1016A5978, &qword_101410D20);
    v58(v33, 0, 1, v59);
    v60 = sub_100B33E08(v33);
    sub_10000B3A8(v33, &qword_1016A5980, &unk_1013B3480);
    v61 = *(v60 + 16);
    if (!v61)
    {
      break;
    }

    v124 = *(v100 + 36);
    v62 = *(v101 + 80);
    v116 = v60;
    v33 = v60 + ((v62 + 32) & ~v62);
    v123 = *(v101 + 72);
    v26 = _swiftEmptyArrayStorage;
    v24 = v121;
    v63 = v122;
    while (1)
    {
      sub_100022A54(v33, v24, type metadata accessor for MemberSharingCircle);
      v25 = *(v24 + v124);
      v64 = *(v25 + 16);
      if (v64)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v24 = *(v129 + 72);
        v21 = (*(v129 + 80) + 32) & ~*(v129 + 80);
        v65 = swift_allocObject();
        v66 = j__malloc_size(v65);
        if (!v24)
        {
          goto LABEL_78;
        }

        if (v66 - v21 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_82;
        }

        v65[2] = v64;
        v65[3] = 2 * ((v66 - v21) / v24);
        v68 = sub_1003CC2CC(v131, v65 + v21, v64, v25);
        v21 = v131[3];
        v127 = v131[2];
        v128 = v68;
        v24 = v131[4];

        sub_1000128F8();
        if (v128 != v64)
        {
          goto LABEL_79;
        }

        v24 = v121;
        v63 = v122;
      }

      else
      {
        v65 = _swiftEmptyArrayStorage;
      }

      sub_100022C40(v24, type metadata accessor for MemberSharingCircle);
      v69 = v65[2];
      v25 = v26[2];
      v21 = v25 + v69;
      if (__OFADD__(v25, v69))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v21 <= v26[3] >> 1)
      {
        if (v65[2])
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v25 <= v21)
        {
          v71 = v25 + v69;
        }

        else
        {
          v71 = v25;
        }

        v26 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v71, 1, v26);
        if (v65[2])
        {
LABEL_26:
          if ((v26[3] >> 1) - v26[2] < v69)
          {
            goto LABEL_80;
          }

          v72 = (*(v129 + 80) + 32) & ~*(v129 + 80);
          v73 = *(v129 + 72);
          swift_arrayInitWithCopy();

          if (v69)
          {
            v74 = v26[2];
            v75 = __OFADD__(v74, v69);
            v76 = v74 + v69;
            if (v75)
            {
              goto LABEL_81;
            }

            v26[2] = v76;
          }

          goto LABEL_7;
        }
      }

      if (v69)
      {
        goto LABEL_77;
      }

LABEL_7:
      v33 += v123;
      if (!--v61)
      {

        goto LABEL_32;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
  }

  v26 = _swiftEmptyArrayStorage;
  v63 = v122;
LABEL_32:
  v77 = sub_10000954C(v26);

  v78 = 0;
  v21 = v77 + 56;
  v79 = *(v77 + 56);
  v127 = v77;
  v80 = 1 << *(v77 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & v79;
  v25 = (v80 + 63) >> 6;
  v123 = v129 + 32;
  v124 = v129 + 16;
  v116 = (v129 + 8);
  v83 = v120;
  v121 = v25;
  v122 = v21;
  while (v82)
  {
LABEL_45:
    v86 = v126;
    v33 = v129;
    v87 = v117;
    (*(v129 + 16))(v117, *(v127 + 48) + *(v129 + 72) * (__clz(__rbit64(v82)) | (v78 << 6)), v126);
    (*(v33 + 32))(v130, v87, v86);
    v25 = v63[2];
    if (v25)
    {
      v24 = 0;
      v88 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v89 = v63 + v88;
      v33 = *(v115 + 72);
      v128 = v88;
      v90 = v33 + v88;
      while (1)
      {
        v91 = *(v83 + 20);
        if (static UUID.== infix(_:_:)())
        {
          break;
        }

        ++v24;
        v89 += v33;
        v90 += v33;
        if (v25 == v24)
        {
          goto LABEL_49;
        }
      }

      v26 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_90;
      }

      v92 = v63[2];
      while (v26 != v92)
      {
        if (v26 >= v92)
        {
          goto LABEL_75;
        }

        v21 = v63;
        v93 = v63 + v90;
        v94 = v125;
        sub_100022A54(v93, v125, type metadata accessor for MemberPeerTrust);
        v95 = *(v83 + 20);
        v25 = static UUID.== infix(_:_:)();
        sub_100022C40(v94, type metadata accessor for MemberPeerTrust);
        if (v25)
        {
          v63 = v21;
        }

        else
        {
          if (v26 == v24)
          {
            v63 = v21;
          }

          else
          {
            if (v24 < 0)
            {
              goto LABEL_83;
            }

            v63 = v21;
            v96 = *(v21 + 16);
            if (v24 >= v96)
            {
              goto LABEL_84;
            }

            v25 = v24 * v33;
            sub_100022A54(v128 + v21 + v24 * v33, v119, type metadata accessor for MemberPeerTrust);
            if (v26 >= v96)
            {
              goto LABEL_85;
            }

            sub_100022A54(v21 + v90, v118, type metadata accessor for MemberPeerTrust);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = sub_1006073EC(v21);
            }

            v83 = v120;
            sub_100B25C50(v118, v128 + v63 + v25, type metadata accessor for MemberPeerTrust);
            if (v26 >= v63[2])
            {
              goto LABEL_86;
            }

            sub_100B25C50(v119, v63 + v90, type metadata accessor for MemberPeerTrust);
          }

          ++v24;
        }

        v26 = (v26 + 1);
        v92 = v63[2];
        v90 += v33;
      }

      if (v26 < v24)
      {
        goto LABEL_88;
      }

      if (v24 < 0)
      {
        goto LABEL_89;
      }
    }

    else
    {
LABEL_49:
      v26 = v63[2];
      v24 = v26;
    }

    v25 = v24;
    if (__OFADD__(v26, v24 - v26))
    {
      goto LABEL_87;
    }

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v131[0] = v63;
    if (!v97 || v24 > v63[3] >> 1)
    {
      if (v26 <= v24)
      {
        v84 = v24;
      }

      else
      {
        v84 = v26;
      }

      v63 = sub_100A5C318(v97, v84, 1, v63);
      v131[0] = v63;
    }

    v25 = v121;
    v21 = v122;
    v82 &= v82 - 1;
    sub_100A1A144(v24, v26, 0);
    (*v116)(v130, v126);
    v83 = v120;
  }

  while (1)
  {
    v85 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (v85 >= v25)
    {
      break;
    }

    v82 = *(v21 + 8 * v85);
    ++v78;
    if (v82)
    {
      v78 = v85;
      goto LABEL_45;
    }
  }

  return v63;
}

void *sub_100AB1A78()
{
  v120 = type metadata accessor for OwnerPeerTrust();
  v115 = *(v120 - 8);
  v1 = *(v115 + 64);
  v2 = __chkstk_darwin(v120);
  v118 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v119 = &v99 - v5;
  __chkstk_darwin(v4);
  v125 = &v99 - v6;
  v126 = type metadata accessor for UUID();
  v129 = *(v126 - 8);
  v7 = *(v129 + 64);
  v8 = __chkstk_darwin(v126);
  v130 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v117 = &v99 - v10;
  v100 = type metadata accessor for OwnerSharingCircle();
  v101 = *(v100 - 8);
  v11 = *(v101 + 64);
  __chkstk_darwin(v100);
  v121 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v111 = *(v127 - 8);
  v13 = *(v111 + 64);
  __chkstk_darwin(v127);
  v109 = &v99 - v14;
  v15 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v110 = &v99 - v17;
  v18 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v114 = &v99 - v20;
  v21 = sub_1000BC4D4(&qword_1016B5540, &qword_1013EB270);
  v108 = *(v21 - 8);
  v22 = *(v108 + 64);
  __chkstk_darwin(v21);
  v24 = &v99 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v25);
  v112 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v123 = &v99 - v31;
  __chkstk_darwin(v30);
  v33 = &v99 - v32;
  v34 = sub_1000BC4D4(&qword_1016B5548, &unk_1013D6A20);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v104 = (&v99 - v36);
  v124 = *(v0 + 168);
  if (qword_101694568 != -1)
  {
    goto LABEL_91;
  }

  while (1)
  {
    v37 = sub_1000076D4(v25, qword_10177A918);
    v38 = v26[2];
    v38(v33, v37, v25);
    v39 = v123;
    v38(v123, v33, v25);
    v113 = v33;
    v122 = v21;
    v40 = *(v21 + 40);
    v102 = v40;
    v41 = type metadata accessor for DirectorySequence();
    v42 = *(v41 - 8);
    v128 = *(v42 + 56);
    v116 = (v42 + 56);
    v128(v24 + v40, 1, 1, v41);
    v38(v24, v39, v25);
    *(v24 + *(v122 + 36)) = v124;
    v105 = v38;
    v38(v112, v39, v25);

    v43 = v114;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v44 = v26[1];
    v44(v39, v25);
    v107 = v26 + 1;
    v103 = v44;
    v44(v113, v25);
    v106 = v41;
    v128(v43, 0, 1, v41);
    sub_10002311C(v43, v24 + v102, &qword_1016A5970, &unk_1013B3470);
    v45 = *(v108 + 56);
    v46 = v104;
    v47 = v122;
    v45(v104, 1, 1, v122);
    sub_10000B3A8(v46, &qword_1016B5550, &qword_1013D73D0);
    sub_1000D2AD8(v24, v46, &qword_1016B5540, &qword_1013EB270);
    v45(v46, 0, 1, v47);
    v122 = sub_100B35CB8(v46);
    sub_10000B3A8(v46, &qword_1016B5548, &unk_1013D6A20);
    if (qword_101694EB8 != -1)
    {
      swift_once();
    }

    v48 = sub_1000076D4(v25, qword_10177C0D8);
    v49 = v113;
    v50 = v105;
    v105(v113, v48, v25);
    v51 = v25;
    v52 = v123;
    v50(v123, v49, v25);
    v108 = *(v127 + 40);
    v53 = v127;
    v54 = v109;
    v55 = v106;
    v24 = v116;
    v128(&v109[v108], 1, 1, v106);
    v50(v54, v52, v51);
    *(v54 + *(v53 + 36)) = v124;
    v50(v112, v52, v51);

    v56 = v114;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v57 = v103;
    v103(v52, v51);
    v57(v49, v51);
    v128(v56, 0, 1, v55);
    sub_10002311C(v56, v54 + v108, &qword_1016A5970, &unk_1013B3470);
    v58 = *(v111 + 56);
    v33 = v110;
    v59 = v127;
    v58(v110, 1, 1, v127);
    sub_10000B3A8(v33, &qword_1016A7838, &unk_1013EB250);
    sub_1000D2AD8(v54, v33, &qword_1016A7828, &unk_1013D7340);
    v58(v33, 0, 1, v59);
    v60 = sub_100B34BBC(v33);
    sub_10000B3A8(v33, &qword_1016A7830, &unk_1013D69E0);
    v61 = *(v60 + 16);
    if (!v61)
    {
      break;
    }

    v124 = *(v100 + 32);
    v62 = *(v101 + 80);
    v116 = v60;
    v33 = v60 + ((v62 + 32) & ~v62);
    v123 = *(v101 + 72);
    v26 = _swiftEmptyArrayStorage;
    v24 = v121;
    v63 = v122;
    while (1)
    {
      sub_100022A54(v33, v24, type metadata accessor for OwnerSharingCircle);
      v25 = *(v24 + v124);
      v64 = *(v25 + 16);
      if (v64)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v24 = *(v129 + 72);
        v21 = (*(v129 + 80) + 32) & ~*(v129 + 80);
        v65 = swift_allocObject();
        v66 = j__malloc_size(v65);
        if (!v24)
        {
          goto LABEL_78;
        }

        if (v66 - v21 == 0x8000000000000000 && v24 == -1)
        {
          goto LABEL_82;
        }

        v65[2] = v64;
        v65[3] = 2 * ((v66 - v21) / v24);
        v68 = sub_1003CC2CC(v131, v65 + v21, v64, v25);
        v21 = v131[3];
        v127 = v131[2];
        v128 = v68;
        v24 = v131[4];

        sub_1000128F8();
        if (v128 != v64)
        {
          goto LABEL_79;
        }

        v24 = v121;
        v63 = v122;
      }

      else
      {
        v65 = _swiftEmptyArrayStorage;
      }

      sub_100022C40(v24, type metadata accessor for OwnerSharingCircle);
      v69 = v65[2];
      v25 = v26[2];
      v21 = v25 + v69;
      if (__OFADD__(v25, v69))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v21 <= v26[3] >> 1)
      {
        if (v65[2])
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v25 <= v21)
        {
          v71 = v25 + v69;
        }

        else
        {
          v71 = v25;
        }

        v26 = sub_100A5BFE0(isUniquelyReferenced_nonNull_native, v71, 1, v26);
        if (v65[2])
        {
LABEL_26:
          if ((v26[3] >> 1) - v26[2] < v69)
          {
            goto LABEL_80;
          }

          v72 = (*(v129 + 80) + 32) & ~*(v129 + 80);
          v73 = *(v129 + 72);
          swift_arrayInitWithCopy();

          if (v69)
          {
            v74 = v26[2];
            v75 = __OFADD__(v74, v69);
            v76 = v74 + v69;
            if (v75)
            {
              goto LABEL_81;
            }

            v26[2] = v76;
          }

          goto LABEL_7;
        }
      }

      if (v69)
      {
        goto LABEL_77;
      }

LABEL_7:
      v33 += v123;
      if (!--v61)
      {

        goto LABEL_32;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    swift_once();
  }

  v26 = _swiftEmptyArrayStorage;
  v63 = v122;
LABEL_32:
  v77 = sub_10000954C(v26);

  v78 = 0;
  v21 = v77 + 56;
  v79 = *(v77 + 56);
  v127 = v77;
  v80 = 1 << *(v77 + 32);
  v81 = -1;
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  v82 = v81 & v79;
  v25 = (v80 + 63) >> 6;
  v123 = v129 + 32;
  v124 = v129 + 16;
  v116 = (v129 + 8);
  v83 = v120;
  v121 = v25;
  v122 = v21;
  while (v82)
  {
LABEL_45:
    v86 = v126;
    v33 = v129;
    v87 = v117;
    (*(v129 + 16))(v117, *(v127 + 48) + *(v129 + 72) * (__clz(__rbit64(v82)) | (v78 << 6)), v126);
    (*(v33 + 32))(v130, v87, v86);
    v25 = v63[2];
    if (v25)
    {
      v24 = 0;
      v88 = (*(v115 + 80) + 32) & ~*(v115 + 80);
      v89 = v63 + v88;
      v33 = *(v115 + 72);
      v128 = v88;
      v90 = v33 + v88;
      while (1)
      {
        v91 = *(v83 + 20);
        if (static UUID.== infix(_:_:)())
        {
          break;
        }

        ++v24;
        v89 += v33;
        v90 += v33;
        if (v25 == v24)
        {
          goto LABEL_49;
        }
      }

      v26 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_90;
      }

      v92 = v63[2];
      while (v26 != v92)
      {
        if (v26 >= v92)
        {
          goto LABEL_75;
        }

        v21 = v63;
        v93 = v63 + v90;
        v94 = v125;
        sub_100022A54(v93, v125, type metadata accessor for OwnerPeerTrust);
        v95 = *(v83 + 20);
        v25 = static UUID.== infix(_:_:)();
        sub_100022C40(v94, type metadata accessor for OwnerPeerTrust);
        if (v25)
        {
          v63 = v21;
        }

        else
        {
          if (v26 == v24)
          {
            v63 = v21;
          }

          else
          {
            if (v24 < 0)
            {
              goto LABEL_83;
            }

            v63 = v21;
            v96 = *(v21 + 16);
            if (v24 >= v96)
            {
              goto LABEL_84;
            }

            v25 = v24 * v33;
            sub_100022A54(v128 + v21 + v24 * v33, v119, type metadata accessor for OwnerPeerTrust);
            if (v26 >= v96)
            {
              goto LABEL_85;
            }

            sub_100022A54(v21 + v90, v118, type metadata accessor for OwnerPeerTrust);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = sub_100607400(v21);
            }

            v83 = v120;
            sub_100B25C50(v118, v128 + v63 + v25, type metadata accessor for OwnerPeerTrust);
            if (v26 >= v63[2])
            {
              goto LABEL_86;
            }

            sub_100B25C50(v119, v63 + v90, type metadata accessor for OwnerPeerTrust);
          }

          ++v24;
        }

        v26 = (v26 + 1);
        v92 = v63[2];
        v90 += v33;
      }

      if (v26 < v24)
      {
        goto LABEL_88;
      }

      if (v24 < 0)
      {
        goto LABEL_89;
      }
    }

    else
    {
LABEL_49:
      v26 = v63[2];
      v24 = v26;
    }

    v25 = v24;
    if (__OFADD__(v26, v24 - v26))
    {
      goto LABEL_87;
    }

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v131[0] = v63;
    if (!v97 || v24 > v63[3] >> 1)
    {
      if (v26 <= v24)
      {
        v84 = v24;
      }

      else
      {
        v84 = v26;
      }

      v63 = sub_100A5C1D0(v97, v84, 1, v63);
      v131[0] = v63;
    }

    v25 = v121;
    v21 = v122;
    v82 &= v82 - 1;
    sub_100A1A15C(v24, v26, 0);
    (*v116)(v130, v126);
    v83 = v120;
  }

  while (1)
  {
    v85 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (v85 >= v25)
    {
      break;
    }

    v82 = *(v21 + 8 * v85);
    ++v78;
    if (v82)
    {
      v78 = v85;
      goto LABEL_45;
    }
  }

  return v63;
}

uint64_t sub_100AB2A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle();
  if (*(a1 + *(v4 + 36)) - 1 > 1)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = static UUID.== infix(_:_:)();
  result = (a2 == 0) & v7;
  if (a2)
  {
    if (v7)
    {
      return sub_10112C0E0(*(a1 + *(v5 + 28)), a2) & 1;
    }
  }

  return result;
}

uint64_t sub_100AB2B14()
{
  v1 = *(v0 + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  sub_1000076D4(v2, qword_10177C0D8);
  v3._object = 0x800000010135B5A0;
  v3._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v3);
  type metadata accessor for OwnerSharingCircle();
  sub_1000BC4D4(&qword_1016B5538, &unk_1013D6A10);
  String.init<A>(describing:)();
  v4 = objc_autoreleasePoolPush();
  v5 = *(v1 + 16);
  __chkstk_darwin(v4);
  sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100AB2C88()
{
  v1 = *(v0 + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  sub_1000076D4(v2, qword_10177AC60);
  v3._object = 0x800000010135B5A0;
  v3._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v3);
  type metadata accessor for MemberSharingCircle();
  sub_1000BC4D4(&qword_1016B5530, &unk_1013D6A00);
  String.init<A>(describing:)();
  v4 = objc_autoreleasePoolPush();
  v5 = *(v1 + 16);
  __chkstk_darwin(v4);
  sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100AB2E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_101697610, &unk_10138C4B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v20 - v7);
  v9 = type metadata accessor for SharingCircleSecret();
  v10 = (a1 + *(v9 + 32));
  v11 = *v10;
  v12 = v10[1];
  v13 = (a1 + *(v9 + 28));
  v14 = *v13;
  v15 = v13[1];
  sub_100017D5C(*v10, v12);

  sub_101316078(v11, v12, v14, v15, v8);
  if (v2)
  {

    v16 = type metadata accessor for SharingCircleSecretValue();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v17 = *v10;
    v18 = v10[1];
    *a2 = *v10;
    a2[1] = v18;
    swift_storeEnumTagMultiPayload();
    sub_100017D5C(v17, v18);
  }

  else
  {
    v16 = type metadata accessor for SharingCircleSecretValue();
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    sub_10002911C(v8, a2, type metadata accessor for SharingCircleSecretValue);
  }

  type metadata accessor for SharingCircleSecretValue();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

uint64_t sub_100AB304C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v20 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OwnerSharingCircle();
  if (*(a1 + *(v15 + 28)) != 3)
  {
    v17 = 0;
    return v17 & 1;
  }

  v16 = v15;
  sub_1000D2A70(a2, v9, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    if ((a3 & 1) == 0)
    {
      v17 = 1;
      return v17 & 1;
    }

LABEL_8:
    v17 = *(a1 + *(v16 + 36)) == 1;
    return v17 & 1;
  }

  (*(v11 + 32))(v14, v9, v10);
  v18 = *(v16 + 24);
  v17 = static UUID.== infix(_:_:)();
  (*(v11 + 8))(v14, v10);
  if (v17 & 1) != 0 && (a3)
  {
    goto LABEL_8;
  }

  return v17 & 1;
}

uint64_t sub_100AB3258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v154 = a1;
  v140 = a2;
  v4 = type metadata accessor for OwnerPeerTrust();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v143 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for UUID();
  v160 = *(v169 - 8);
  v8 = *(v160 + 64);
  v9 = __chkstk_darwin(v169);
  v174 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v173 = (&v132 - v12);
  v13 = __chkstk_darwin(v11);
  v166 = &v132 - v14;
  v15 = __chkstk_darwin(v13);
  v150 = &v132 - v16;
  __chkstk_darwin(v15);
  v149 = &v132 - v17;
  v18 = type metadata accessor for OwnerSharingCircle();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v137 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v171 = &v132 - v23;
  v24 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v167 = &v132 - v26;
  v172 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v168 = *(v172 - 8);
  v27 = *(v168 + 64);
  __chkstk_darwin(v172);
  v163 = (&v132 - v28);
  v29 = type metadata accessor for URL();
  v30 = *(v29 - 1);
  v31 = v30[8];
  v32 = __chkstk_darwin(v29);
  v164 = (&v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __chkstk_darwin(v32);
  v36 = (&v132 - v35);
  __chkstk_darwin(v34);
  v38 = &v132 - v37;
  v39 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v165 = (&v132 - v41);
  v42 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v142 = &v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v47 = &v132 - v46;
  v147 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v48 = *(*(v147 - 8) + 64);
  v49 = __chkstk_darwin(v147);
  v141 = &v132 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v148 = &v132 - v52;
  __chkstk_darwin(v51);
  v144 = v5;
  v53 = *(v5 + 56);
  v138 = &v132 - v54;
  v151 = v4;
  v134 = v5 + 56;
  v133 = v53;
  v53();
  v159 = v19;
  v55 = *(v19 + 56);
  v139 = v47;
  v170 = v18;
  v136 = v19 + 56;
  v135 = v55;
  v55(v47, 1, 1, v18);
  v152 = *(v3 + 168);
  if (qword_101694EB8 != -1)
  {
    goto LABEL_43;
  }

LABEL_2:
  v56 = sub_1000076D4(v29, qword_10177C0D8);
  v155 = v29;
  v57 = v30[2];
  v161 = v38;
  v57(v38, v56, v29);
  v58 = v36;
  v57(v36, v38, v155);
  v59 = *(v172 + 40);
  v162 = v59;
  v60 = v172;
  v61 = type metadata accessor for DirectorySequence();
  v158 = *(*(v61 - 8) + 56);
  v36 = v163;
  v158(v59 + v163, 1, 1, v61);
  v57(v36, v58, v155);
  *(v36 + *(v60 + 36)) = v152;
  v57(v164, v58, v155);
  v29 = v155;

  v62 = v167;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v63 = v30[1];
  v63(v58, v29);
  v63(v161, v29);
  v158(v62, 0, 1, v61);
  sub_10002311C(v62, v162 + v36, &qword_1016A5970, &unk_1013B3470);
  v30 = (v168 + 56);
  v64 = *(v168 + 56);
  v65 = v165;
  v38 = v172;
  v64(v165, 1, 1, v172);
  sub_10000B3A8(v65, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v36, v65, &qword_1016A7828, &unk_1013D7340);
  v64(v65, 0, 1, v38);
  v66 = sub_100B34BBC(v65);
  sub_10000B3A8(v65, &qword_1016A7830, &unk_1013D69E0);
  v158 = *(v66 + 16);
  if (!v158)
  {
LABEL_31:

    v115 = v139;
    v116 = v138;
    goto LABEL_32;
  }

  v67 = 0;
  v153 = 0;
  v157 = v66 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
  v172 = v160 + 16;
  v163 = (v160 + 40);
  v164 = (v160 + 32);
  v165 = (v160 + 8);
  v146 = "ntifier at URL: %@";
  v145 = (v144 + 48);
  v68 = v169;
  v69 = v166;
  v156 = v66;
  while (1)
  {
    if (v67 >= *(v66 + 16))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
      goto LABEL_2;
    }

    v70 = v171;
    sub_100022A54(v157 + *(v159 + 72) * v67, v171, type metadata accessor for OwnerSharingCircle);
    v71 = *(v70 + *(v170 + 32));
    v30 = *(v71 + 16);
    v161 = v67;
    if (v30)
    {
      v29 = sub_1003A85FC(v30, 0);
      v168 = sub_1003CC2CC(&v175, v29 + ((*(v160 + 80) + 32) & ~*(v160 + 80)), v30, v71);
      v36 = v175;
      v38 = v177;

      sub_1000128F8();
      if (v168 != v30)
      {
        goto LABEL_42;
      }

      v68 = v169;
    }

    else
    {
      v29 = _swiftEmptyArrayStorage;
    }

    v72 = v29[2];
    v162 = v29;
    if (v72)
    {
      break;
    }

    v36 = _swiftEmptyDictionarySingleton;
LABEL_25:

    if (v36[2])
    {
      v30 = v36;
      v100 = sub_1000210EC(v154);
      if (v101)
      {
        v102 = v160;
        v103 = v150;
        (*(v160 + 16))(v150, v36[7] + *(v160 + 72) * v100, v68);

        v29 = v149;
        (*(v102 + 32))(v149, v103, v68);
        v104 = v155;
        v105 = v152;
        if (qword_101694568 != -1)
        {
          v114 = v155;
          swift_once();
          v104 = v114;
        }

        v106 = sub_1000076D4(v104, qword_10177A918);
        v107._object = (v146 | 0x8000000000000000);
        v107._countAndFlagsBits = 0xD000000000000014;
        prohibitAsyncContext(functionName:)(v107);
        v108 = v151;
        v175 = v151;
        sub_1000BC4D4(&qword_101697738, &unk_10138C3F0);
        v109 = String.init<A>(describing:)();
        v36 = v110;
        v111 = objc_autoreleasePoolPush();
        v30 = *(v105 + 16);
        __chkstk_darwin(v111);
        *(&v132 - 6) = v105;
        *(&v132 - 5) = v29;
        *(&v132 - 4) = v106;
        *(&v132 - 3) = v109;
        *(&v132 - 2) = v36;
        v112 = v148;
        v113 = v153;
        OS_dispatch_queue.sync<A>(execute:)();
        v153 = v113;
        v38 = v112;
        objc_autoreleasePoolPop(v111);

        (*v165)(v29, v68);
        if ((*v145)(v112, 1, v108) == 1)
        {
          sub_100022C40(v171, type metadata accessor for OwnerSharingCircle);
          sub_10000B3A8(v112, &qword_101697798, &unk_10138C4F0);
          v69 = v166;
          goto LABEL_5;
        }

LABEL_39:

        v115 = v139;
        sub_10000B3A8(v139, &unk_1016AFA00, &qword_10138C4D0);
        v131 = v138;
        sub_10000B3A8(v138, &qword_101697798, &unk_10138C4F0);
        sub_10002911C(v38, v131, type metadata accessor for OwnerPeerTrust);
        (v133)(v131, 0, 1, v151);
        sub_10002911C(v171, v115, type metadata accessor for OwnerSharingCircle);
        v135(v115, 0, 1, v170);
        v116 = v131;
LABEL_32:
        v117 = v141;
        sub_1000D2AD8(v116, v141, &qword_101697798, &unk_10138C4F0);
        v118 = (*(v144 + 48))(v117, 1, v151);
        v119 = v143;
        v120 = v142;
        if (v118 == 1)
        {
          sub_10000B3A8(v115, &unk_1016AFA00, &qword_10138C4D0);
          v121 = &qword_101697798;
          v122 = &unk_10138C4F0;
          v123 = v117;
        }

        else
        {
          sub_10002911C(v117, v143, type metadata accessor for OwnerPeerTrust);
          sub_1000D2AD8(v115, v120, &unk_1016AFA00, &qword_10138C4D0);
          if ((*(v159 + 48))(v120, 1, v170) != 1)
          {
            v126 = v137;
            sub_10002911C(v120, v137, type metadata accessor for OwnerSharingCircle);
            v127 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
            v128 = *(v127 + 48);
            v129 = v119;
            v130 = v140;
            sub_10002911C(v129, v140, type metadata accessor for OwnerPeerTrust);
            sub_10002911C(v126, v130 + v128, type metadata accessor for OwnerSharingCircle);
            return (*(*(v127 - 8) + 56))(v130, 0, 1, v127);
          }

          sub_100022C40(v119, type metadata accessor for OwnerPeerTrust);
          v121 = &unk_1016AFA00;
          v122 = &qword_10138C4D0;
          v123 = v120;
        }

        sub_10000B3A8(v123, v121, v122);
        v124 = sub_1000BC4D4(&qword_101698CB0, &qword_10138C1C8);
        return (*(*(v124 - 8) + 56))(v140, 1, 1, v124);
      }
    }

    sub_100022C40(v171, type metadata accessor for OwnerSharingCircle);
LABEL_5:
    v66 = v156;
    v67 = v161 + 1;
    if ((v161 + 1) == v158)
    {
      goto LABEL_31;
    }
  }

  v73 = *(v160 + 72);
  v74 = v29 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
  v168 = sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
  v36 = _swiftEmptyDictionarySingleton;
  v29 = v173;
  v167 = v73;
  while (1)
  {
    v77 = v171 + *(v170 + 20);
    v175 = dispatch thunk of CustomStringConvertible.description.getter();
    v176 = v78;
    v79._countAndFlagsBits = 124;
    v79._object = 0xE100000000000000;
    String.append(_:)(v79);
    v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v80);

    v81 = String.utf8Data.getter();
    v38 = v68;
    v83 = v82;

    v175 = v81;
    v176 = v83;
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100016590(v81, v83);
    v84 = v69;
    v85 = *v172;
    (*v172)(v29, v84, v38);
    v85(v174, v74, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v175 = v36;
    v30 = v36;
    v88 = sub_1000210EC(v29);
    v89 = v36[2];
    v90 = (v87 & 1) == 0;
    v91 = v89 + v90;
    if (__OFADD__(v89, v90))
    {
      __break(1u);
      goto LABEL_39;
    }

    v92 = v87;
    if (v36[3] < v91)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = &v175;
      sub_101005D44();
    }

LABEL_21:
    v29 = v173;
    v36 = v175;
    if (v92)
    {
      v38 = v167;
      v75 = *(v175 + 56) + v88 * v167;
      v68 = v169;
      (*v163)(v75, v174, v169);
    }

    else
    {
      *(v175 + 8 * (v88 >> 6) + 64) |= 1 << v88;
      v38 = v167;
      v95 = v88 * v167;
      v96 = v36[6] + v88 * v167;
      v68 = v169;
      v85(v96, v29, v169);
      (*v164)(v36[7] + v95, v174, v68);
      v97 = v36[2];
      v98 = __OFADD__(v97, 1);
      v99 = v97 + 1;
      if (v98)
      {
        __break(1u);
        goto LABEL_41;
      }

      v36[2] = v99;
    }

    v30 = v165;
    v76 = *v165;
    (*v165)(v29, v68);
    v69 = v166;
    v76(v166, v68);
    v74 += v38;
    if (!--v72)
    {
      goto LABEL_25;
    }
  }

  sub_100FE80C8(v91, isUniquelyReferenced_nonNull_native);
  v30 = v175;
  v93 = sub_1000210EC(v173);
  if ((v92 & 1) == (v94 & 1))
  {
    v88 = v93;
    goto LABEL_21;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

size_t sub_100AB4508(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4)
{
  v5 = v4;
  v150 = a2;
  v149 = a1;
  v164 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v8 = *(*(v164 - 8) + 64);
  __chkstk_darwin(v164);
  v168 = &v145 - v9;
  v176 = type metadata accessor for MemberPeerTrust();
  v158 = *(v176 - 8);
  v10 = *(v158 + 64);
  v11 = __chkstk_darwin(v176);
  v163 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v157 = &v145 - v13;
  v173 = type metadata accessor for UUID();
  v165 = *(v173 - 8);
  v14 = *(v165 + 64);
  v15 = __chkstk_darwin(v173);
  v156 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v145 - v17;
  v19 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v169 = (&v145 - v21);
  v174 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v170 = *(v174 - 8);
  v22 = *(v170 + 64);
  __chkstk_darwin(v174);
  v162 = &v145 - v23;
  v167 = type metadata accessor for URL();
  v160 = *(v167 - 8);
  v24 = *(v160 + 64);
  v25 = __chkstk_darwin(v167);
  *&v155 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v159 = &v145 - v28;
  __chkstk_darwin(v27);
  v172 = &v145 - v29;
  v30 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v161 = &v145 - v32;
  v33 = type metadata accessor for MemberSharingCircle();
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33);
  v146 = &v145 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v166 = &v145 - v38;
  __chkstk_darwin(v37);
  v40 = &v145 - v39;
  v41 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = &v145 - v43;
  v45 = a4 + *(v33 + 24);
  sub_100AA5198(v45, &v145 - v43);
  v46 = type metadata accessor for SharedBeaconRecord(0);
  v47 = *(*(v46 - 8) + 48);
  v148 = v44;
  v48 = v47(v44, 1, v46);
  v147 = v33;
  if (v48 == 1)
  {
    v175 = a3;
    v49 = v4;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000076D4(v50, qword_10177A560);
    sub_100022A54(a4, v40, type metadata accessor for MemberSharingCircle);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v171 = v18;
      v54 = v53;
      v55 = swift_slowAlloc();
      v177 = v55;
      *v54 = 141558275;
      *(v54 + 4) = 1752392040;
      *(v54 + 12) = 2081;
      v56 = *(v33 + 24);
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = v58;
      sub_100022C40(v40, type metadata accessor for MemberSharingCircle);
      v60 = sub_1000136BC(v57, v59, &v177);
      v33 = v147;

      *(v54 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "No shared beacon record for beaconIdentifier: %{private,mask.hash}s.", v54, 0x16u);
      sub_100007BAC(v55);

      v18 = v171;
    }

    else
    {

      v48 = sub_100022C40(v40, type metadata accessor for MemberSharingCircle);
    }

    v5 = v49;
    a3 = v175;
  }

  v61 = *(v5 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v48);
  *(&v145 - 2) = v5;
  *(&v145 - 1) = v45;
  sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v175 = 0;
  v62 = type metadata accessor for BeaconNamingRecord();
  if ((*(*(v62 - 8) + 48))(a3, 1, v62) == 1)
  {
    v63 = v5;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1000076D4(v64, qword_10177A560);
    v65 = v166;
    sub_100022A54(a4, v166, type metadata accessor for MemberSharingCircle);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v18;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v177 = v70;
      *v69 = 141558275;
      *(v69 + 4) = 1752392040;
      *(v69 + 12) = 2081;
      v71 = *(v33 + 24);
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      sub_100022C40(v65, type metadata accessor for MemberSharingCircle);
      v75 = sub_1000136BC(v72, v74, &v177);
      v33 = v147;

      *(v69 + 14) = v75;
      _os_log_impl(&_mh_execute_header, v66, v67, "No beaconName record to delete for beaconIdentifier: %{private,mask.hash}s.", v69, 0x16u);
      sub_100007BAC(v70);

      v18 = v68;
    }

    else
    {

      sub_100022C40(v65, type metadata accessor for MemberSharingCircle);
    }

    v5 = v63;
  }

  v76 = *(v33 + 28);
  v166 = *(v5 + 168);
  if (qword_101694E90 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v77 = v167;
    sub_1000076D4(v167, qword_10177C090);
    v78 = a4;
    UUID.uuidString.getter();
    v79 = v172;
    URL.appendingPathComponent(_:isDirectory:)();

    v81 = v159;
    v80 = v160;
    v82 = *(v160 + 16);
    v82(v159, v79, v77);
    v83 = *(v174 + 40);
    v153 = v83;
    v84 = v174;
    v151 = type metadata accessor for DirectorySequence();
    v85 = *(v151 - 8);
    v86 = *(v85 + 56);
    v154 = v78;
    v152 = v85 + 56;
    v87 = v162;
    v86(&v162[v83], 1, 1, v151);
    v82(v87, v81, v77);
    *(v87 + *(v84 + 36)) = v166;
    v82(v155, v81, v77);

    v88 = v169;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v89 = *(v80 + 8);
    v89(v81, v77);
    v89(v172, v77);
    v86(v88, 0, 1, v151);
    v90 = v154;
    sub_10002311C(v88, v87 + v153, &qword_1016A5970, &unk_1013B3470);
    v91 = *(v170 + 56);
    v92 = v161;
    v93 = v174;
    v91(v161, 1, 1, v174);
    sub_10000B3A8(v92, &qword_1016B5520, &qword_1013D69F0);
    sub_1000D2AD8(v87, v92, &qword_1016B5510, &unk_1013D73B0);
    v91(v92, 0, 1, v93);
    v94 = sub_1000BC4D4(&qword_1016B5528, &qword_1013D69F8);
    v95 = *(v94 + 48);
    v96 = *(v94 + 52);
    v97 = swift_allocObject();
    sub_1000D2AD8(v92, v97 + *(*v97 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
    a4 = sub_100B38FD8((v97 + *(*v97 + class metadata base offset for _SequenceBox + 16)));
    swift_setDeallocating();
    sub_10000B3A8(v97 + *(*v97 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
    v98 = *(*v97 + 48);
    v99 = *(*v97 + 52);
    swift_deallocClassInstance();
    v153 = a4;
    v100 = v168;
    if (!*(a4 + 16))
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Logger();
      sub_1000076D4(v101, qword_10177A560);
      a4 = v146;
      sub_100022A54(v90, v146, type metadata accessor for MemberSharingCircle);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = v18;
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v177 = v106;
        *v105 = 141558275;
        *(v105 + 4) = 1752392040;
        *(v105 + 12) = 2081;
        v107 = *(v147 + 28);
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v110 = v109;
        sub_100022C40(a4, type metadata accessor for MemberSharingCircle);
        v111 = sub_1000136BC(v108, v110, &v177);

        *(v105 + 14) = v111;
        _os_log_impl(&_mh_execute_header, v102, v103, "No sharedSecrets records to delete for circleIdentifier: %{private,mask.hash}s.", v105, 0x16u);
        sub_100007BAC(v106);

        v18 = v104;
      }

      else
      {

        sub_100022C40(a4, type metadata accessor for MemberSharingCircle);
      }
    }

    v112 = sub_10016642C();
    v162 = *(v112 + 2);
    if (!v162)
    {
      break;
    }

    v114 = 0;
    v170 = v165 + 16;
    v174 = v158 + 48;
    v159 = (v165 + 8);
    v160 = "ntifier at URL: %@";
    v172 = _swiftEmptyArrayStorage;
    *&v113 = 141558275;
    v155 = v113;
    v115 = v173;
    v171 = v18;
    v161 = v112;
    while (v114 < *(v112 + 2))
    {
      a4 = v100;
      v116 = &v112[((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v114];
      v169 = *(v165 + 16);
      (v169)(v18, v116, v115);
      v117 = v18;
      if (qword_101694F30 != -1)
      {
        swift_once();
      }

      v118 = sub_1000076D4(v167, qword_10177C1D0);
      v119._object = (v160 | 0x8000000000000000);
      v119._countAndFlagsBits = 0xD000000000000014;
      prohibitAsyncContext(functionName:)(v119);
      v120 = v176;
      v177 = v176;
      sub_1000BC4D4(&qword_101697740, &qword_1013D6990);
      v121 = String.init<A>(describing:)();
      v123 = v122;
      v124 = objc_autoreleasePoolPush();
      v125 = *(v166 + 16);
      __chkstk_darwin(v124);
      *(&v145 - 6) = v126;
      *(&v145 - 5) = v117;
      *(&v145 - 4) = v118;
      *(&v145 - 3) = v121;
      *(&v145 - 2) = v123;
      v127 = v175;
      OS_dispatch_queue.sync<A>(execute:)();
      v175 = v127;
      v128 = v124;
      v100 = v168;
      objc_autoreleasePoolPop(v128);

      v129 = *v174;
      if ((*v174)(v100, 1, v120) == 1)
      {
        a4 = v100;
        v115 = v173;
        v130 = v156;
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v131 = type metadata accessor for Logger();
        sub_1000076D4(v131, qword_10177A560);
        (v169)(v130, v171, v115);
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          v135 = v130;
          v169 = swift_slowAlloc();
          v177 = v169;
          *v134 = v155;
          *(v134 + 4) = 1752392040;
          *(v134 + 12) = 2081;
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          v136 = dispatch thunk of CustomStringConvertible.description.getter();
          a4 = v137;
          v138 = *v159;
          (*v159)(v135, v173);
          v139 = sub_1000136BC(v136, a4, &v177);

          *(v134 + 14) = v139;
          _os_log_impl(&_mh_execute_header, v132, v133, "No peerTrust record to delete for peerTrustIdentifier: %{private,mask.hash}s.", v134, 0x16u);
          sub_100007BAC(v169);
          v100 = v168;

          v115 = v173;
        }

        else
        {

          v138 = *v159;
          (*v159)(v130, v115);
          v100 = a4;
        }
      }

      else
      {
        v138 = *v159;
        v115 = v173;
      }

      v18 = v171;
      v138(v171, v115);
      if (v129(v100, 1, v176) == 1)
      {
        sub_10000B3A8(v100, &qword_101698C10, &unk_10138C1E0);
      }

      else
      {
        v140 = v157;
        sub_10002911C(v100, v157, type metadata accessor for MemberPeerTrust);
        sub_10002911C(v140, v163, type metadata accessor for MemberPeerTrust);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_100A5C318(0, *(v172 + 2) + 1, 1, v172);
        }

        v142 = *(v172 + 2);
        v141 = *(v172 + 3);
        if (v142 >= v141 >> 1)
        {
          v172 = sub_100A5C318(v141 > 1, v142 + 1, 1, v172);
        }

        v143 = v172;
        *(v172 + 2) = v142 + 1;
        sub_10002911C(v163, &v143[((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v142], type metadata accessor for MemberPeerTrust);
      }

      ++v114;
      v112 = v161;
      if (v162 == v114)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  v172 = _swiftEmptyArrayStorage;
LABEL_43:

  sub_100022A54(v154, v149, type metadata accessor for MemberSharingCircle);
  sub_1000D2AD8(v148, v150, &unk_101698C30, &unk_101392630);
  return v153;
}

size_t sub_100AB5A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v145 = a3;
  v123 = a2;
  v121 = a1;
  v146 = type metadata accessor for OwnerPeerTrust();
  v117 = *(v146 - 8);
  v4 = *(v117 + 64);
  v5 = __chkstk_darwin(v146);
  v118 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v134 = &v116 - v7;
  v141 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v138 = *(v141 - 8);
  v8 = *(v138 + 64);
  __chkstk_darwin(v141);
  v133 = &v116 - v9;
  v10 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v132 = (&v116 - v12);
  v153 = type metadata accessor for UUID();
  v142 = *(v153 - 8);
  v13 = v142[8];
  __chkstk_darwin(v153);
  v151 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OwnerSharingCircle();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v147 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v137 = &v116 - v20;
  v21 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v152 = *(v21 - 8);
  v22 = *(v152 + 64);
  __chkstk_darwin(v21);
  v24 = &v116 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v136 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v116 - v31;
  __chkstk_darwin(v30);
  v34 = &v116 - v33;
  v35 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v150 = &v116 - v37;
  v139 = v15;
  v38 = *(v15 + 20);
  v135 = *(v3 + 168);
  if (qword_101694E90 != -1)
  {
LABEL_36:
    swift_once();
  }

  sub_1000076D4(v25, qword_10177C090);
  UUID.uuidString.getter();
  v144 = v34;
  URL.appendingPathComponent(_:isDirectory:)();

  v39 = *(v26 + 16);
  v39(v32, v34, v25);
  v40 = *(v21 + 40);
  v149 = v40;
  v41 = type metadata accessor for DirectorySequence();
  v42 = *(v41 - 8);
  v148 = v21;
  v143 = *(v42 + 56);
  v43 = v42 + 56;
  v143(v40 + v24, 1, 1, v41);
  v39(v24, v32, v25);
  v44 = *(v21 + 36);
  v45 = v32;
  v46 = v136;
  *(v24 + v44) = v135;
  v128 = v26 + 16;
  v127 = v39;
  v39(v46, v32, v25);

  v47 = v137;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v32 = (v26 + 8);
  v48 = *(v26 + 8);
  v129 = v45;
  v48(v45, v25);
  v131 = v25;
  v130 = v26 + 8;
  v125 = v48;
  v48(v144, v25);
  v140 = v41;
  v126 = v43;
  v143(v47, 0, 1, v41);
  sub_10002311C(v47, v149 + v24, &qword_1016A5970, &unk_1013B3470);
  v49 = *(v152 + 56);
  v50 = v150;
  v51 = v148;
  v49(v150, 1, 1, v148);
  sub_10000B3A8(v50, &qword_1016B5520, &qword_1013D69F0);
  sub_1000D2AD8(v24, v50, &qword_1016B5510, &unk_1013D73B0);
  v49(v50, 0, 1, v51);
  v52 = sub_1000BC4D4(&qword_1016B5528, &qword_1013D69F8);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v55 = swift_allocObject();
  sub_1000D2AD8(v50, v55 + *(*v55 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
  v56 = sub_100B38FD8((v55 + *(*v55 + class metadata base offset for _SequenceBox + 16)));
  swift_setDeallocating();
  sub_10000B3A8(v55 + *(*v55 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
  v57 = *(*v55 + 48);
  v58 = *(*v55 + 52);
  swift_deallocClassInstance();
  v120 = v56;
  v59 = v123;
  if (!*(v56 + 16))
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1000076D4(v60, qword_10177A560);
    v61 = v147;
    sub_100022A54(v59, v147, type metadata accessor for OwnerSharingCircle);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v154 = v64;
      *v32 = 141558275;
      *(v32 + 4) = 1752392040;
      *(v32 + 6) = 2081;
      v65 = *(v139 + 20);
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      sub_100022C40(v61, type metadata accessor for OwnerSharingCircle);
      v69 = sub_1000136BC(v66, v68, &v154);

      *(v32 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v62, v63, "No sharedSecrets records to delete for circleIdentifier: %{private,mask.hash}s.", v32, 0x16u);
      sub_100007BAC(v64);
    }

    else
    {

      sub_100022C40(v61, type metadata accessor for OwnerSharingCircle);
    }
  }

  v70 = sub_10016632C();
  v26 = sub_10000954C(v70);

  v34 = *(v145 + 16);
  if (v34)
  {
    v21 = 0;
    v139 = 0;
    v152 = v26 + 56;
    v149 = (v142 + 1);
    v150 = (v142 + 2);
    v124 = (v138 + 56);
    v25 = _swiftEmptyArrayStorage;
    *&v71 = 141558275;
    v122 = v71;
    v147 = v34;
    while (1)
    {
      v119 = v25;
      while (1)
      {
        if (v21 >= v34)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v25 = v21;
        v72 = *(sub_1000BC4D4(&qword_1016B1588, &qword_1013D0A78) - 8);
        v73 = *(v72 + 80);
        v74 = *(v72 + 72);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_35;
        }

        v75 = *(v26 + 16);
        v148 = v21 + 1;
        if (v75)
        {
          v32 = (v145 + ((v73 + 32) & ~v73) + v74 * v21);
          v76 = *(v146 + 20);
          v25 = *(v26 + 40);
          sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
          v77 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v78 = -1 << *(v26 + 32);
          v79 = v77 & ~v78;
          if ((*(v152 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
          {
            break;
          }
        }

LABEL_12:
        v34 = v147;
        v21 = v148;
        if (v148 == v147)
        {
          goto LABEL_33;
        }
      }

      v80 = ~v78;
      v81 = v142[9];
      v82 = v142[2];
      while (1)
      {
        v24 = v26;
        v83 = *(v26 + 48) + v81 * v79;
        v84 = v151;
        v85 = v153;
        v82(v151, v83, v153);
        sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v149)(v84, v85);
        if (v25)
        {
          break;
        }

        v79 = (v79 + 1) & v80;
        v26 = v24;
        if (((*(v152 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      if (qword_101694EB8 != -1)
      {
        swift_once();
      }

      v86 = v131;
      v87 = sub_1000076D4(v131, qword_10177C0D8);
      v88 = v144;
      v89 = v127;
      v127(v144, v87, v86);
      v90 = v129;
      v89(v129, v88, v86);
      v138 = *(v141 + 40);
      v91 = v141;
      v92 = v133;
      v143(&v133[v138], 1, 1, v140);
      v89(v92, v90, v86);
      v93 = v136;
      *(v92 + *(v91 + 36)) = v135;
      v89(v93, v90, v86);

      v94 = v137;
      DirectorySequence.init(at:includingPropertiesForKeys:options:)();
      v95 = v125;
      v125(v90, v86);
      v95(v144, v86);
      v143(v94, 0, 1, v140);
      sub_10002311C(v94, v92 + v138, &qword_1016A5970, &unk_1013B3470);
      v96 = *v124;
      v97 = v132;
      v98 = v141;
      (*v124)(v132, 1, 1, v141);
      sub_10000B3A8(v97, &qword_1016A7838, &unk_1013EB250);
      sub_1000D2AD8(v92, v97, &qword_1016A7828, &unk_1013D7340);
      v96(v97, 0, 1, v98);
      v99 = sub_100B34BBC(v97);
      v100 = sub_10000B3A8(v97, &qword_1016A7830, &unk_1013D69E0);
      __chkstk_darwin(v100);
      *(&v116 - 2) = v32;
      v101 = v139;
      v25 = *(sub_10013CF58(sub_100B25BD8, (&v116 - 4), v99) + 16);

      v102 = v134;
      v139 = v101;
      if (v25 >= 2)
      {
        break;
      }

      sub_100022A54(v32, v118, type metadata accessor for OwnerPeerTrust);
      v111 = v119;
      v26 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_100A5C1D0(0, v111[2] + 1, 1, v111);
      }

      v34 = v147;
      v21 = v148;
      v113 = v111[2];
      v112 = v111[3];
      v114 = v111;
      if (v113 >= v112 >> 1)
      {
        v114 = sub_100A5C1D0(v112 > 1, v113 + 1, 1, v111);
      }

      *(v114 + 16) = v113 + 1;
      v25 = v114;
      sub_10002911C(v118, v114 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v113, type metadata accessor for OwnerPeerTrust);
      if (v21 == v34)
      {
        goto LABEL_33;
      }
    }

    v26 = v24;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    sub_1000076D4(v103, qword_10177A560);
    sub_100022A54(v32, v102, type metadata accessor for OwnerPeerTrust);
    v32 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v154 = v106;
      *v105 = v122;
      *(v105 + 4) = 1752392040;
      *(v105 + 12) = 2081;
      v107 = *(v146 + 20);
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v108 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v109;
      sub_100022C40(v102, type metadata accessor for OwnerPeerTrust);
      v110 = sub_1000136BC(v108, v25, &v154);

      *(v105 + 14) = v110;
      _os_log_impl(&_mh_execute_header, v32, v104, "No peerTrust to delete for peerTrustIdentifier: %{private,mask.hash}s.\nThere are more shared beacons with the sharee.", v105, 0x16u);
      sub_100007BAC(v106);
    }

    else
    {

      sub_100022C40(v102, type metadata accessor for OwnerPeerTrust);
    }

    goto LABEL_12;
  }

LABEL_33:

  sub_100022A54(v123, v121, type metadata accessor for OwnerSharingCircle);
  return v120;
}

BOOL sub_100AB6C6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for OwnerSharingCircle() + 32));
  if (*(v3 + 16) && (v4 = type metadata accessor for OwnerPeerTrust(), v5 = sub_1000210EC(a2 + *(v4 + 20)), (v6 & 1) != 0))
  {
    return *(*(v3 + 56) + v5) != 6;
  }

  else
  {
    return 0;
  }
}

char *sub_100AB6CE8(size_t a1)
{
  v208 = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v3 = *(*(v208 - 8) + 64);
  __chkstk_darwin(v208);
  v207 = &v172 - v4;
  v212 = type metadata accessor for OwnerPeerTrust();
  v172 = *(v212 - 8);
  v5 = *(v172 + 64);
  __chkstk_darwin(v212);
  v173 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1000BC4D4(&qword_10169EFA8, &qword_1013B2700);
  v177 = *(v178 - 8);
  v7 = *(v177 + 64);
  __chkstk_darwin(v178);
  v196 = &v172 - v8;
  v185 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v175 = *(v185 - 8);
  v9 = *(v175 + 64);
  __chkstk_darwin(v185);
  v184 = &v172 - v10;
  v11 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v183 = &v172 - v13;
  v209 = type metadata accessor for OwnerSharingCircle();
  v14 = *(v209 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v209);
  v200 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v203 = (&v172 - v19);
  v20 = __chkstk_darwin(v18);
  v195 = &v172 - v21;
  v22 = __chkstk_darwin(v20);
  v217 = &v172 - v23;
  __chkstk_darwin(v22);
  v25 = &v172 - v24;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v191 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v172 - v32;
  __chkstk_darwin(v31);
  v210 = &v172 - v34;
  v35 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v190 = &v172 - v37;
  v214 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v206 = *(v214 - 8);
  v38 = *(v206 + 64);
  __chkstk_darwin(v214);
  v205 = &v172 - v39;
  v211 = type metadata accessor for URL();
  v193 = *(v211 - 8);
  v40 = *(v193 + 64);
  v41 = __chkstk_darwin(v211);
  v189 = &v172 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v188 = &v172 - v44;
  __chkstk_darwin(v43);
  v192 = &v172 - v45;
  v46 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v204 = (&v172 - v48);
  v49 = *(a1 + 16);
  v50 = _swiftEmptyArrayStorage;
  v213 = v27;
  v187 = v49;
  v202 = v14;
  v194 = a1;
  if (v49)
  {
    v201 = v1;
    v219 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v49, 0);
    v50 = v219;
    v51 = v14;
    v52 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v53 = *(v51 + 72);
    v54 = (v27 + 16);
    v215 = (v27 + 32);
    v216 = v53;
    v55 = v49;
    v56 = v210;
    do
    {
      sub_100022A54(v52, v25, type metadata accessor for OwnerSharingCircle);
      (*v54)(v56, &v25[*(v209 + 20)], v26);
      sub_100022C40(v25, type metadata accessor for OwnerSharingCircle);
      v219 = v50;
      v57 = v26;
      v59 = v50[2];
      v58 = v50[3];
      if (v59 >= v58 >> 1)
      {
        sub_101123D4C(v58 > 1, v59 + 1, 1);
        v56 = v210;
        v50 = v219;
      }

      v50[2] = v59 + 1;
      (*(v213 + 32))(v50 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v59, v56, v57);
      v52 += v216;
      --v55;
      v26 = v57;
    }

    while (v55);
    v1 = v201;
  }

  v216 = sub_10000954C(v50);

  v210 = *(v1 + 168);
  if (qword_101694EB8 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v218 = v26;
    v60 = v211;
    v61 = sub_1000076D4(v211, qword_10177C0D8);
    v62 = v193;
    v63 = v193 + 16;
    v64 = *(v193 + 16);
    v65 = v192;
    v64(v192, v61, v60);
    v66 = v188;
    v64(v188, v65, v60);
    v67 = *(v214 + 40);
    v215 = v67;
    v198 = type metadata accessor for DirectorySequence();
    v68 = *(v198 - 8);
    v197 = *(v68 + 56);
    v69 = v68 + 56;
    v70 = v205;
    v197(v67 + v205, 1, 1, v198);
    v64(v70, v66, v60);
    *(v70 + *(v214 + 36)) = v210;
    v182 = v63;
    v181 = v64;
    v64(v189, v66, v60);

    v71 = v190;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v72 = *(v62 + 8);
    v72(v66, v60);
    v193 = v62 + 8;
    v179 = v72;
    v72(v192, v60);
    v180 = v69;
    v197(v71, 0, 1, v198);
    sub_10002311C(v71, v215 + v70, &qword_1016A5970, &unk_1013B3470);
    v73 = *(v206 + 56);
    v74 = v204;
    v75 = v214;
    v73(v204, 1, 1, v214);
    sub_10000B3A8(v74, &qword_1016A7838, &unk_1013EB250);
    sub_1000D2AD8(v70, v74, &qword_1016A7828, &unk_1013D7340);
    v73(v74, 0, 1, v75);
    v76 = sub_100B34BBC(v74);
    sub_10000B3A8(v74, &qword_1016A7830, &unk_1013D69E0);
    v201 = v76[2];
    if (!v201)
    {
      break;
    }

    v77 = 0;
    v214 = v213 + 16;
    v215 = (v216 + 56);
    v204 = _swiftEmptyArrayStorage;
    v26 = v213 + 8;
    v78 = v202;
    v199 = v76;
    while (v77 < v76[2])
    {
      v79 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v205 = *(v78 + 72);
      v206 = v79;
      sub_100022A54(v76 + v79 + v205 * v77, v217, type metadata accessor for OwnerSharingCircle);
      if (*(v216 + 16) && (v80 = *(v209 + 20), v81 = v216, v82 = *(v216 + 40), sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID), v83 = dispatch thunk of Hashable._rawHashValue(seed:)(), v84 = -1 << *(v81 + 32), v85 = v83 & ~v84, ((*(v215 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) != 0))
      {
        v86 = ~v84;
        v87 = *(v213 + 72);
        v88 = *(v213 + 16);
        while (1)
        {
          v89 = v218;
          v88(v33, *(v216 + 48) + v87 * v85, v218);
          sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
          v90 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v26)(v33, v89);
          if (v90)
          {
            break;
          }

          v85 = (v85 + 1) & v86;
          if (((*(v215 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        sub_100022C40(v217, type metadata accessor for OwnerSharingCircle);
      }

      else
      {
LABEL_18:
        sub_10002911C(v217, v203, type metadata accessor for OwnerSharingCircle);
        v91 = v204;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v219 = v91;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101123FE4(0, v91[2] + 1, 1);
          v91 = v219;
        }

        v94 = v91[2];
        v93 = v91[3];
        if (v94 >= v93 >> 1)
        {
          sub_101123FE4(v93 > 1, v94 + 1, 1);
          v91 = v219;
        }

        v91[2] = v94 + 1;
        v204 = v91;
        sub_10002911C(v203, v91 + v206 + v94 * v205, type metadata accessor for OwnerSharingCircle);
      }

      v78 = v202;
      ++v77;
      v76 = v199;
      if (v77 == v201)
      {
        goto LABEL_24;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
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
    swift_once();
  }

  v204 = _swiftEmptyArrayStorage;
  v78 = v202;
LABEL_24:

  v95 = v204[2];
  v96 = v200;
  if (v95)
  {
    v97 = *(v209 + 32);
    v33 = v204 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v214 = *(v78 + 72);
    v215 = v97;
    v217 = _swiftEmptyArrayStorage;
    v98 = v213;
    v99 = v195;
    while (1)
    {
      sub_100022A54(v33, v99, type metadata accessor for OwnerSharingCircle);
      v26 = *(v215 + v99);
      v100 = *(v26 + 16);
      if (v100)
      {
        sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
        v101 = *(v98 + 72);
        v102 = (*(v98 + 80) + 32) & ~*(v98 + 80);
        v103 = swift_allocObject();
        v104 = j__malloc_size(v103);
        if (!v101)
        {
          goto LABEL_98;
        }

        if (v104 - v102 == 0x8000000000000000 && v101 == -1)
        {
          goto LABEL_103;
        }

        v103[2] = v100;
        v103[3] = 2 * ((v104 - v102) / v101);
        v216 = sub_1003CC2CC(&v219, v103 + v102, v100, v26);

        sub_1000128F8();
        if (v216 != v100)
        {
          goto LABEL_99;
        }

        v96 = v200;
        v98 = v213;
        v99 = v195;
      }

      else
      {
        v103 = _swiftEmptyArrayStorage;
      }

      sub_100022C40(v99, type metadata accessor for OwnerSharingCircle);
      v106 = v103[2];
      v26 = v218;
      v107 = *(v217 + 2);
      v108 = v107 + v106;
      if (__OFADD__(v107, v106))
      {
        goto LABEL_96;
      }

      v109 = swift_isUniquelyReferenced_nonNull_native();
      if (v109 && v108 <= *(v217 + 3) >> 1)
      {
        if (v103[2])
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v107 <= v108)
        {
          v110 = v107 + v106;
        }

        else
        {
          v110 = v107;
        }

        v217 = sub_100A5BFE0(v109, v110, 1, v217);
        if (v103[2])
        {
LABEL_46:
          if ((*(v217 + 3) >> 1) - *(v217 + 2) < v106)
          {
            goto LABEL_100;
          }

          v111 = (*(v98 + 80) + 32) & ~*(v98 + 80);
          v112 = *(v98 + 72);
          swift_arrayInitWithCopy();

          if (v106)
          {
            v113 = *(v217 + 2);
            v114 = __OFADD__(v113, v106);
            v115 = v113 + v106;
            if (v114)
            {
              goto LABEL_102;
            }

            *(v217 + 2) = v115;
          }

          goto LABEL_27;
        }
      }

      if (v106)
      {
        goto LABEL_97;
      }

LABEL_27:
      v33 += v214;
      if (!--v95)
      {

        v78 = v202;
        goto LABEL_52;
      }
    }
  }

  v217 = _swiftEmptyArrayStorage;
  v98 = v213;
LABEL_52:
  v186 = sub_10000954C(v217);

  if (v187)
  {
    v116 = 0;
    v217 = 0;
    v176 = v194 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v175 += 56;
    v205 = "ntifier at URL: %@";
    v206 = v98 + 16;
    v204 = (v98 + 8);
    v203 = (v172 + 48);
    v117 = _swiftEmptyArrayStorage;
    v118 = &_swiftEmptySetSingleton;
    v174 = *(v78 + 72);
    while (1)
    {
      v195 = v117;
      v201 = v118;
      v202 = v116;
      sub_100022A54(v176 + v174 * v116, v96, type metadata accessor for OwnerSharingCircle);
      v119 = v96 + *(v209 + 20);
      if (qword_101694E90 != -1)
      {
        swift_once();
      }

      v120 = v211;
      sub_1000076D4(v211, qword_10177C090);
      UUID.uuidString.getter();
      v121 = v192;
      URL.appendingPathComponent(_:isDirectory:)();

      v122 = v188;
      v123 = v181;
      v181(v188, v121, v120);
      v124 = v185;
      v216 = *(v185 + 40);
      v125 = v184;
      v197(&v184[v216], 1, 1, v198);
      v123(v125, v122, v120);
      *(v125 + *(v124 + 36)) = v210;
      v123(v189, v122, v120);

      v126 = v190;
      DirectorySequence.init(at:includingPropertiesForKeys:options:)();
      v127 = v179;
      v179(v122, v120);
      v127(v121, v120);
      v197(v126, 0, 1, v198);
      sub_10002311C(v126, v125 + v216, &qword_1016A5970, &unk_1013B3470);
      v128 = *v175;
      v129 = v183;
      (*v175)(v183, 1, 1, v124);
      sub_10000B3A8(v129, &qword_1016B5520, &qword_1013D69F0);
      sub_1000D2AD8(v125, v129, &qword_1016B5510, &unk_1013D73B0);
      v128(v129, 0, 1, v124);
      v130 = sub_1000BC4D4(&qword_1016B5528, &qword_1013D69F8);
      v131 = *(v130 + 48);
      v132 = *(v130 + 52);
      v133 = swift_allocObject();
      sub_1000D2AD8(v129, v133 + *(*v133 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
      v194 = sub_100B38FD8((v133 + *(*v133 + class metadata base offset for _SequenceBox + 16)));
      swift_setDeallocating();
      sub_10000B3A8(v133 + *(*v133 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
      v134 = *(*v133 + 48);
      v135 = *(*v133 + 52);
      swift_deallocClassInstance();
      v136 = *(v200 + *(v209 + 32));
      v26 = *(v136 + 16);
      if (v26)
      {
        v137 = sub_1003A85FC(*(v136 + 16), 0);
        v138 = sub_1003CC2CC(&v219, v137 + ((*(v213 + 80) + 32) & ~*(v213 + 80)), v26, v136);

        sub_1000128F8();
        v33 = v217;
        if (v138 != v26)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v137 = _swiftEmptyArrayStorage;
        v33 = v217;
      }

      v139 = sub_10000954C(v137);

      v140 = v201;
      if (*(v186 + 16) > v139[2] >> 3)
      {
        v141 = sub_100610BC8(v186, v139);
      }

      else
      {
        v219 = v139;
        sub_10087D5B4(v186);
        v141 = v219;
      }

      v142 = v213;
      v26 = v218;
      if (*(v140 + 16) <= v141[2] >> 3)
      {
        v219 = v141;
        sub_10087D5B4(v140);
        v143 = v219;
      }

      else
      {
        v143 = sub_100610BC8(v140, v141);
      }

      v144 = v191;
      ++v202;

      v201 = sub_10039DA70(v145, v140);
      v146 = v143 + 7;
      v147 = 1 << *(v143 + 32);
      if (v147 < 64)
      {
        v148 = ~(-1 << v147);
      }

      else
      {
        v148 = -1;
      }

      v149 = v148 & v143[7];
      v150 = (v147 + 63) >> 6;

      v151 = 0;
      v199 = _swiftEmptyArrayStorage;
      v215 = v143 + 7;
      v216 = v143;
      v214 = v150;
LABEL_70:
      v152 = v151;
      if (!v149)
      {
        goto LABEL_72;
      }

      do
      {
        v217 = v33;
        v151 = v152;
LABEL_76:
        (*(v142 + 16))(v144, v143[6] + *(v142 + 72) * (__clz(__rbit64(v149)) | (v151 << 6)), v26);
        if (qword_101694568 != -1)
        {
          swift_once();
        }

        v149 &= v149 - 1;
        v153 = sub_1000076D4(v211, qword_10177A918);
        v154._object = (v205 | 0x8000000000000000);
        v154._countAndFlagsBits = 0xD000000000000014;
        prohibitAsyncContext(functionName:)(v154);
        v219 = v212;
        sub_1000BC4D4(&qword_101697738, &unk_10138C3F0);
        v155 = String.init<A>(describing:)();
        v157 = v156;
        v158 = objc_autoreleasePoolPush();
        v159 = *(v210 + 2);
        __chkstk_darwin(v158);
        *(&v172 - 6) = v160;
        *(&v172 - 5) = v144;
        *(&v172 - 4) = v153;
        *(&v172 - 3) = v155;
        *(&v172 - 2) = v157;
        v161 = v207;
        v33 = v217;
        OS_dispatch_queue.sync<A>(execute:)();
        objc_autoreleasePoolPop(v158);

        v26 = v218;
        (*v204)(v144, v218);
        if ((*v203)(v161, 1, v212) != 1)
        {
          sub_10002911C(v161, v173, type metadata accessor for OwnerPeerTrust);
          v162 = swift_isUniquelyReferenced_nonNull_native();
          v150 = v214;
          if ((v162 & 1) == 0)
          {
            v199 = sub_100A5C1D0(0, v199[2] + 1, 1, v199);
          }

          v142 = v213;
          v143 = v216;
          v164 = v199[2];
          v163 = v199[3];
          if (v164 >= v163 >> 1)
          {
            v199 = sub_100A5C1D0(v163 > 1, v164 + 1, 1, v199);
          }

          v165 = v199;
          v199[2] = v164 + 1;
          sub_10002911C(v173, v165 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v164, type metadata accessor for OwnerPeerTrust);
          v144 = v191;
          v146 = v215;
          goto LABEL_70;
        }

        sub_10000B3A8(v161, &qword_101697798, &unk_10138C4F0);
        v152 = v151;
        v142 = v213;
        v150 = v214;
        v146 = v215;
        v143 = v216;
      }

      while (v149);
      while (1)
      {
LABEL_72:
        v151 = v152 + 1;
        if (__OFADD__(v152, 1))
        {
          __break(1u);
          goto LABEL_95;
        }

        if (v151 >= v150)
        {
          break;
        }

        v149 = v146[v151];
        ++v152;
        if (v149)
        {
          v217 = v33;
          goto LABEL_76;
        }
      }

      v217 = v33;

      v166 = *(v178 + 48);
      v167 = *(v178 + 64);
      v96 = v200;
      v168 = v196;
      sub_100022A54(v200, v196, type metadata accessor for OwnerSharingCircle);
      *(v168 + v166) = v194;
      *(v168 + v167) = v199;
      v117 = v195;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = sub_100A5C364(0, *(v117 + 2) + 1, 1, v117);
      }

      v116 = v202;
      v118 = v201;
      v170 = *(v117 + 2);
      v169 = *(v117 + 3);
      if (v170 >= v169 >> 1)
      {
        v117 = sub_100A5C364(v169 > 1, v170 + 1, 1, v117);
      }

      sub_100022C40(v96, type metadata accessor for OwnerSharingCircle);
      *(v117 + 2) = v170 + 1;
      sub_1000D2AD8(v196, &v117[((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v170], &qword_10169EFA8, &qword_1013B2700);
      if (v116 == v187)
      {

        goto LABEL_93;
      }
    }
  }

  v117 = _swiftEmptyArrayStorage;
LABEL_93:

  return v117;
}

uint64_t sub_100AB87C8(void *a1)
{
  v2 = v1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v33);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UUID();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v31);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v12 = qword_10177B2E8;
  v14 = a1[3];
  v13 = a1[4];
  sub_1000035D0(a1, v14);
  (*(*(*(v13 + 8) + 8) + 32))(v14);
  v15 = *(v12 + OBJC_IVAR____TtC12searchpartyd22BeaconObservationStore_observationsConcurrentQueue);
  v16 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v16);
  v30[-4] = v12;
  v30[-3] = v11;
  v30[-2] = static ProximityPairingStatsCommandPayload.Error.__derived_enum_equals(_:_:);
  v30[-1] = 0;
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v4 + 8))(v7, v33);
  v32 = *(v8 + 8);
  v33 = v11;
  v17 = v31;
  v32(v11, v31);
  v18 = *(v2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v19 = v34;
  v20 = a1[3];
  v21 = a1[4];
  v22 = sub_1000035D0(a1, v20);
  sub_101309728(v22, 0, 0, v19, v20, v21);

  sub_10001F280(a1, &v34);
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  sub_10000A748(&v34, v23 + 24);

  unsafeFromAsyncTask<A>(_:)();
  v30[0] = v2;
  v30[1] = a1;

  sub_10001F280(a1, &v34);
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  sub_10000A748(&v34, v24 + 24);

  unsafeFromAsyncTask<A>(_:)();

  sub_10001F280(a1, &v34);
  v25 = swift_allocObject();
  sub_10000A748(&v34, v25 + 16);
  unsafeFromAsyncTask<A>(_:)();

  v27 = a1[3];
  v26 = a1[4];
  sub_1000035D0(a1, v27);
  v28 = v33;
  (*(*(*(v26 + 8) + 8) + 32))(v27);
  sub_100AAF1B0(v28);
  return (v32)(v28, v17);
}

uint64_t sub_100AB927C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100AB9348, 0, 0);
}

uint64_t sub_100AB9348()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];
  v4 = *(v0[3] + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v5 = v0[2];
  v0[9] = v5;
  v6 = v3[3];
  v7 = v3[4];
  sub_1000035D0(v3, v6);
  (*(*(*(v7 + 8) + 8) + 32))(v6);
  v8 = getuid();
  sub_1000294F0(v8);
  v9 = *(v5 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_100AB94A4;
  v11 = v0[7];
  v12 = v0[8];

  return sub_100689160(v12, v11);
}

uint64_t sub_100AB94A4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100AB9644, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];
    v6 = v3[5];
    v7 = *(v3[6] + 8);
    v7(v3[7], v6);
    v7(v5, v6);

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_100AB9644()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = *(v0[6] + 8);
  v4(v0[7], v3);
  v4(v1, v3);

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

uint64_t sub_100AB9700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100AB97CC, 0, 0);
}

uint64_t sub_100AB97CC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];
  v4 = *(v0[3] + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v5 = v0[2];
  v0[9] = v5;
  v6 = v3[3];
  v7 = v3[4];
  sub_1000035D0(v3, v6);
  (*(*(*(v7 + 8) + 8) + 32))(v6);
  v8 = *(v5 + OBJC_IVAR____TtC12searchpartyd16BeaconKeyManager_keyStore);
  v9 = getuid();
  sub_1000294F0(v9);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_100AB9928;
  v12 = v0[7];
  v11 = v0[8];

  return sub_100682874(v12, v11);
}

uint64_t sub_100AB9928()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v5 = v3[6];
    v4 = v3[7];
    v6 = v3[5];
    v7 = *(v5 + 8);
    v3[12] = v7;
    v3[13] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);

    return _swift_task_switch(sub_100AB9AEC, 0, 0);
  }

  else
  {
    v9 = v3[8];
    v8 = v3[9];
    v10 = v3[5];
    v11 = *(v3[6] + 8);
    v11(v3[7], v10);
    v11(v9, v10);

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_100AB9AEC()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[5];

  v2(v4, v6);

  v7 = v0[1];
  v8 = v0[11];

  return v7();
}

uint64_t sub_100AB9B88(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for UUID();
  v2[3] = v3;
  v4 = *(v3 - 8);
  v2[4] = v4;
  v5 = *(v4 + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_100AB9C78;

  return daemon.getter();
}

uint64_t sub_100AB9C78(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100AB9E54;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100AB9E54(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = a1;

  v7 = *(v3 + 56);
  if (v1)
  {

    v8 = *(v4 + 40);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_100AB9FD8, 0, 0);
  }
}

uint64_t sub_100AB9FD8()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100ABA0B4;
  v6 = v0[9];
  v7 = v0[5];

  return sub_1010D0080(v7);
}

uint64_t sub_100ABA0B4()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100ABA290;
  }

  else
  {
    v6 = sub_100ABA224;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100ABA224()
{
  v1 = v0[9];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100ABA290()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_100ABA300@<X0>(NSObject *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v220 = a3;
  v221 = a1;
  v219 = a4;
  v251 = sub_1000BC4D4(&qword_101698C10, &unk_10138C1E0);
  v7 = *(*(v251 - 8) + 64);
  __chkstk_darwin(v251);
  v250 = &v210 - v8;
  v253 = type metadata accessor for MemberPeerTrust();
  v259 = *(v253 - 8);
  v9 = *(v259 + 64);
  __chkstk_darwin(v253);
  v243 = &v210 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_1000BC4D4(&qword_101698E20, &unk_10139FDF0);
  v244 = *(v245 - 8);
  v11 = *(v244 + 64);
  v12 = __chkstk_darwin(v245);
  v14 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v218 = &v210 - v16;
  v17 = __chkstk_darwin(v15);
  v256 = &v210 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v210 - v20;
  v22 = __chkstk_darwin(v19);
  v242 = &v210 - v23;
  __chkstk_darwin(v22);
  v249 = &v210 - v24;
  v252 = type metadata accessor for MemberSharingCircle();
  v248 = *(v252 - 8);
  v25 = *(v248 + 64);
  __chkstk_darwin(v252);
  v258 = (&v210 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v232 = &v210 - v29;
  v238 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v255 = *(v238 - 8);
  v30 = *(v255 + 64);
  __chkstk_darwin(v238);
  v231 = &v210 - v31;
  v261 = type metadata accessor for URL();
  v247 = *(v261 - 1);
  v32 = *(v247 + 64);
  v33 = __chkstk_darwin(v261);
  v230 = &v210 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v229 = &v210 - v36;
  __chkstk_darwin(v35);
  v237 = &v210 - v37;
  v38 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v228 = &v210 - v40;
  v41 = type metadata accessor for BeaconKeyManager.IndexInformation(0);
  v260 = *(v41 - 8);
  v42 = *(v260 + 64);
  __chkstk_darwin(v41 - 8);
  v263 = (&v210 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v234 = type metadata accessor for UUID();
  v241 = *(v234 - 8);
  v44 = *(v241 + 64);
  v45 = __chkstk_darwin(v234);
  v47 = &v210 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v45);
  v50 = &v210 - v49;
  v51 = __chkstk_darwin(v48);
  v217 = &v210 - v52;
  v53 = __chkstk_darwin(v51);
  v216 = &v210 - v54;
  v55 = __chkstk_darwin(v53);
  v257 = &v210 - v56;
  v57 = __chkstk_darwin(v55);
  v233 = &v210 - v58;
  v59 = __chkstk_darwin(v57);
  v61 = &v210 - v60;
  __chkstk_darwin(v59);
  v262 = &v210 - v62;
  v63 = MACAddress.data.getter();
  sub_1004A4744(&v265, v63, v64);
  v65 = v266;
  if (v266 >> 60 == 15)
  {
    if (qword_101694480 == -1)
    {
LABEL_3:
      v66 = type metadata accessor for Logger();
      sub_1000076D4(v66, qword_10177A560);
      v67 = v241;
      v68 = v234;
      (*(v241 + 16))(v47, v221, v234);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v265 = v72;
        *v71 = 141558275;
        *(v71 + 4) = 1752392040;
        *(v71 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v73 = dispatch thunk of CustomStringConvertible.description.getter();
        v75 = v74;
        (*(v67 + 8))(v47, v68);
        v76 = sub_1000136BC(v73, v75, &v265);

        *(v71 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v69, v70, "Cannot reconcile advertisement for unknownBeacon: %{private,mask.hash}s.", v71, 0x16u);
        sub_100007BAC(v72);
      }

      else
      {

        (*(v67 + 8))(v47, v68);
      }

      type metadata accessor for SPBeaconSharingError(0);
      v267 = 4;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_10000768C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
      _BridgedStoredNSError.init(_:userInfo:)();
      return swift_willThrow();
    }

LABEL_63:
    swift_once();
    goto LABEL_3;
  }

  v213 = a2;
  v212 = v14;
  v77 = v265;
  v78 = *(&v4->isa + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  v79 = v264;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v264 = v79;
  v80 = sub_1012DCA30(v77, v65);

  v47 = v80[2];
  if (v47)
  {
    v236 = v5;
    v211 = v21;
    v214 = v77;
    v215 = v65;
    v265 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v47, 0);
    v81 = v80;
    v82 = v265;
    v83 = *(v260 + 80);
    v246 = v81;
    v84 = v81 + ((v83 + 32) & ~v83);
    v260 = *(v260 + 72);
    v85 = (v241 + 16);
    v86 = v234;
    v240 = (v241 + 16);
    do
    {
      v87 = v263;
      sub_100022A54(v84, v263, type metadata accessor for BeaconKeyManager.IndexInformation);
      v239 = *v85;
      v239(v61, v87, v86);
      sub_100022C40(v87, type metadata accessor for BeaconKeyManager.IndexInformation);
      v265 = v82;
      isa = v82[2].isa;
      v88 = v82[3].isa;
      if (isa >= v88 >> 1)
      {
        sub_101123D4C(v88 > 1, isa + 1, 1);
        v86 = v234;
        v82 = v265;
      }

      v82[2].isa = (isa + 1);
      v90 = *(v241 + 72);
      v91 = v82 + ((*(v241 + 80) + 32) & ~*(v241 + 80)) + v90 * isa;
      v92 = v82 + ((*(v241 + 80) + 32) & ~*(v241 + 80));
      (*(v241 + 32))(v91, v61, v86);
      v84 += v260;
      --v47;
      v85 = v240;
    }

    while (v47);
    v254 = v90;

    v265 = _swiftEmptyArrayStorage;
    v93 = v241;
    v94 = v82;
    v227 = v82[2].isa;
    if (v227)
    {
      v226 = v92;
      v95 = 0;
      v225 = (v247 + 16);
      v260 = v236[21].isa;
      v224 = (v247 + 8);
      v223 = (v255 + 56);
      v246 = (v259 + 48);
      v247 = "ntifier at URL: %@";
      v222 = (v241 + 8);
      v96 = v264;
      v97 = v262;
      v98 = v254;
      while (v95 < v94[2].isa)
      {
        v236 = v94;
        v235 = v95;
        v239(v97, &v226[v95 * v98], v86);
        if (qword_101694680 != -1)
        {
          swift_once();
        }

        v101 = v261;
        v102 = sub_1000076D4(v261, qword_10177AC60);
        v103 = *v225;
        v104 = v237;
        (*v225)(v237, v102, v101);
        v105 = v229;
        v103(v229, v104, v101);
        v106 = *(v238 + 40);
        v264 = v106;
        v259 = type metadata accessor for DirectorySequence();
        v107 = *(v259 - 8);
        v108 = v107[7].isa;
        v263 = v107 + 7;
        v47 = v231;
        v108(&v231[v106], 1, 1, v259);
        v103(v47, v105, v101);
        *&v47[*(v238 + 36)] = v260;
        v103(v230, v105, v101);

        v109 = v232;
        DirectorySequence.init(at:includingPropertiesForKeys:options:)();
        v110 = *v224;
        (*v224)(v105, v101);
        v110(v237, v101);
        v108(v109, 0, 1, v259);
        sub_10002311C(v109, &v47[v264], &qword_1016A5970, &unk_1013B3470);
        v111 = *v223;
        v112 = v228;
        v113 = v238;
        (*v223)(v228, 1, 1, v238);
        sub_10000B3A8(v112, &qword_1016A5988, &qword_1013B3490);
        sub_1000D2AD8(v47, v112, &qword_1016A5978, &qword_101410D20);
        v114 = (v111)(v112, 0, 1, v113);
        __chkstk_darwin(v114);
        v97 = v262;
        *(&v210 - 2) = v262;
        sub_100E6C1A4(sub_100B25948, (&v210 - 4));
        v259 = *(v115 + 16);
        if (v259)
        {
          v116 = 0;
          v263 = _swiftEmptyArrayStorage;
          v117 = v258;
          v255 = v115;
          while (v116 < *(v115 + 16))
          {
            v264 = v96;
            sub_100022A54(v115 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v116, v117, type metadata accessor for MemberSharingCircle);
            v118 = *(v252 + 32);
            if (qword_101694F30 != -1)
            {
              swift_once();
            }

            v119 = v117 + v118;
            v120 = sub_1000076D4(v261, qword_10177C1D0);
            v121._object = (v247 | 0x8000000000000000);
            v121._countAndFlagsBits = 0xD000000000000014;
            prohibitAsyncContext(functionName:)(v121);
            v122 = v253;
            v267 = v253;
            sub_1000BC4D4(&qword_101697740, &qword_1013D6990);
            v123 = String.init<A>(describing:)();
            v125 = v124;
            v126 = objc_autoreleasePoolPush();
            v127 = *(v260 + 16);
            __chkstk_darwin(v126);
            *(&v210 - 6) = v128;
            *(&v210 - 5) = v119;
            *(&v210 - 4) = v120;
            *(&v210 - 3) = v123;
            *(&v210 - 2) = v125;
            v129 = v250;
            v130 = v264;
            OS_dispatch_queue.sync<A>(execute:)();
            v96 = v130;
            objc_autoreleasePoolPop(v126);

            if ((*v246)(v129, 1, v122) == 1)
            {
              v117 = v258;
              sub_100022C40(v258, type metadata accessor for MemberSharingCircle);
              sub_10000B3A8(v129, &qword_101698C10, &unk_10138C1E0);
              v47 = v256;
              v99 = v257;
              v97 = v262;
              v98 = v254;
            }

            else
            {
              v131 = v243;
              sub_10002911C(v129, v243, type metadata accessor for MemberPeerTrust);
              v132 = *(v245 + 48);
              v133 = v131;
              v134 = v242;
              sub_10002911C(v133, v242, type metadata accessor for MemberPeerTrust);
              v117 = v258;
              sub_10002911C(v258, v134 + v132, type metadata accessor for MemberSharingCircle);
              sub_1000D2AD8(v134, v249, &qword_101698E20, &unk_10139FDF0);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v47 = v256;
              v99 = v257;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v263 = sub_100A5D974(0, v263[2].isa + 1, 1, v263);
              }

              v97 = v262;
              v98 = v254;
              v137 = v263[2].isa;
              v136 = v263[3].isa;
              if (v137 >= v136 >> 1)
              {
                v263 = sub_100A5D974(v136 > 1, v137 + 1, 1, v263);
              }

              v138 = v263;
              v263[2].isa = (v137 + 1);
              sub_1000D2AD8(v249, v138 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v137, &qword_101698E20, &unk_10139FDF0);
            }

            ++v116;
            v115 = v255;
            if (v259 == v116)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

        v263 = _swiftEmptyArrayStorage;
        v98 = v254;
        v47 = v256;
        v99 = v257;
LABEL_13:
        v95 = (v235 + 1);

        sub_10039A07C(v263);
        v86 = v234;
        (*v222)(v97, v234);
        v93 = v241;
        v100 = v233;
        v94 = v236;
        if (v95 == v227)
        {

          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v96 = v264;
    v47 = v256;
    v99 = v257;
    v100 = v233;
LABEL_38:
    v155 = v265;
    v156 = v265[2].isa;
    v264 = v96;
    if (v156 > 1)
    {
      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v157 = type metadata accessor for Logger();
      sub_1000076D4(v157, qword_10177A560);
      v158 = v234;
      v239(v100, v221, v234);
      swift_bridgeObjectRetain_n();
      v159 = v220;

      v160 = v159;
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v263 = swift_slowAlloc();
        v265 = v263;
        *v163 = 141558787;
        *(v163 + 4) = 1752392040;
        *(v163 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v164 = v160;
        v165 = dispatch thunk of CustomStringConvertible.description.getter();
        v167 = v166;
        (*(v241 + 8))(v100, v158);
        v168 = sub_1000136BC(v165, v167, &v265);
        v93 = v241;

        *(v163 + 14) = v168;
        *(v163 + 22) = 2080;
        v169 = v164;
        v99 = v257;
        *(v163 + 24) = sub_1000136BC(v213, v169, &v265);
        *(v163 + 32) = 2048;
        v170 = v155[2].isa;

        *(v163 + 34) = v170;

        _os_log_impl(&_mh_execute_header, v161, v162, "Warning: Multiple memberCircles found for unknownBeacon: %{private,mask.hash}s,\nownerHandle: %s, owner peer trust count: %ld.", v163, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        (*(v93 + 8))(v100, v158);
      }

      v156 = v155[2].isa;
      v47 = v256;
    }

    if (v156)
    {
      v171 = v211;
      sub_1000D2A70(v155 + ((*(v244 + 80) + 32) & ~*(v244 + 80)), v211, &qword_101698E20, &unk_10139FDF0);

      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v172 = type metadata accessor for Logger();
      sub_1000076D4(v172, qword_10177A560);
      v173 = v234;
      v239(v99, v221, v234);
      sub_1000D2A70(v171, v47, &qword_101698E20, &unk_10139FDF0);
      v174 = v218;
      sub_1000D2A70(v171, v218, &qword_101698E20, &unk_10139FDF0);
      v175 = Logger.logObject.getter();
      v176 = static os_log_type_t.default.getter();
      v263 = v175;
      if (os_log_type_enabled(v175, v176))
      {
        v177 = swift_slowAlloc();
        v260 = swift_slowAlloc();
        v265 = v260;
        *v177 = 141559299;
        *(v177 + 4) = 1752392040;
        *(v177 + 12) = 2081;
        v262 = sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        LODWORD(v259) = v176;
        v178 = v257;
        v179 = dispatch thunk of CustomStringConvertible.description.getter();
        v181 = v180;
        v261 = *(v93 + 8);
        (v261)(v178, v173);
        v182 = sub_1000136BC(v179, v181, &v265);

        *(v177 + 14) = v182;
        *(v177 + 22) = 2160;
        *(v177 + 24) = 1752392040;
        *(v177 + 32) = 2081;
        v183 = v212;
        sub_1000D2A70(v47, v212, &qword_101698E20, &unk_10139FDF0);
        v184 = *(v245 + 48);
        v185 = v216;
        v239(v216, (v183 + *(v253 + 20)), v173);
        v258 = type metadata accessor for MemberPeerTrust;
        sub_100022C40(v183, type metadata accessor for MemberPeerTrust);
        sub_100022C40(v183 + v184, type metadata accessor for MemberSharingCircle);
        v186 = dispatch thunk of CustomStringConvertible.description.getter();
        v241 = v93 + 8;
        v188 = v187;
        (v261)(v185, v173);
        sub_10000B3A8(v47, &qword_101698E20, &unk_10139FDF0);
        v189 = sub_1000136BC(v186, v188, &v265);

        *(v177 + 34) = v189;
        *(v177 + 42) = 2160;
        *(v177 + 44) = 1752392040;
        *(v177 + 52) = 2081;
        v190 = v218;
        sub_1000D2A70(v218, v183, &qword_101698E20, &unk_10139FDF0);
        v191 = v183 + *(v245 + 48);
        v239(v185, (v191 + *(v252 + 20)), v173);
        sub_100022C40(v191, type metadata accessor for MemberSharingCircle);
        sub_100022C40(v183, v258);
        v192 = dispatch thunk of CustomStringConvertible.description.getter();
        v194 = v193;
        (v261)(v185, v173);
        v171 = v211;
        sub_10000B3A8(v190, &qword_101698E20, &unk_10139FDF0);
        v195 = sub_1000136BC(v192, v194, &v265);

        *(v177 + 54) = v195;
        v196 = v263;
        _os_log_impl(&_mh_execute_header, v263, v259, "Share request data for unknownBeacon: %{private,mask.hash}s,\nowner peer trust: %{private,mask.hash}s,\nshare: %{private,mask.hash}s.", v177, 0x3Eu);
        swift_arrayDestroy();

        sub_100006654(v214, v215);
      }

      else
      {
        sub_100006654(v214, v215);

        sub_10000B3A8(v174, &qword_101698E20, &unk_10139FDF0);
        sub_10000B3A8(v47, &qword_101698E20, &unk_10139FDF0);
        (*(v93 + 8))(v257, v173);
      }

      v208 = v219;
      sub_1000D2AD8(v171, v219, &qword_101698E20, &unk_10139FDF0);
      v209 = 0;
    }

    else
    {

      if (qword_101694480 != -1)
      {
        swift_once();
      }

      v197 = type metadata accessor for Logger();
      sub_1000076D4(v197, qword_10177A560);
      v198 = v217;
      v199 = v234;
      v239(v217, v221, v234);

      v200 = Logger.logObject.getter();
      v201 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v200, v201))
      {
        v202 = swift_slowAlloc();
        v265 = swift_slowAlloc();
        *v202 = 141558531;
        *(v202 + 4) = 1752392040;
        *(v202 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v203 = v198;
        v204 = dispatch thunk of CustomStringConvertible.description.getter();
        v206 = v205;
        (*(v93 + 8))(v203, v199);
        v207 = sub_1000136BC(v204, v206, &v265);

        *(v202 + 14) = v207;
        *(v202 + 22) = 2080;
        *(v202 + 24) = sub_1000136BC(v213, v220, &v265);
        _os_log_impl(&_mh_execute_header, v200, v201, "No peer trust found for unknownBeacon: %{private,mask.hash}s, ownerHandle: %s.", v202, 0x20u);
        swift_arrayDestroy();

        sub_100006654(v214, v215);
      }

      else
      {
        sub_100006654(v214, v215);

        (*(v93 + 8))(v198, v199);
      }

      v209 = 1;
      v208 = v219;
    }

    return (*(v244 + 56))(v208, v209, 1, v245);
  }

  else
  {

    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v140 = type metadata accessor for Logger();
    sub_1000076D4(v140, qword_10177A560);
    v141 = v241;
    v142 = v234;
    (*(v241 + 16))(v50, v221, v234);
    v143 = Logger.logObject.getter();
    v144 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v215 = v65;
      v146 = v145;
      v147 = swift_slowAlloc();
      v148 = v50;
      v149 = v141;
      v214 = v77;
      v150 = v147;
      v265 = v147;
      *v146 = 141558275;
      *(v146 + 4) = 1752392040;
      *(v146 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v151 = dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v152;
      (*(v149 + 8))(v148, v142);
      v154 = sub_1000136BC(v151, v153, &v265);

      *(v146 + 14) = v154;
      _os_log_impl(&_mh_execute_header, v143, v144, "Cannot reconcile advertisement for unknownBeacon: %{private,mask.hash}s.", v146, 0x16u);
      sub_100007BAC(v150);
      v77 = v214;

      v65 = v215;
    }

    else
    {

      (*(v141 + 8))(v50, v142);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v267 = 4;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10000768C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return sub_100006654(v77, v65);
  }
}

uint64_t sub_100ABC318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016C7C90, &qword_1013BB4B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  sub_100AC29C4(a1, &v29 - v12);
  v14 = type metadata accessor for WildModeAssociationRecord(0);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v13, 1, v14) != 1)
  {
    return sub_10002911C(v13, a2, type metadata accessor for WildModeAssociationRecord);
  }

  sub_10000B3A8(v13, &unk_1016C7C90, &qword_1013BB4B0);
  sub_100023184(a1, v11);
  if (v15(v11, 1, v14) != 1)
  {
    v13 = v11;
    return sub_10002911C(v13, a2, type metadata accessor for WildModeAssociationRecord);
  }

  sub_10000B3A8(v11, &unk_1016C7C90, &qword_1013BB4B0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177BA08);
  v18 = v29;
  v17 = v30;
  v19 = v31;
  (*(v30 + 16))(v29, a1, v31);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 141558275;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v17 + 8))(v18, v19);
    v27 = sub_1000136BC(v24, v26, &v33);

    *(v22 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "No wild mode association record found for unknownBeacon: %{private,mask.hash}s.", v22, 0x16u);
    sub_100007BAC(v23);
  }

  else
  {

    (*(v17 + 8))(v18, v19);
  }

  type metadata accessor for SPOwnerSessionError(0);
  v32 = 2;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10000768C(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

uint64_t sub_100ABC770(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v25 = *(v27 - 8);
  v9 = *(v25 + 64);
  __chkstk_darwin(v27);
  v24 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 184);
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v12 = aBlock[0];
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  v14 = *(v12 + 40);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v15 = LOBYTE(aBlock[0]);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  *(v16 + 56) = &type metadata for Bool;
  *(v16 + 64) = &protocol witness table for Bool;
  *(v16 + 32) = v15;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (v15)
  {
    a1(v3);
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v17 = *(v12 + 72);
    v18 = swift_allocObject();
    v18[2] = v12;
    v18[3] = sub_100B27E44;
    v18[4] = v13;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101647938;
    v19 = _Block_copy(aBlock);

    v20 = v24;
    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v21 = v26;
    v22 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v28 + 8))(v21, v22);
    (*(v25 + 8))(v20, v27);
  }
}

uint64_t sub_100ABCC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_10025EDD4(0, 0, v12, &unk_1013D67C0, v15);
}

uint64_t sub_100ABCE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100ABCF54, 0, 0);
}

uint64_t sub_100ABCF54()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[4], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_100ABD09C;
  v9 = v0[2];

  return unsafeBlocking<A>(_:)(v9, sub_100B23C44, v6, &type metadata for () + 8);
}

uint64_t sub_100ABD09C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100ABD1C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_1016972D8, &qword_1013AAC60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  (*(v4 + 16))(&v11 - v6, a2, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v7, v3);
  sub_100ABC770(sub_100720894, v9);
}

uint64_t sub_100ABD310@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for DirectorySequence();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v39 - v16;
  v18 = *(v1 + 168);
  if (qword_1016954B8 != -1)
  {
    swift_once();
  }

  v19 = sub_1000076D4(v10, qword_10177CDB8);
  (*(v11 + 16))(v17, v19, v10);
  v47 = _swiftEmptyArrayStorage;
  v48 = _swiftEmptyArrayStorage;
  v20 = [objc_opt_self() defaultManager];
  v42 = v17;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v44 = v11;
  v46 = v9;
  v21 = *(v11 + 48);
  v22 = v21(v5, 1, v10);
  v45 = v18;
  if (v22 != 1)
  {
    v23 = *(v44 + 32);
    v24 = (v44 + 8);
    do
    {
      v23(v15, v5, v10);
      v25 = objc_autoreleasePoolPush();
      sub_1006041CC(v15, v45, &v48, &v47);
      objc_autoreleasePoolPop(v25);
      (*v24)(v15, v10);
      DirectorySequence.next()();
    }

    while (v21(v5, 1, v10) != 1);
  }

  (*(v40 + 8))(v46, v41);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v26 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10138BBE0;
  v28 = v48;
  v29 = v48[2];
  *(v27 + 56) = &type metadata for Int;
  *(v27 + 64) = &protocol witness table for Int;
  *(v27 + 32) = v29;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

  v30 = v42;
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v33 = v32;
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = sub_100008C00();
  *(v27 + 72) = v31;
  *(v27 + 80) = v33;
  os_log(_:dso:log:_:_:)();

  (*(v44 + 8))(v30, v10);

  if (*(v28 + 16))
  {
    v34 = type metadata accessor for LeashRecord();
    v35 = *(v34 - 8);
    v36 = v43;
    sub_100022A54(v28 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v43, type metadata accessor for LeashRecord);

    return (*(v35 + 56))(v36, 0, 1, v34);
  }

  else
  {

    v38 = type metadata accessor for LeashRecord();
    return (*(*(v38 - 8) + 56))(v43, 1, 1, v38);
  }
}

uint64_t sub_100ABD87C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for DirectorySequence();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v45 = *(v1 + 168);
  v18 = objc_autoreleasePoolPush();
  if (qword_101694EF8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v10, qword_10177C140);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v18);
  v46 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v19 = [objc_opt_self() defaultManager];
  v41 = v17;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v43 = v11;
  v20 = *(v11 + 48);
  if (v20(v5, 1, v10) != 1)
  {
    v44 = *(v43 + 32);
    v21 = (v43 + 8);
    do
    {
      v44(v15, v5, v10);
      v22 = v20;
      v23 = objc_autoreleasePoolPush();
      sub_1005FE1CC(v15, v45, &v47, &v46);
      v24 = v23;
      v20 = v22;
      objc_autoreleasePoolPop(v24);
      (*v21)(v15, v10);
      DirectorySequence.next()();
    }

    while (v22(v5, 1, v10) != 1);
  }

  (*(v39 + 8))(v9, v40);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v25 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10138BBE0;
  v27 = v47;
  v28 = v47[2];
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v28;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

  v29 = v41;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = sub_100008C00();
  *(v26 + 72) = v30;
  *(v26 + 80) = v32;
  os_log(_:dso:log:_:_:)();

  (*(v43 + 8))(v29, v10);

  if (*(v27 + 16))
  {
    v33 = type metadata accessor for LostModeRecord();
    v34 = *(v33 - 8);
    v35 = v42;
    sub_100022A54(v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v42, type metadata accessor for LostModeRecord);

    return (*(v34 + 56))(v35, 0, 1, v33);
  }

  else
  {

    v37 = type metadata accessor for LostModeRecord();
    return (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
  }
}

uint64_t sub_100ABDE10@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for DirectorySequence();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v45 = *(v1 + 168);
  v18 = objc_autoreleasePoolPush();
  if (qword_101694430 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v10, qword_10177A4A0);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v18);
  v46 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v19 = [objc_opt_self() defaultManager];
  v41 = v17;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v43 = v11;
  v20 = *(v11 + 48);
  if (v20(v5, 1, v10) != 1)
  {
    v44 = *(v43 + 32);
    v21 = (v43 + 8);
    do
    {
      v44(v15, v5, v10);
      v22 = v20;
      v23 = objc_autoreleasePoolPush();
      sub_1006035CC(v15, v45, &v47, &v46);
      v24 = v23;
      v20 = v22;
      objc_autoreleasePoolPop(v24);
      (*v21)(v15, v10);
      DirectorySequence.next()();
    }

    while (v22(v5, 1, v10) != 1);
  }

  (*(v39 + 8))(v9, v40);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v25 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10138BBE0;
  v27 = v47;
  v28 = v47[2];
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v28;
  sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

  v29 = v41;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = sub_100008C00();
  *(v26 + 72) = v30;
  *(v26 + 80) = v32;
  os_log(_:dso:log:_:_:)();

  (*(v43 + 8))(v29, v10);

  if (*(v27 + 16))
  {
    v33 = type metadata accessor for LostModeInfoRecord();
    v34 = *(v33 - 8);
    v35 = v42;
    sub_100022A54(v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v42, type metadata accessor for LostModeInfoRecord);

    return (*(v34 + 56))(v35, 0, 1, v33);
  }

  else
  {

    v37 = type metadata accessor for LostModeInfoRecord();
    return (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
  }
}

uint64_t *sub_100ABE3A4(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for UUID();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for TimeBasedKeysCriteria();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v13 = a2[4];
  sub_1000035D0(a2, v12);
  LOBYTE(v12) = sub_10002BD40(v12, v13);
  v14 = a2[4];
  sub_1000035D0(a2, a2[3]);
  v15 = *(v14 + 56);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = v22;
  *v11 = v12 & 1;
  *(v11 + 1) = v16;
  v11[16] = a3;
  swift_storeEnumTagMultiPayload();
  v17 = sub_100ABE7DC(a1, v11);
  sub_100022C40(v11, type metadata accessor for TimeBasedKeysCriteria);
  return v17;
}

uint64_t *sub_100ABE7DC(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v77 = a2;
  v70 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016A5A70, &unk_1013D6860);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v80 = &v63 - v7;
  v8 = _s18ConnectionKeyGroupVMa();
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  __chkstk_darwin(v8);
  v71 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000BC4D4(&qword_10169BA30, &unk_101395620);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v63 - v13;
  v15 = type metadata accessor for TimeBasedKey();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000BC4D4(&qword_1016A5A80, &qword_1013B35A8);
  v82 = *(v20 - 8);
  v21 = *(v82 + 64);
  __chkstk_darwin(v20);
  v23 = &v63 - v22;
  v24 = a1;
  v25 = a1;
  v26 = v78;
  v27 = v79;
  result = sub_100ADA680(v25, v77);
  if (v27)
  {
    return v26;
  }

  v78 = v23;
  v79 = v20;
  v76 = v14;
  v77 = v15;
  v68 = v24;
  v65 = v19;
  v66 = 0;
  v29 = result[2];
  if (!v29)
  {
    v26 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v30 = 0;
  v74 = v8;
  v75 = (v16 + 48);
  v72 = v29;
  v73 += 48;
  v64 = v29 - 1;
  v26 = _swiftEmptyArrayStorage;
  v31 = &qword_10169BA30;
  v32 = &qword_1016A5A70;
  v33 = v82;
  v34 = v78;
  do
  {
    v67 = v26;
    v35 = v30;
    v36 = v79;
    while (1)
    {
      if (v35 >= result[2])
      {
        __break(1u);
        return result;
      }

      v37 = v32;
      v38 = v31;
      v39 = result;
      sub_1000D2A70(result + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v35, v34, &qword_1016A5A80, &qword_1013B35A8);
      v40 = *(v36 + 48);
      v41 = v76;
      sub_1000D2A70(v34, v76, v38, &unk_101395620);
      if ((*v75)(v41, 1, v77) != 1)
      {
        v50 = v41;
        v31 = v38;
        v51 = v65;
        sub_10002911C(v50, v65, type metadata accessor for TimeBasedKey);
        v52 = *v51;
        v53 = type metadata accessor for TimeBasedKey;
        v54 = v51;
        goto LABEL_19;
      }

      v42 = v41;
      v31 = v38;
      sub_10000B3A8(v42, v38, &unk_101395620);
      v43 = v34 + v40;
      v44 = v80;
      v32 = v37;
      sub_1000D2A70(v43, v80, v37, &unk_1013D6860);
      if ((*v73)(v44, 1, v74) == 1)
      {
        sub_10000B3A8(v44, v37, &unk_1013D6860);
LABEL_6:
        v34 = v78;
        goto LABEL_7;
      }

      v45 = v71;
      sub_10002911C(v44, v71, _s18ConnectionKeyGroupVMa);
      sub_10001F280(v68, v81);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v46 = v69;
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_100022C40(v45, _s18ConnectionKeyGroupVMa);
        goto LABEL_6;
      }

      sub_100022C40(v46, type metadata accessor for SharedBeaconRecord);
      v47 = v45[7];
      v48 = v45[8];
      sub_1000035D0(v45 + 4, v47);
      if ((sub_10002BD40(v47, v48) & 1) == 0)
      {
        break;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v34 = v78;
      if (v49)
      {
        goto LABEL_18;
      }

      v32 = v37;
      sub_100022C40(v71, _s18ConnectionKeyGroupVMa);
LABEL_7:
      ++v35;
      sub_10000B3A8(v34, &qword_1016A5A80, &qword_1013B35A8);
      v36 = v79;
      v33 = v82;
      result = v39;
      if (v72 == v35)
      {
        v26 = v67;
        goto LABEL_27;
      }
    }

LABEL_18:
    v55 = v71;
    v56 = v71[8];
    sub_1000035D0(v71 + 4, v71[7]);
    v57 = *(v56 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v52 = v81[0];
    v53 = _s18ConnectionKeyGroupVMa;
    v54 = v55;
    v34 = v78;
LABEL_19:
    sub_100022C40(v54, v53);
    sub_10000B3A8(v34, &qword_1016A5A80, &qword_1013B35A8);
    v58 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_100A5D114(0, *(v58 + 2) + 1, 1, v58);
    }

    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    v61 = v58;
    v33 = v82;
    if (v60 >= v59 >> 1)
    {
      v62 = sub_100A5D114((v59 > 1), v60 + 1, 1, v58);
      v33 = v82;
      v61 = v62;
    }

    v30 = v35 + 1;
    *(v61 + 2) = v60 + 1;
    v26 = v61;
    *&v61[8 * v60 + 32] = v52;
    result = v39;
    v32 = v37;
  }

  while (v64 != v35);
LABEL_27:

  return v26;
}

void sub_100ABEEFC(uint64_t a1)
{
  v2 = v1;
  v66 = type metadata accessor for OwnedBeaconRecord();
  v62 = *(v66 - 8);
  v4 = *(v62 + 64);
  v5 = __chkstk_darwin(v66);
  v6 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v64 = &v59 - v8;
  __chkstk_darwin(v7);
  v10 = &v59 - v9;
  v63 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v11 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v65 = &v59 - v12;
  v13 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v59 - v15;
  v17 = type metadata accessor for KeyAlignmentRecord();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  if (sub_1000322C8())
  {
    v60 = a1 + *(v66 + 20);
    v61 = v2;
    v23 = *(v2 + 168);
    sub_100B2DA4C(v16);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      v36 = v21;
      sub_10002911C(v16, v21, type metadata accessor for KeyAlignmentRecord);
      sub_1000BC4D4(&qword_1016B5508, &qword_1013D6970);
      unsafeFromAsyncTask<A>(_:)();
      v37 = v67;
      if (v67)
      {
        sub_100022A54(v22, v10, type metadata accessor for OwnedBeaconRecord);
        v38 = (*(v62 + 80) + 24) & ~*(v62 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        sub_10002911C(v10, v39 + v38, type metadata accessor for OwnedBeaconRecord);
        swift_retain_n();
        v40 = v65;
        unsafeFromAsyncTask<A>(_:)();

        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_1000076D4(v41, qword_10177BA08);
        v42 = v64;
        sub_100022A54(v22, v64, type metadata accessor for OwnedBeaconRecord);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v67 = v46;
          *v45 = 141558275;
          *(v45 + 4) = 1752392040;
          *(v45 + 12) = 2081;
          v47 = *(v66 + 20);
          type metadata accessor for UUID();
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v49;
          sub_100022C40(v42, type metadata accessor for OwnedBeaconRecord);
          v51 = sub_1000136BC(v48, v50, &v67);

          *(v45 + 14) = v51;
          _os_log_impl(&_mh_execute_header, v43, v44, "Updating KeyAlignmentRecord for identifier %{private,mask.hash}s.", v45, 0x16u);
          sub_100007BAC(v46);
        }

        else
        {

          sub_100022C40(v42, type metadata accessor for OwnedBeaconRecord);
        }

        v56 = v61;
        v57 = type metadata accessor for Transaction();
        __chkstk_darwin(v57);
        *(&v59 - 4) = v56;
        *(&v59 - 3) = v36;
        v58 = v60;
        *(&v59 - 2) = v40;
        *(&v59 - 1) = v58;
        static Transaction.named<A>(_:with:)();

        sub_10000B3A8(v40, &unk_1016C8FC0, &unk_10139D7D0);
      }

      else
      {
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_1000076D4(v52, qword_10177BA08);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "Missing ObservationStoreService for updating KeyAlignment from disk.", v55, 2u);
        }
      }

      v34 = type metadata accessor for KeyAlignmentRecord;
      v35 = v36;
      goto LABEL_22;
    }

    sub_10000B3A8(v16, &qword_10169F328, &unk_1013CB040);
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_10177BA08);
  sub_100022A54(v22, v6, type metadata accessor for OwnedBeaconRecord);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v67 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    v29 = *(v66 + 20);
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    sub_100022C40(v6, type metadata accessor for OwnedBeaconRecord);
    v33 = sub_1000136BC(v30, v32, &v67);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "KeyAlignmentRecord with the identifier not found - %{private,mask.hash}s.", v27, 0x16u);
    sub_100007BAC(v28);

    return;
  }

  v34 = type metadata accessor for OwnedBeaconRecord;
  v35 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
LABEL_22:
  sub_100022C40(v35, v34);
}

uint64_t sub_100ABF7C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_100ABF858;

  return daemon.getter();
}

uint64_t sub_100ABF858(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v12 = *v1;
  *(v3 + 32) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 40) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_10000768C(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_10054AB1C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100ABFA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OwnedBeaconRecord();
  v7 = *(v6 + 20);
  v8 = *(v6 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100014650;

  return sub_1010CD424(a1, a3 + v7, a3 + v8);
}

void sub_100ABFB00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v39 = a5;
  v47 = a2;
  v48 = a3;
  v41 = a1;
  v5 = type metadata accessor for KeyAlignmentRecord();
  v40 = *(v5 - 8);
  v6 = *(v40 + 8);
  __chkstk_darwin(v5 - 8);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for UUID();
  v7 = *(v44 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v44);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v37 - v12;
  sub_1000D2A70(v43, &v37 - v12, &unk_1016C8FC0, &unk_10139D7D0);
  v14 = *(v10 + 80);
  v45 = swift_allocObject();
  sub_1000D2AD8(v13, v45 + ((v14 + 16) & ~v14), &unk_1016C8FC0, &unk_10139D7D0);
  (*(v7 + 16))(&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v44);
  v15 = v46;
  sub_100022A54(v48, v46, type metadata accessor for KeyAlignmentRecord);
  sub_1000D2A70(v43, v13, &unk_1016C8FC0, &unk_10139D7D0);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = *(v40 + 80);
  v18 = (v8 + v17 + v16) & ~v17;
  v43 = v6;
  v19 = (v6 + v14 + v18) & ~v14;
  v20 = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = v41;
  (*(v7 + 32))(v21 + v16, v38, v44);
  sub_10002911C(v15, v21 + v18, type metadata accessor for KeyAlignmentRecord);
  sub_1000D2AD8(v13, v21 + v19, &unk_1016C8FC0, &unk_10139D7D0);

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = 0x65736C6166;
  *(v22 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v23 = objc_autoreleasePoolPush();
  v24 = v48;
  v25 = v42;
  sub_10112202C(v48);
  v44 = v26;
  if (v25)
  {
    objc_autoreleasePoolPop(v23);
    __break(1u);
  }

  else
  {
    v41 = ~v20;
    objc_autoreleasePoolPop(v23);
    v27 = *(v47 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v42 = 0;
    v28 = v46;
    sub_100022A54(v24, v46, type metadata accessor for KeyAlignmentRecord);
    v29 = v43;
    v30 = swift_allocObject();
    v31 = v45;
    *(v30 + 16) = sub_100B256F8;
    *(v30 + 24) = v31;
    v40 = type metadata accessor for KeyAlignmentRecord;
    sub_10002911C(v28, v30 + ((v20 + 32) & ~v20), type metadata accessor for KeyAlignmentRecord);

    sub_100FDCA40(v44, sub_100B258F0, v30);

    v32 = swift_allocObject();
    *(v32 + 16) = sub_100B257A8;
    *(v32 + 24) = v21;

    Future.addFailure(block:)();

    sub_100022A54(v48, v28, type metadata accessor for KeyAlignmentRecord);
    v33 = (v20 + 16) & v41;
    v34 = (v29 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_10002911C(v28, v35 + v33, v40);
    *(v35 + v34) = v47;
    v36 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_100B257A8;
    v36[1] = v21;

    Future.addSuccess(block:)();
  }
}

uint64_t sub_100AC018C(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for KeyAlignmentRecord();
  *(a1 + *(v5 + 28)) = v4;
  v6 = *(sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0) + 36);
  v7 = *(v5 + 32);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 24);

  return v9(a1 + v7, &a2[v6], v8);
}

void sub_100AC0234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v57 = a3;
  v6 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v56 = (&v53 - v8);
  v53 = type metadata accessor for KeyAlignmentRecord();
  v9 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UUID();
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v58);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  v19 = sub_1000BC4D4(&unk_1016B1690, &qword_1013D6800);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v53 - v21);
  Transaction.capture()();
  sub_1000D2A70(a1, v22, &unk_1016B1690, &qword_1013D6800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177BA08);
    v25 = v58;
    (*(v12 + 16))(v16, v57, v58);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v28 = 141558531;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v12 + 8))(v16, v25);
      v32 = sub_1000136BC(v29, v31, &v60);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2082;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = sub_1000136BC(v33, v34, &v60);

      *(v28 + 24) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not update last seen key index to alignment record uuid - %{private,mask.hash}s\ndue to %{public}s.", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v12 + 8))(v16, v25);
    }
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177BA08);
    v37 = v58;
    (*(v12 + 16))(v18, v57, v58);
    sub_100022A54(v54, v11, type metadata accessor for KeyAlignmentRecord);
    v38 = v56;
    sub_1000D2A70(v55, v56, &unk_1016C8FC0, &unk_10139D7D0);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v62 = v57;
      *v41 = 141558787;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      LODWORD(v55) = v40;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v12 + 8))(v18, v37);
      v45 = sub_1000136BC(v42, v44, &v62);

      *(v41 + 14) = v45;
      *(v41 + 22) = 2048;
      v46 = *&v11[*(v53 + 28)];
      sub_100022C40(v11, type metadata accessor for KeyAlignmentRecord);
      *(v41 + 24) = v46;
      *(v41 + 32) = 2080;
      v47 = *v38;
      v60 = 0x7972616D6972702ELL;
      v61 = 0xE900000000000028;
      v59 = v47;
      v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v48);

      v49._countAndFlagsBits = 41;
      v49._object = 0xE100000000000000;
      String.append(_:)(v49);
      v50 = v60;
      v51 = v61;
      sub_10000B3A8(v38, &unk_1016C8FC0, &unk_10139D7D0);
      v52 = sub_1000136BC(v50, v51, &v62);

      *(v41 + 34) = v52;
      _os_log_impl(&_mh_execute_header, v39, v55, "Successfully updated last seen key index for beacon key alignment record uuid - %{private,mask.hash}s\nold_index - %llu\nnew_index - %s.", v41, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      sub_100022C40(v11, type metadata accessor for KeyAlignmentRecord);

      sub_10000B3A8(v38, &unk_1016C8FC0, &unk_10139D7D0);
      (*(v12 + 8))(v18, v37);
    }

    sub_10000B3A8(v22, &unk_1016B1690, &qword_1013D6800);
  }
}

uint64_t sub_100AC09B4()
{
  v1 = *(v0 + 168);
  if (qword_101694F88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  sub_1000076D4(v2, qword_10177C268);
  v3._object = 0x800000010135B5A0;
  v3._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v3);
  type metadata accessor for SafeLocation();
  sub_1000BC4D4(&qword_1016A59B0, &qword_1013B34D0);
  String.init<A>(describing:)();
  v4 = objc_autoreleasePoolPush();
  v5 = *(v1 + 16);
  __chkstk_darwin(v4);
  sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v4);
}

void sub_100AC0B28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v59 - v8;
  v10 = type metadata accessor for UUID();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  __chkstk_darwin(v10);
  v69 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v64 = v59 - v15;
  v16 = type metadata accessor for DirectorySequence();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  __chkstk_darwin(v16);
  v77 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v73 = *(v19 - 8);
  v20 = *(v73 + 64);
  v21 = __chkstk_darwin(v19);
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v72 = v59 - v24;
  v25 = type metadata accessor for BeaconNamingRecord();
  v70 = *(v25 - 8);
  v71 = v25;
  v26 = *(v70 + 64);
  __chkstk_darwin(v25);
  v28 = v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconNamingRecordCache;
  swift_beginAccess();
  v30 = *(a1 + v29);
  if (*(v30 + 16))
  {
    v31 = *(a1 + v29);

    v32 = sub_1000210EC(a2);
    if (v33)
    {
      v34 = v70;
      sub_100022A54(*(v30 + 56) + *(v70 + 72) * v32, v28, type metadata accessor for BeaconNamingRecord);

      sub_10002911C(v28, a3, type metadata accessor for BeaconNamingRecord);
      (*(v34 + 56))(a3, 0, 1, v71);
      return;
    }
  }

  v35 = a3;
  v59[1] = v29;
  v61 = v9;
  v62 = a1;
  v76 = *(a1 + 168);
  v36 = objc_autoreleasePoolPush();
  if (qword_101694EB0 != -1)
  {
    swift_once();
  }

  v63 = v35;
  v37 = v74;
  sub_1000076D4(v19, qword_10177C0C0);
  v60 = a2;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v36);
  v78[0] = _swiftEmptyArrayStorage;
  v79 = _swiftEmptyArrayStorage;
  v38 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v39 = v64;
  DirectorySequence.next()();
  v40 = v73;
  v75 = *(v73 + 48);
  if (v75(v39, 1, v19) == 1)
  {
LABEL_11:
    (*(v65 + 8))(v77, v66);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v43 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_10138BBE0;
    v45 = v78[0];
    v46 = *(v78[0] + 16);
    *(v44 + 56) = &type metadata for Int;
    *(v44 + 64) = &protocol witness table for Int;
    *(v44 + 32) = v46;
    sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL);

    v47 = v72;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    *(v44 + 96) = &type metadata for String;
    *(v44 + 104) = sub_100008C00();
    *(v44 + 72) = v48;
    *(v44 + 80) = v50;
    os_log(_:dso:log:_:_:)();

    (*(v73 + 8))(v47, v19);

    v51 = *(v45 + 16);
    v74 = v37;
    if (v51)
    {
      v52 = v70;
      v53 = v63;
      sub_100022A54(v45 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v63, type metadata accessor for BeaconNamingRecord);
      v54 = 0;
      v55 = v61;
      v56 = v60;
      v58 = v68;
      v57 = v69;
    }

    else
    {
      v54 = 1;
      v53 = v63;
      v55 = v61;
      v56 = v60;
      v58 = v68;
      v57 = v69;
      v52 = v70;
    }

    (*(v52 + 56))(v53, v54, 1, v71);
    (*(v67 + 16))(v57, v56, v58);
    sub_1000D2A70(v53, v55, &unk_1016B29E0, &unk_1013B70E0);
    swift_beginAccess();
    sub_1001E05F0(v55, v57);
    swift_endAccess();
  }

  else
  {
    v41 = *(v40 + 32);
    while (1)
    {
      v41(v23, v39, v19);
      v42 = objc_autoreleasePoolPush();
      sub_1006065CC(v23, v76, v78, &v79);
      if (v37)
      {
        break;
      }

      v37 = 0;
      objc_autoreleasePoolPop(v42);
      (*(v40 + 8))(v23, v19);
      DirectorySequence.next()();
      if (v75(v39, 1, v19) == 1)
      {
        goto LABEL_11;
      }
    }

    objc_autoreleasePoolPop(v42);
    __break(1u);
  }
}

uint64_t sub_100AC1364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *(a2 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  return a4(a1);
}

uint64_t sub_100AC13F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = type metadata accessor for BeaconNamingRecord();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  swift_beginAccess();
  sub_1001E05F0(v6, v10);
  return swift_endAccess();
}

uint64_t sub_100AC1584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v10 = *(*(v57 - 8) + 64);
  v11 = __chkstk_darwin(v57);
  v58 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v62 = &v56 - v14;
  __chkstk_darwin(v13);
  v16 = &v56 - v15;
  v17 = type metadata accessor for BeaconProductInfoRecord();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v56 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  v24 = *(v3 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconProductInfoRecordCache);
  v64 = a1;
  v66 = a1;
  os_unfair_lock_lock((v24 + 24));
  sub_100B25564((v24 + 16), v16);
  os_unfair_lock_unlock((v24 + 24));
  v59 = v18;
  v25 = *(v18 + 48);
  v65 = v17;
  if (v25(v16, 1, v17) == 1)
  {
    v60 = 0;
    v61 = v25;
    v63 = a2;
    sub_10000B3A8(v16, &unk_1016AF8C0, &unk_1013A07A0);
    v26 = *(v3 + 168);
    if (qword_101694970 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for URL();
    v28 = sub_1000076D4(v27, qword_10177B398);
    v29._object = 0x800000010135B5A0;
    v29._countAndFlagsBits = 0xD000000000000014;
    prohibitAsyncContext(functionName:)(v29);
    v30 = v65;
    v67 = v65;
    sub_1000BC4D4(&qword_1016B5500, &qword_1013D6960);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v34 = objc_autoreleasePoolPush();
    v35 = *(v26 + 16);
    __chkstk_darwin(v34);
    *(&v56 - 6) = v26;
    v36 = v64;
    *(&v56 - 5) = v64;
    *(&v56 - 4) = v28;
    *(&v56 - 3) = v31;
    *(&v56 - 2) = v33;
    v37 = v62;
    OS_dispatch_queue.sync<A>(execute:)();
    objc_autoreleasePoolPop(v34);

    v38 = v58;
    sub_1000D2A70(v37, v58, &unk_1016AF8C0, &unk_1013A07A0);
    if (v61(v38, 1, v30) == 1)
    {
      sub_10000B3A8(v38, &unk_1016AF8C0, &unk_1013A07A0);
    }

    else
    {
      v53 = v56;
      v54 = sub_10002911C(v38, v56, type metadata accessor for BeaconProductInfoRecord);
      __chkstk_darwin(v54);
      *(&v56 - 2) = v36;
      *(&v56 - 1) = v53;
      os_unfair_lock_lock((v24 + 24));
      sub_100B255AC(v24 + 16);
      os_unfair_lock_unlock((v24 + 24));
      sub_100022C40(v53, type metadata accessor for BeaconProductInfoRecord);
    }

    return sub_1000D2AD8(v37, v63, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    sub_10002911C(v16, v23, type metadata accessor for BeaconProductInfoRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177BA08);
    v40 = v60;
    v41 = v61;
    (*(v60 + 16))(v9, v64, v61);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v64 = v23;
      v45 = v40;
      v46 = v44;
      v47 = swift_slowAlloc();
      v63 = a2;
      v48 = v47;
      v67 = v47;
      *v46 = 141558275;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v45 + 8))(v9, v41);
      v23 = v64;
      v52 = sub_1000136BC(v49, v51, &v67);

      *(v46 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "productInfoRecord cache hit: %{private,mask.hash}s", v46, 0x16u);
      sub_100007BAC(v48);
      a2 = v63;
    }

    else
    {

      (*(v40 + 8))(v9, v41);
    }

    sub_10002911C(v23, a2, type metadata accessor for BeaconProductInfoRecord);
    return (*(v59 + 56))(a2, 0, 1, v65);
  }
}

uint64_t sub_100AC1C5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_1000210EC(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for BeaconProductInfoRecord();
    v10 = *(v9 - 8);
    sub_100022A54(v8 + *(v10 + 72) * v7, a3, type metadata accessor for BeaconProductInfoRecord);
    return (*(v10 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v12 = type metadata accessor for BeaconProductInfoRecord();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

uint64_t sub_100AC1D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  sub_100022A54(a3, v8, type metadata accessor for BeaconProductInfoRecord);
  v14 = type metadata accessor for BeaconProductInfoRecord();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  return sub_1001E0860(v8, v12);
}

uint64_t sub_100AC1F14()
{
  v1 = *(v0 + 168);
  if (qword_1016951F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  sub_1000076D4(v2, qword_10177C590);
  v3._object = 0x800000010135B5A0;
  v3._countAndFlagsBits = 0xD000000000000014;
  prohibitAsyncContext(functionName:)(v3);
  type metadata accessor for AccessoryMetadataRecord();
  sub_1000BC4D4(&qword_1016B54F8, &unk_1013D6950);
  String.init<A>(describing:)();
  v4 = objc_autoreleasePoolPush();
  v5 = *(v1 + 16);
  __chkstk_darwin(v4);
  sub_1000BC4D4(&qword_1016AF888, &unk_1013CAD70);
  OS_dispatch_queue.sync<A>(execute:)();
  objc_autoreleasePoolPop(v4);
}

void *sub_100AC2088()
{
  v56 = type metadata accessor for SharedBeaconRecord(0);
  v1 = *(v56 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v56);
  v55 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v43 - v5;
  v7 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v53 = v43 - v9;
  v10 = sub_1000BC4D4(&qword_1016B54E0, &qword_1013D6938);
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  __chkstk_darwin(v10);
  v52 = v43 - v12;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v50 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v43 - v19;
  __chkstk_darwin(v18);
  v22 = v43 - v21;
  v23 = sub_1000BC4D4(&qword_1016B54E8, &unk_1013D6940);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v51 = (v43 - v25);
  v49 = *(v0 + 168);
  if (qword_101695470 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v26 = sub_1000076D4(v13, qword_10177CD50);
    v27 = v14[2];
    v27(v22, v26, v13);
    v27(v20, v22, v13);
    v28 = *(v10 + 40);
    v48 = v28;
    v45 = type metadata accessor for DirectorySequence();
    v46 = v22;
    v29 = *(v45 - 8);
    v47 = v10;
    v30 = *(v29 + 56);
    v43[1] = v29 + 56;
    v44 = v30;
    v31 = v52;
    v30(&v52[v28], 1, 1, v45);
    v27(v31, v20, v13);
    v32 = v50;
    *&v31[*(v10 + 36)] = v49;
    v27(v32, v20, v13);

    v33 = v53;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v34 = v14[1];
    v34(v20, v13);
    v34(v46, v13);
    v44(v33, 0, 1, v45);
    v35 = v31;
    sub_10002311C(v33, &v31[v48], &qword_1016A5970, &unk_1013B3470);
    v22 = *(v54 + 56);
    v36 = v51;
    v37 = v47;
    (v22)(v51, 1, 1, v47);
    sub_10000B3A8(v36, &qword_1016B54F0, &qword_1013D7430);
    sub_1000D2AD8(v35, v36, &qword_1016B54E0, &qword_1013D6938);
    (v22)(v36, 0, 1, v37);
    v14 = sub_100B33054(v36);
    sub_10000B3A8(v36, &qword_1016B54E8, &unk_1013D6940);
    v10 = v14[2];
    if (!v10)
    {
      break;
    }

    v20 = 0;
    v38 = _swiftEmptyArrayStorage;
    while (v20 < v14[2])
    {
      v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v22 = *(v1 + 72);
      sub_100022A54(v14 + v13 + v22 * v20, v6, type metadata accessor for SharedBeaconRecord);
      if (v6[*(v56 + 64)] == 5)
      {
        sub_10002911C(v6, v55, type metadata accessor for SharedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112421C(0, v38[2] + 1, 1);
          v38 = v57;
        }

        v41 = v38[2];
        v40 = v38[3];
        if (v41 >= v40 >> 1)
        {
          sub_10112421C(v40 > 1, v41 + 1, 1);
          v38 = v57;
        }

        v38[2] = v41 + 1;
        sub_10002911C(v55, v38 + v13 + v41 * v22, type metadata accessor for SharedBeaconRecord);
      }

      else
      {
        sub_100022C40(v6, type metadata accessor for SharedBeaconRecord);
      }

      if (v10 == ++v20)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_14:

  return v38;
}

void sub_100AC26E0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1000035D0(a1, v11);
  if (((*(v12 + 96))(v11, v12) & 1) == 0)
  {
    v13 = a1[3];
    v14 = a1[4];
    sub_1000035D0(a1, v13);
    if ((*(v14 + 104))(v13, v14))
    {
      v16 = a1[3];
      v15 = a1[4];
      sub_1000035D0(a1, v16);
      (*(*(*(v15 + 8) + 8) + 32))(v16);
      sub_100AC1584(v6, v10);
      (*(v3 + 8))(v6, v2);
      v17 = type metadata accessor for BeaconProductInfoRecord();
      if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
      {
        sub_10000B3A8(v10, &unk_1016AF8C0, &unk_1013A07A0);
        static os_log_type_t.error.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
      }

      else
      {
        v18 = *&v10[*(v17 + 72)];
        sub_100022C40(v10, type metadata accessor for BeaconProductInfoRecord);
        sub_100B03EFC(v18);
      }
    }
  }
}

uint64_t sub_100AC29C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for SystemInfo.DeviceLockState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)();

  static SystemInfo.lockState.getter();
  (*(v4 + 104))(v8, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v3);
  sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v4 + 8);
  v15(v8, v3);
  v15(v10, v3);
  if (v12)
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v16 = type metadata accessor for WildModeAssociationRecord(0);
    return (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
  }

  else
  {
    v18 = sub_10002F740();
    __chkstk_darwin(v18);
    *(&v19 - 2) = a1;
    sub_1012BC3D0(sub_100B25518, v18, v20);
  }
}

uint64_t sub_100AC2CF4(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v28 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v18 = *(type metadata accessor for WildModeAssociationRecord(0) + 20);
  (*(v4 + 16))(v17, a2, v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(v8 + 56);
  sub_1000D2A70(v29 + v18, v11, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v17, &v11[v19], &qword_1016980D0, &unk_10138F3B0);
  v20 = *(v4 + 48);
  if (v20(v11, 1, v3) != 1)
  {
    v22 = v28;
    sub_1000D2A70(v11, v28, &qword_1016980D0, &unk_10138F3B0);
    if (v20(&v11[v19], 1, v3) != 1)
    {
      v23 = v27;
      (*(v4 + 32))(v27, &v11[v19], v3);
      sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v4 + 8);
      v24(v23, v3);
      sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
      v24(v22, v3);
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      return v21 & 1;
    }

    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v22, v3);
    goto LABEL_6;
  }

  sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
  if (v20(&v11[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_10000B3A8(v11, &qword_1016AF880, &unk_10138CE20);
    v21 = 0;
    return v21 & 1;
  }

  sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
  v21 = 1;
  return v21 & 1;
}

void *sub_100AC30F0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v74 = v72 - v6;
  v90 = type metadata accessor for SystemInfo.DeviceLockState();
  v7 = *(v90 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v90);
  v89 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = v72 - v11;
  v95 = type metadata accessor for UUID();
  v93 = *(v95 - 8);
  v12 = *(v93 + 64);
  v13 = __chkstk_darwin(v95);
  v80 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = v72 - v15;
  v16 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v92 = v72 - v18;
  v19 = [objc_allocWithZone(SPBeaconGroup) init];
  v20 = v19;
  v21 = 0;
  if ((*(a1 + 24) & 1) == 0)
  {
    v21 = *(a1 + 16);
  }

  [v19 setVersion:v21];
  v22 = type metadata accessor for OwnedBeaconGroup(0);
  v23 = v22[6];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v20 setIdentifier:isa];

  v25 = (a1 + v22[9]);
  v26 = *v25;
  v27 = v25[1];
  v28 = String._bridgeToObjectiveC()();
  [v20 setName:v28];

  v29 = a1 + v22[7];
  v30 = MACAddress.data.getter();
  v32 = v31;
  v33 = Data._bridgeToObjectiveC()().super.isa;
  sub_100016590(v30, v32);
  [v20 setMacAddress:v33];

  [v20 setClassification:0];
  [v20 setIsPairingComplete:sub_100518118() & 1];
  [v20 setIsFindMyNetworkEnabled:*(a1 + v22[8])];
  [v20 setStatus:sub_100AC3C94(a1)];
  sub_100519FB0();
  sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
  v34 = Set._bridgeToObjectiveC()().super.isa;

  [v20 setBeaconIdentifiers:v34];

  if (qword_101694920 != -1)
  {
LABEL_29:
    swift_once();
  }

  v72[1] = v23;
  v79 = qword_10177B2E8;
  v35 = sub_100035730(a1 + v23, 0, 0);
  v36 = v92;
  v37 = sub_1005232D8(v92, v35);

  sub_10000B3A8(v36, &unk_101696900, &unk_10138B1E0);
  [v20 setIsClassicConnected:v37 & 1];
  v38 = v2;
  sub_100A8B080(a1);
  sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130);
  v39 = Set._bridgeToObjectiveC()().super.isa;

  v73 = v20;
  [v20 setMultipartStatus:v39];

  v75 = a1;
  v40 = sub_100519FB0();
  v41 = *(v40 + 56);
  v77 = v40 + 56;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  a1 = v43 & v41;
  v78 = (v42 + 63) >> 6;
  v85 = v93 + 16;
  v84 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v83 = (v7 + 104);
  v82 = (v7 + 8);
  v86 = (v93 + 8);

  v23 = 0;
  v94 = 0;
  v81 = xmmword_101385D80;
  v45 = v76;
  v91 = v2;
  v87 = v44;
  while (1)
  {
    if (!a1)
    {
      v2 = v38;
      while (1)
      {
        v46 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v46 >= v78)
        {

          v69 = 1;
          goto LABEL_23;
        }

        a1 = *(v77 + 8 * v46);
        ++v23;
        if (a1)
        {
          v23 = v46;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_13:
    (*(v93 + 16))(v45, *(v40 + 48) + *(v93 + 72) * (__clz(__rbit64(a1)) | (v23 << 6)), v95);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v47 = swift_allocObject();
    *(v47 + 16) = v81;
    v48 = UUID.uuidString.getter();
    v50 = v49;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_100008C00();
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    os_log(_:dso:log:_:_:)();

    v51 = v88;
    static SystemInfo.lockState.getter();
    v20 = v89;
    v52 = v90;
    (*v83)(v89, v84, v90);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    v53 = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = *v82;
    (*v82)(v20, v52);
    v54(v51, v52);
    if (v53)
    {

      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v98 = 0;
      v96 = 0u;
      v97 = 0u;
      goto LABEL_22;
    }

    v55 = v91;
    v56 = sub_100007F54();
    __chkstk_darwin(v56);
    v72[-2] = v45;
    v57 = v94;
    sub_1000314D0(sub_1004E4EC0, v56, &v96);

    if (!*(&v97 + 1))
    {
      break;
    }

    v94 = v57;
    a1 &= a1 - 1;
    sub_10000A748(&v96, &v99);
    v58 = v100;
    v59 = v101;
    sub_1000035D0(&v99, v100);
    v60 = v80;
    (*(*(*(v59 + 8) + 8) + 32))(v58);
    v61 = sub_100035730(v60, 0, 0);
    v7 = v92;
    v38 = v55;
    LOBYTE(v59) = sub_10003ABC0(v92, v60, v61, 1);

    v62 = *v86;
    v63 = v60;
    v64 = v95;
    (*v86)(v63, v95);
    sub_10000B3A8(v7, &unk_101696900, &unk_10138B1E0);
    v62(v45, v64);
    sub_100007BAC(&v99);
    v40 = v87;
    if ((v59 & 1) == 0)
    {

      v69 = 0;
      v70 = v74;
      v71 = v73;
      goto LABEL_24;
    }
  }

LABEL_22:
  (*v86)(v45, v95);
  sub_10000B3A8(&v96, &qword_101696920, &unk_10138B200);

  v69 = 0;
LABEL_23:
  v70 = v74;
  v71 = v73;
LABEL_24:
  [v71 setIsConnected:v69];
  sub_100ABD87C(v70);
  v65 = type metadata accessor for LostModeRecord();
  if ((*(*(v65 - 8) + 48))(v70, 1, v65) == 1)
  {
    sub_10000B3A8(v70, &unk_1016A99E0, &qword_1013A07B0);
    v66 = 0;
  }

  else
  {
    v66 = sub_100E78AA8();
    sub_100022C40(v70, type metadata accessor for LostModeRecord);
  }

  [v71 setLostModeInfo:v66];

  sub_100520B14();
  sub_100008BB8(0, &qword_1016B54D8, SPPairingState_ptr);
  v67 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v71 setBeaconMap:v67];

  return v71;
}